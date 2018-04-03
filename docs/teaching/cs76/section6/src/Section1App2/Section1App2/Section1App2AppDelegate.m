/**
 *  Section1App2AppDelegate.m
 *  Section1App2
 *  Tommy MacWilliam, 2011
 *
 */

#import "Section1App2AppDelegate.h"

@implementation Section1App2AppDelegate

@synthesize window=_window, label=_label, textField=_textField;

/**
 * Change the text of our label to match that of the text field
 * Fired when user changes text in text field
 *
 */
- (IBAction)changeText {
    [self.label setText:[self.textField text]];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
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
