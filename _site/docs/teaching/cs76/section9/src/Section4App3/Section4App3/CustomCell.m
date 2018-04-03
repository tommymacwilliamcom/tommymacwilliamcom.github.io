/**
 *  CustomCell.m
 *  Section4App3
 *  Tommy MacWilliam, 2011
 *
 */

#import "CustomCell.h"

@implementation CustomCell

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
    // get canvas to draw on
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    // create new color to fill cell with
    CGColorRef color = [UIColor colorWithRed:1.0 green:0.0 blue:0.0 alpha:1.0].CGColor;
    
    // set color to our new color and fill cell
    CGContextSetFillColorWithColor(context, color);
    CGContextFillRect(context, self.bounds);
}

- (void)dealloc
{
    [super dealloc];
}

@end
