/**
 *  Section1App1AppDelegate.m
 *  Section1App1
 *  Tommy MacWilliam, 2011
 *
 */

#import "Section1App1AppDelegate.h"

@implementation Section1App1AppDelegate

@synthesize window=_window, label=_label, textField=_textField, button=_button;

/**
 * Change the text of our label to match that of the text field
 * Fired when user presses button
 *
 */
- (IBAction)changeText {
    [self.label setText:[self.textField text]];
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
    self.button = nil;
    [super dealloc];
}

@end
