/**
 *  Section3App0ViewController.h
 *  Section3App0
 *  Tommy MacWilliam, 2011
 *  Don't forget to #import "MapKit/MapKit.h"!
 *
 */

#import <UIKit/UIKit.h>
#import "MapKit/MapKit.h"

@interface Section3App0ViewController : UIViewController {
    MKMapView *_mapView;
}

@property (nonatomic, retain) IBOutlet MKMapView *mapView;

@end
