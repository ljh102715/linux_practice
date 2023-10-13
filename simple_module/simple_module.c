#include <linux/module.h>

static int __init simple_module_init(void)
{
	printk("simple module\n");
	return 0;
}

static void __exit simple_module_fini(void)
{
	printk("simple module exit\n");
}

module_init(simple_module_init);
module_exit(simple_module_fini);

MODULE_LICENSE("GPL");
MODULE_AUTHOR("LeeJunHyeok");
MODULE_DESCRIPTION("Simple module for Linux Assignment 6");
