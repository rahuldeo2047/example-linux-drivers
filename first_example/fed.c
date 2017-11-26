/* ofd.c – Our First Driver code */
#include <linux/module.h>
#include <linux/version.h>
#include <linux/kernel.h>
#include <linux/slab.h>
 
static int __init fed_init(void) /* Constructor */
{
    printk(KERN_INFO "fed: module registered");
    return 0;
}
 
static void __exit fed_exit(void) /* Destructor */
{
    printk(KERN_INFO "fed: module unregistered");
}
 
module_init(fed_init);
module_exit(fed_exit);
 
MODULE_LICENSE("MIT");
MODULE_AUTHOR("rahuldeo2047");
MODULE_DESCRIPTION("First Example Driver");
