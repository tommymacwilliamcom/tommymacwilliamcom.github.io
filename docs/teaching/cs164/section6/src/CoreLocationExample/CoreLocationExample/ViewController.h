//
//  ViewController.h
//  CoreLocationExample
//
//  Created by Tommy MacWilliam on 4/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CoreLocation/CoreLocation.h"
#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <CLLocationManagerDelegate>

@property (nonatomic, retain) IBOutlet UILabel *latitudeLabel;
@property (nonatomic, retain) IBOutlet UILabel *longitudeLabel;

@end
