/**
 *  Section3App4ViewController.m
 *  Section3App4
 *  Tommy MacWilliam, 2011
 *
 *  Use Core Location to get current location
 *
 */
 
#import "Section3App4ViewController.h"
#import "CoreLocation/CoreLocation.h"

@implementation Section3App4ViewController

@synthesize latitudeLabel=_latitudeLabel, longitudeLabel=_longitudeLabel, locationManager=_locationManager;

- (void)dealloc
{
    // release ivars
    [_locationManager release];
    [_latitudeLabel release];
    [_longitudeLabel release];
    
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // create new location manager
    self.locationManager = [[CLLocationManager alloc] init];
    self.locationManager.delegate = self;
    self.locationManager.desiredAccuracy = kCLLocationAccuracyBest;
    self.locationManager.distanceFilter = kCLDistanceFilterNone;
    
    // start location manager
    [self.locationManager startUpdatingLocation];
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
    // release properties
    self.locationManager = nil;
    self.latitudeLabel = nil;
    self.longitudeLabel = nil;
    
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end