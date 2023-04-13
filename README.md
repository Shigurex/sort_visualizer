# OPENGL usage

## 環境構築

glfwのインストール
	brew install glfw3

glewのインストール
	brew install glew

glmのインストール
	brew install glm

パッケージがインストールされているかの確認
	pkg-config --cflags パッケージ名(glfw3, glew, glm)

パッケージに関する情報の確認
	brew info パッケージ名(glfw3, glew, glm)

OpenGLをコンパイルするためのコンパイルオプション (OpenGLはデフォルトでmacにインストールされている)
	c++ -framework GLUT -framework OpenGL *.cpp

## 参考資料
- https://rikei-tawamure.com/entry/2022/07/09/195840#GLFW%E3%81%AE%E3%82%A4%E3%83%B3%E3%82%B9%E3%83%88%E3%83%BC%E3%83%AB

- https://www.glfw.org/documentation.html

- https://tokoik.github.io/GLFWdraft.pdf
