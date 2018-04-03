/**
 *  PathsView.m
 *  Section4App0
 *  Tommy MacWilliam, 2011
 *
 */

#import "PathsView.h"

@implementation PathsView

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
    
    // create path for horizontal line
    CGMutablePathRef linePath = CGPathCreateMutable(); 
    // start point
    CGPathMoveToPoint(linePath, NULL, 10.0f, 10.0f);
    // end point
    CGPathAddLineToPoint(linePath, NULL, 300.0f, 10.0f);
    CGPathCloseSubpath(linePath); 
    
    // create path for rectangle
    CGMutablePathRef rectPath = CGPathCreateMutable();
    // start at top left
    CGPathMoveToPoint(rectPath, NULL, 10.0f, 100.0f);
    // move from top left to bottom left
    CGPathAddLineToPoint(rectPath, NULL, 10.0f, 200.0f);
    // move from bottom left to bottom right
    CGPathAddLineToPoint(rectPath, NULL, 110.0f, 200.0f);
    // move from bottom right to top right
    CGPathAddLineToPoint(rectPath, NULL, 110.0f, 100.0f);
    CGPathCloseSubpath(rectPath);
    
    // configure and draw line path
    CGContextSetLineWidth(context, 10.0f);
    CGContextAddPath(context, linePath);
    CGContextStrokePath(context);
    
    // configure and draw rectangle path
    CGContextSetFillColorWithColor(context, [UIColor redColor].CGColor);
    CGContextAddPath(context, rectPath);
    CGContextFillPath(context);
}

- (void)dealloc
{
    [super dealloc];
}

@end
