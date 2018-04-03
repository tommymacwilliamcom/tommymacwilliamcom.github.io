/**
 *  Section1App4AppDelegate.m
 *  Section1App4
 *  Tommy MacWilliam, 2011
 *
 */

#import "Section1App4AppDelegate.h"

@implementation Section1App4AppDelegate

@synthesize window=_window, sliderLabel=_sliderLabel, switchLabel=_switchLabel, 
    segmentLabel=_segmentLabel, sliderButton=_sliderButton, switchButton=_switchButton,
    segmentButton=_segmentButton, slider=_slider, swtch=_swtch, segment=_segment;

/**
 * Update slider label with current value of slider
 * Fired when user moves slider
 *
 */
- (IBAction)sliderChanged {
    self.sliderLabel.text = [NSString stringWithFormat:@"%f", [self.slider value]];
}

/**
 * Move slider to value of 0.5
 * Fired when user presses sliderButton
 *
 */
- (IBAction)resetSlider {
    self.slider.value = 0.5;
    self.sliderLabel.text = @"0.5";
}

/**
 * Update switch label with current value of switch
 * Fired when user presses swtch
 *
 */
- (IBAction)switchChanged {
    self.switchLabel.text = (self.swtch.on) ? @"On" : @"Off";
}  

/**
 * Set switch to on
 * Fired when user presses switchButton
 *
 */
- (IBAction)resetSwitch {
    self.swtch.on = YES;
    self.switchLabel.text = @"On";
}

/**
 * Update segment label with current text of segmented button
 * Fired when user presses segment button
 *
 */
- (IBAction)segmentChanged {
    // hmm... this doesn't seem like most efficient thing in the world
    if (self.segment.selectedSegmentIndex == 0)
        self.segmentLabel.text = @"Left";
    else if (self.segment.selectedSegmentIndex == 1)
        self.segmentLabel.text = @"Middle";
    else
        self.segmentLabel.text = @"Right";
}

/**
 * Set segment to first button
 * Fired when user presses segmentButton
 *
 */
- (IBAction)resetSegment {
    self.segment.selectedSegmentIndex = 0;
    self.segmentLabel.text = @"Left";
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [self.window makeKeyAndVisible];
    
    // set maximum value for slider
    self.slider.maximumValue = 0.8;
    
    return YES;
}

- (void)dealloc
{
    [_window release];
    self.sliderLabel= nil;
    self.switchLabel = nil; 
    self.segmentLabel = nil; 
    self.sliderButton = nil; 
    self.switchButton = nil;
    self.segmentButton = nil; 
    self.slider = nil;
    self.swtch = nil;
    self.segment = nil;
    [super dealloc];
}

@end
