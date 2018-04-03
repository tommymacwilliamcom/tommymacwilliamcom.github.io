/**
 *  Section1App3AppDelegate.m
 *  Section1App3
 *  Tommy MacWilliam, 2011
 *
 */

#import "Section1App3AppDelegate.h"

@implementation Section1App3AppDelegate

@synthesize window=_window, label=_label, textField=_textField;

/**
 * Change the text of our label to match that of the text field
 * Fired when user presses "Done" on the keyboard
 *
 */
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    // change label text
    [self.label setText:[self.textField text]];
    // hide keyboard
    [textField resignFirstResponder];
    return YES;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)dealloc
{
    [_window release];
    self.label = nil;
    self.textField = nil;
    [super dealloc];
}

@end
