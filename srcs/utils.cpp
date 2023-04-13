#include	"utils.hpp"

namespace utils
{
	void	exitWithError(const std::string& str)
	{
		std::cerr << str << std::endl;
		exit(EXIT_FAILURE);
	}
}
