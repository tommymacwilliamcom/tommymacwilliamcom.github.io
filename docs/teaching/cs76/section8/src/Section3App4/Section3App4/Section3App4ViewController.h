/**
 *  Section3App4ViewController.h
 *  Section3App4
 *  Tommy MacWilliam, 2011
 *
 */

#import <UIKit/UIKit.h>
#import "CoreLocation/CoreLocation.h"

@interface Section3App4ViewController : UIViewController <CLLocationManagerDelegate> {
    UILabel *_latitudeLabel;
    UILabel *_longitudeLabel;
    CLLocationManager *_locationManager;
}

@property (nonatomic, retain) IBOutlet UILabel *latitudeLabel;
@property (nonatomic, retain) IBOutlet UILabel *longitudeLabel;
@property (nonatomic, retain) CLLocationManager *locationManager;

@end
