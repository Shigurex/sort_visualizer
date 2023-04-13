#ifndef SCREEN_H
# define SCREEN_H

# include	<GLFW/glfw3.h>
# include	"utils.hpp"

class Screen
{
	private:
		GLFWwindow	*_win;

		void	_init_glfw(void);
		void	_make_window(int width, int height, char *title);
	public:
		Screen(void);
		~Screen(void);
};

#endif
