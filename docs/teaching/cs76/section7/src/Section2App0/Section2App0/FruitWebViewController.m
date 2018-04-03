/**
 *  FruitWebViewController.m
 *  Section2App0
 *  Tommy MacWilliam, 2011
 *  Display a fruit's Wikipedia page.
 *
 */

#import "FruitWebViewController.h"

@implementation FruitWebViewController

@synthesize webView=_webView, fruit=_fruit;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    return self;
}

- (void)dealloc
{
    self.webView = nil;
    
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
    
    // allow user to pinch-zoom page (though wikipedia disables this)
    self.webView.scalesPageToFit = YES;
    self.webView.multipleTouchEnabled = YES;
}

- (void)viewWillAppear:(BOOL)animated 
{
    [super viewWillAppear:animated];
    self.navigationItem.title = [NSString stringWithFormat:@"Wikipedia: %@", self.fruit];
    
    // request wikipedia page for selected object
    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:
                                                            [NSString stringWithFormat:@"http://en.wikipedia.org/wiki/%@", self.fruit]]]];
}

- (void)viewDidUnload
{
    // release properties
    self.webView = nil;
    
    [super viewDidUnload];
}

@end
