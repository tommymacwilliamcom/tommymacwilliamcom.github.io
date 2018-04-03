/**
 *  Section3App1ViewController.h
 *  Section3App1
 *  Tommy MacWilliam, 2011
 *
 */

#import <UIKit/UIKit.h>
#import "MapKit/MapKit.h"

@interface Section3App1ViewController : UIViewController {
    MKMapView *_mapView;
}

@property (nonatomic, retain) IBOutlet MKMapView *mapView;

@end
