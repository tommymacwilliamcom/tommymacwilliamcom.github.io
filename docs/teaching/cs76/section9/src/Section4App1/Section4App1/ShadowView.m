/**
 *  ShadowView.m
 *  Section4App1
 *  Tommy MacWilliam, 2011
 *
 */

#import "ShadowView.h"

@implementation ShadowView

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
    // push state onto stack
    CGContextSaveGState(context);
    
    // create path for triangle
    CGMutablePathRef path1 = CGPathCreateMutable();
    // start at top
    CGPathMoveToPoint(path1, NULL, 50.0f, 50.0f);
    // move to bottom left
    CGPathAddLineToPoint(path1, NULL, 10.0f, 90.0f);
    // move to bottom right
    CGPathAddLineToPoint(path1, NULL, 90.0f, 90.0f);
    CGPathCloseSubpath(path1);
    
    // add shadow to triangle
    CGContextSetShadow(context, CGSizeMake(10.0f, 10.0f), 5.0f);
    
    // draw triangle path
    CGContextAddPath(context, path1);
    CGContextSetFillColorWithColor(context, [UIColor greenColor].CGColor);
    CGContextFillPath(context);
    
    // restore state (to before we added a shadow)
    CGContextRestoreGState(context);
    
    // create another path for a second triangle
    CGMutablePathRef path2 = CGPathCreateMutable();
    // start at top
    CGPathMoveToPoint(path2, NULL, 250.0f, 250.0f);
    // move to bottom left
    CGPathAddLineToPoint(path2, NULL, 210.0f, 290.0f);
    // move to bottom right
    CGPathAddLineToPoint(path2, NULL, 290.0f, 290.0f);
    CGPathCloseSubpath(path2);
    
    // draw second triangle path (without shadow)
    CGContextAddPath(context, path2);
    CGContextSetFillColorWithColor(context, [UIColor yellowColor].CGColor);
    CGContextFillPath(context);

}

- (void)dealloc
{
    [super dealloc];
}

@end
