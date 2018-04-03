/**
 *  CustomButton.m
 *  Section4App4
 *  Tommy MacWilliam, 2011
 *
 */

#import "CustomButton.h"

@implementation CustomButton

- (id)initWithFrame:(CGRect)frame title:(NSString *)title color:(UIColor *)color
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setTitle:title forState:UIControlStateNormal];
        [self setTitleColor:color forState:UIControlStateNormal];
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
    CGContextDrawLinearGradient(context, gradient, CGPointMake(self.bounds.origin.x, self.bounds.origin.y), 
                                CGPointMake(self.bounds.size.width, self.bounds.size.height), 0);    
}

- (void)dealloc
{
    [super dealloc];
}

@end
