//
//  ViewController.m
//  CustomAnnotationsExample
//
//  Created by Tommy MacWilliam on 4/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CustomAnnotation.h"
#import "MapKit/MapKit.h"
#import "ViewController.h"

@implementation ViewController

@synthesize mapView = _mapView;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // define span for map: how much area will be shown
    MKCoordinateSpan span;
    span.latitudeDelta = 0.002;
    span.longitudeDelta = 0.002;
    
    // define starting point for map
    CLLocationCoordinate2D start;
    start.latitude = 42.36873056998856;
    start.longitude = -71.11504912376404;
    
    // create region, consisting of span and location
    MKCoordinateRegion region;
    region.span = span;
    region.center = start;
    
    // move the map to our location
    [self.mapView setRegion:region animated:YES];
    
    // create annotation for mather
    CustomAnnotation *mather = [[CustomAnnotation alloc] initWithCoordinate:start];
    mather.title = @"Mather House";
    mather.subtitle = @"The best house";
    
    // create location for dunster
    CLLocationCoordinate2D dunsterLocation;
    dunsterLocation.latitude = 42.36846289215954;
    dunsterLocation.longitude = -71.11598941345215;
    
    // create annotation for dunster
    CustomAnnotation *dunster = [[CustomAnnotation alloc] initWithCoordinate:dunsterLocation];
    dunster.title = @"Dunster House";
    dunster.subtitle = @"Not the best house";
    
    // add annotations to map
    [self.mapView addAnnotation:mather];
    [self.mapView addAnnotation:dunster];
    
    // create a C array of coordinates to pass to our polyline
    CLLocationCoordinate2D polylineCoordinates[] = { start, dunsterLocation };
    
    // create polyline connecting both houses and add to map
    MKPolyline *line = [MKPolyline polylineWithCoordinates:polylineCoordinates count:2];
    [self.mapView addOverlay:line];
    
    // create a circle around the center of the map (distance in meters)
    MKCircle *circle = [MKCircle circleWithCenterCoordinate:start radius:100.0];
    [self.mapView addOverlay:circle];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

/**
 * Just like we did for table cells, define each annotation
 *
 */
- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation
{
    // try to re-use pin annotation view
    MKPinAnnotationView *pin = (MKPinAnnotationView *)[mapView dequeueReusableAnnotationViewWithIdentifier:@"Marker"];
    
    // none available in the cache    
    if (pin == nil) {
        // allocate new pin
        pin = [[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:@"Marker"];
        
        // add detail disclosure button
        pin.rightCalloutAccessoryView = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
    }
    
    // change color to green (Red and Purple also available)
    pin.pinColor = MKPinAnnotationColorGreen;
    
    // animate pin dropping
    pin.animatesDrop = YES;
    
    // show callout when tapped
    pin.canShowCallout = YES;
    
    return pin;
}

/**
 * Fired when user taps detail disclosure button
 * Show pop-up of house tapped
 *
 */
- (void)mapView:(MKMapView *)mapView annotationView:(MKAnnotationView *)view calloutAccessoryControlTapped:(UIControl *)control
{
    // annotation is a property of MKAnnotationView, and we are using our Marker class as the nnotation
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Detail Button Tapped" 
                                                    message:((CustomAnnotation *)view.annotation).title
                                                   delegate:nil 
                                          cancelButtonTitle:@"Okay" 
                                          otherButtonTitles:nil];
    [alert show];
}

/**
 * Just as we did for annotations, define each overlay
 *
 */
-(MKOverlayView *)mapView:(MKMapView *)mapView viewForOverlay:(id)overlay
{
    // overlay is a polyline
    if ([overlay isKindOfClass:[MKPolyline class]]) {
        // create view for polyline
        MKPolylineView *polylineView = [[MKPolylineView alloc] initWithOverlay:overlay];
        
        // set color and width
        polylineView.strokeColor = [UIColor blueColor];
        polylineView.lineWidth = 2.0;
        
        return polylineView;
    }
    
    // overlay is a circle
    else if ([overlay isKindOfClass:[MKCircle class]]) {
        // create view for circle
        MKCircleView *circleView = [[MKCircleView alloc] initWithOverlay:overlay];
        
        // set color and width
        circleView.strokeColor = [UIColor redColor];
        circleView.lineWidth = 5.0;
        
        return circleView;
    }
    
    return nil;
}

@end
