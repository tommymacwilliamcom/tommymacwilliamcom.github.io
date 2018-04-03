/**
 *  ViewController.h
 *  MapCenterExample
 *  
 *  Tommy MacWilliam <tmacwilliam@cs.harvard.edu>
 *
 */

#import <UIKit/UIKit.h>

@class MKMapView;

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet MKMapView *mapView;

@end
