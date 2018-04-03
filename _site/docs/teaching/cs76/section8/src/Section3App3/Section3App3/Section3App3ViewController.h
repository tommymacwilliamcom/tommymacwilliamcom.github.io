/**
 *  Section3App3ViewController.h
 *  Section3App3
 *  Tommy MacWilliam, 2011
 *
 */

#import <UIKit/UIKit.h>
#import "MapKit/MapKit.h"

@interface Section3App3ViewController : UIViewController <MKMapViewDelegate> {
    MKMapView *_mapView;
}

@property (nonatomic, retain) IBOutlet MKMapView *mapView;

@end
