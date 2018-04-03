/**
 *  FruitWebViewController.m
 *  FruitTableViewController
 *
 *  Tommy MacWilliam <tmacwilliam@cs.harvard.edu>
 *
 */

#import "FruitWebViewController.h"

@implementation FruitWebViewController

@synthesize fruit = _fruit;
@synthesize webView = _webView;


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

@end
