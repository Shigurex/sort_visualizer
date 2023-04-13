#include	<Screen.hpp>

Screen::Screen(void)
{
	this->_init_glfw();
}

Screen::~Screen(void)
{
	;
}

void	Screen::_init_glfw(void)
{
	if (glfwInit() == GL_FALSE)
		utils::exitWithError("failed to initialize GLFW");
}

void	Screen::_make_window(int width, int height, char *title)
{
	this->_win = glfwCreateWindow(width, height, title, NULL, NULL);
	if (!this->_win)
		utils::exitWithError("failed to create window");
}
