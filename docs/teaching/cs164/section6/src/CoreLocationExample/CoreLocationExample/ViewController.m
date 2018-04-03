//
//  ViewController.m
//  CoreLocationExample
//
//  Created by Tommy MacWilliam on 4/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CoreLocation/CoreLocation.h"
#import "ViewController.h"

@implementation ViewController

@synthesize latitudeLabel = _latitudeLabel;
@synthesize longitudeLabel = _longitudeLabel;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // create location manager
    CLLocationManager *locationManager = [[CLLocationManager alloc] init];
    locationManager.delegate = self;
    locationManager.desiredAccuracy = kCLLocationAccuracyBest;
    locationManager.distanceFilter = kCLDistanceFilterNone;
    
    // start polling for updates
    [locationManager startUpdatingLocation];
}

/**
 * Fired when the user has changed location
 *
 */
- (void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation
{
    // update UI with location information
    self.latitudeLabel.text = [NSString stringWithFormat:@"%g", newLocation.coordinate.latitude];
    self.longitudeLabel.text = [NSString stringWithFormat:@"%g", newLocation.coordinate.longitude];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
