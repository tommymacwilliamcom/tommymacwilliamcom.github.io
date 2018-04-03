/**
 *  RootViewController.h
 *  Section2App2
 *  Tommy MacWilliam, 2011
 *  Display a list of stores and restaurants.
 *
 */

#import <UIKit/UIKit.h>

@interface RootViewController : UITableViewController {
    NSMutableArray *_stores;
    NSMutableArray *_restaurants;
    NSMutableArray *_sections;
}

@property (nonatomic, retain) NSMutableArray *stores;
@property (nonatomic, retain) NSMutableArray *restaurants;
@property (nonatomic, retain) NSMutableArray *sections;

@end
