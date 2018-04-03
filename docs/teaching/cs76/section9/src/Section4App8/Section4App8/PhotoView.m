/**
 *  PhotoView.m
 *  Section4App8
 *  Tommy MacWilliam, 2011
 *
 */

#import "PhotoView.h"

@implementation PhotoView

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
    // draw  image
    UIImage *david1 = [UIImage imageNamed:@"david-1.jpg"];
    UIImage *david2 = [UIImage imageNamed:@"david-2.jpg"];
    [david1 drawInRect:rect];

    // draw small square on top of image
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGRect square = CGRectMake(150.0f, 150.0f, 100.0f, 100.0f);
    CGContextSetFillColorWithColor(context, [UIColor greenColor].CGColor);
    CGContextFillRect(context, square);
    
    // create triangle to frame second photo
    CGMutablePathRef path2 = CGPathCreateMutable();
    CGPathMoveToPoint(path2, NULL, 100.0f, 250.0f);
    CGPathAddLineToPoint(path2, NULL, 50.0f, 370.0f);
    CGPathAddLineToPoint(path2, NULL, 190.0f, 340.0f);
    CGPathCloseSubpath(path2);
    
    // add path to context and clip everything to be drawn around that path
    CGContextAddPath(context, path2);
    CGContextClip(context);

    // draw image
    CGContextDrawImage(context, CGRectMake(40.0f, 280.0f, 100.0f, 150.0f), david2.CGImage);
}

- (void)dealloc
{
    [super dealloc];
}

@end
