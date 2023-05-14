#include "ft_printf.h"

int	main()
{
	int res;

	res = ft_printf("FTprintf : %s\n", "Hello");
	ft_printf("%d\n", res);
	res = printf("  printf : %s\n", "Hello");
	ft_printf("%d\n", res);
}
