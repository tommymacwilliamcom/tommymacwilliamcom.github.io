/**
 *  Section3App0ViewController.m
 *  Section3App0
 *  Tommy MacWilliam, 2011
 *
 *  Create a fullscreen MKMapView
 *  Don't forget to add MapKit.framework!
 *
 */

#import "Section3App0ViewController.h"

@implementation Section3App0ViewController

@synthesize mapView=_mapView;

- (void)dealloc
{
    // release ivars
    [_mapView release];
    
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - View lifecycle


- (void)viewDidUnload
{
    // release properties
    self.mapView = nil;
    
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
