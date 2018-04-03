/**
 *  Section4App7ViewController.m
 *  Section4App7
 *  Tommy MacWilliam, 2011
 *
 */

#import "Section4App7ViewController.h"
#import "QuartzCore/CAAnimation.h"

@implementation Section4App7ViewController

@synthesize button1=_button1, button2=_button2;

- (void)dealloc
{
    // release ivars
    [_button1 release];
    [_button2 release];
    
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewDidUnload
{
    // release properties
    self.button1 = nil;
    self.button2 = nil;
    
    [super viewDidUnload];
}

- (IBAction)buttonPressed:(id)sender
{
    // top button
    if ([sender tag] == 0) {
        // create path to animate along
        CGMutablePathRef path = CGPathCreateMutable();
    
        // start path at button center
        CGPathMoveToPoint(path, NULL, self.button1.center.x, self.button1.center.y);
        // move button to top left corner
        CGPathAddLineToPoint(path, NULL, 50.0f, 50.0f);
        CGPathAddLineToPoint(path, NULL, 50.0f, 200.0f);
        CGPathAddLineToPoint(path, NULL, 200.0f, 100.0f);
    
        // create animation from path we just created
        CAKeyframeAnimation *translateAnimation = [CAKeyframeAnimation animationWithKeyPath:@"position"];
        translateAnimation.path = path;
        translateAnimation.duration = 3.0f;
    
        // animate button along path
        [self.button1.layer addAnimation:translateAnimation forKey:@"position"];
    }
    
    // bottom button
    else if ([sender tag] == 1) {
        // create three different transformation matrices
        NSValue *first = [NSValue valueWithCATransform3D:CATransform3DMakeRotation(0.0, 1.0f, 1.0f, 0.0f)];
        NSValue *second = [NSValue valueWithCATransform3D:CATransform3DMakeRotation(M_PI, 1.0f, 1.0f, 0.0f)];
        NSValue *third = [NSValue valueWithCATransform3D:CATransform3DMakeScale(2.0, 2.0, 2.0)];
        
        // create animation from transformation values
        CAKeyframeAnimation *rotateAnimation = [CAKeyframeAnimation animationWithKeyPath:@"transform"];
        rotateAnimation.values = [NSArray arrayWithObjects:first, second, third, nil];
        rotateAnimation.duration = 2.0f;
        rotateAnimation.autoreverses = YES;
        
        // animate button
        [self.button2.layer addAnimation:rotateAnimation forKey:@"transform"];
    }
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
