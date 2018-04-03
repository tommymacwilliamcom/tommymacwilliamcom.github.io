/**
 *  Section1App0AppDelegate.m
 *  Section1App0
 *  Tommy MacWilliam, 2011
 *
 */

#import "Section1App0AppDelegate.h"

@implementation Section1App0AppDelegate


@synthesize window=_window, label=_label;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [self.window makeKeyAndVisible];
    
    // change the text of our label
    [self.label setText:@"I was added from IB!"];
    
    // dynamically add a label to our window
    UILabel *newLabel = [[UILabel alloc] initWithFrame:CGRectMake(0., 0., 500, 100.)];
    newLabel.text = @"I was added from Obj-C!";
    [self.window addSubview:newLabel];
    [newLabel release];
    
    return YES;
}

- (void)dealloc
{
    [_window release];
    self.label = nil;
    [super dealloc];
}

@end
