/**
 *  CustomAnnotation.h
 *  Section3App7
 *  Tommy MacWilliam, 2011
 *
 */

#import <Foundation/Foundation.h>
#import "MapKit/MapKit.h"

@interface CustomAnnotation : NSObject <MKAnnotation> {
    CLLocationCoordinate2D _coordinate;
    NSString *_title;
    NSString *_subtitle;   
}

@property (nonatomic, assign) CLLocationCoordinate2D coordinate;
@property (nonatomic, retain) NSString *title;
@property (nonatomic, retain) NSString *subtitle;

- (id)initWithCoordinate:(CLLocationCoordinate2D)coordinate;

@end;