CXX = c++
CXXFLAGS = -Wall -Wextra -Werror
GLFLAGS = -framework GLUT -framework OpenGL

INCLUDES = -I ./includes -I ./dependencies/includes

SRCDIR = srcs
OBJDIR = objs

LIBRARY = dependencies/library/libGLEW.2.2.0.dylib \
	dependencies/library/libGLEW.a \
	dependencies/library/libglfw.3.3.dylib \

SRCS = $(shell find $(SRCDIR) -type f -name "*.cpp")
OBJS = $(SRCS:$(SRCDIR)/%.cpp=$(OBJDIR)/%.o)

NAME = visualizer

$(NAME): $(OBJDIR) $(OBJS)
	$(CXX) $(CXXFLAGS) $(GLFLAGS) $(INCLUDES) $(OBJS) $(LIBRARY) -o $(NAME)

$(OBJDIR):
	mkdir $(shell find $(SRCDIR) -type d | sed 's/^$(SRCDIR)/$(OBJDIR)/g')

all: $(NAME)

clean:
	rm -rf $(OBJDIR)

fclean: clean
	$(RM) $(NAME)

re: fclean all

$(OBJDIR)/%.o: $(SRCDIR)/%.cpp
	$(CXX) $(CXXFLAGS) $(INCLUDES) -o $@ -c $<