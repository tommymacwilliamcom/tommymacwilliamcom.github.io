/**
 *  GradientView.m
 *  Section4App2
 *  Tommy MacWilliam, 2011
 *
 */

#import "GradientView.h"

@implementation GradientView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    // get context to draw to
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    // gradient will have two components
    CGFloat locations[] = { 0.0, 1.0 };
    // set up colors (red, green, blue, alpha)
    CGFloat components[] = { 1.0, 0.0, 0.0, 1.0, 0.0, 1.0, 0.0, 1.0 };
    // create gradient
    CGGradientRef gradient = CGGradientCreateWithColorComponents(CGColorSpaceCreateDeviceRGB(), components, locations, 2);
        
    // draw linear gradient to screen
    CGContextDrawLinearGradient(context, gradient, CGPointMake(0.0f, 0.0f), CGPointMake(100.0f, 100.0f), 0);    
    
    // draw radial gradient to screen
    CGContextDrawRadialGradient(context, gradient, CGPointMake(150.0f, 150.0f), 10.0f, 
                                CGPointMake(250.0f, 250.0f), 80.0f, 0);
}

- (void)dealloc
{
    [super dealloc];
}

@end
