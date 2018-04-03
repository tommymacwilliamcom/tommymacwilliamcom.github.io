/**
 *  Section1App4AppDelegate.h
 *  Section1App4
 *  Tommy MacWilliam, 2011
 *
 */

#import <UIKit/UIKit.h>

@interface Section1App4AppDelegate : NSObject <UIApplicationDelegate> {
    UILabel *_sliderLabel, *_switchLabel, *_segmentLabel;
    UIButton *_sliderButton, *_switchButton, *_segmentButton;
    UISlider *_slider;
    UISwitch *_swtch;
    UISegmentedControl *_segment;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UILabel *sliderLabel;
@property (nonatomic, retain) IBOutlet UILabel *switchLabel;
@property (nonatomic, retain) IBOutlet UILabel *segmentLabel;
@property (nonatomic, retain) IBOutlet UIButton *sliderButton;
@property (nonatomic, retain) IBOutlet UIButton *switchButton;
@property (nonatomic, retain) IBOutlet UIButton *segmentButton;
@property (nonatomic, retain) IBOutlet UISlider *slider;
@property (nonatomic, retain) IBOutlet UISwitch *swtch;
@property (nonatomic, retain) IBOutlet UISegmentedControl *segment;

- (IBAction)sliderChanged;
- (IBAction)resetSlider;
- (IBAction)switchChanged;
- (IBAction)resetSwitch;
- (IBAction)segmentChanged;
- (IBAction)resetSegment;

@end
