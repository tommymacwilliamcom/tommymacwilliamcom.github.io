//
//  CustomAnnotation.m
//  OverlayExample
//
//  Created by Tommy MacWilliam on 4/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CustomAnnotation.h"

@implementation CustomAnnotation

@synthesize coordinate = _coordinate;
@synthesize title = _title;
@synthesize subtitle = _subtitle;

/**
 * Create a new annotation from a given coordinate
 *
 */
- (id)initWithCoordinate:(CLLocationCoordinate2D)coordinate 
{
    self = [super init];
    
    if (self != nil) {
        self.coordinate = coordinate;
    }
    
    return self;
}

@end
