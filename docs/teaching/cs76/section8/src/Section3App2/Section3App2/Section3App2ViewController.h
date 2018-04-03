/**
 *  Section3App2ViewController.h
 *  Section3App2
 *  Tommy MacWilliam, 2011
 *
 */

#import <UIKit/UIKit.h>
#import "MapKit/MapKit.h"

// don't forget to connect both the outlet and delegate in IB!
@interface Section3App2ViewController : UIViewController {
    MKMapView *_mapView;
}

@property (nonatomic, retain) IBOutlet MKMapView *mapView;

@end
