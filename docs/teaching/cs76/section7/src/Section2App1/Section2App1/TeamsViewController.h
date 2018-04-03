/**
 *  TeamsViewController.h
 *  Section2App1
 *  Tommy MacWilliam, 2011
 *  Display a list of MLB teams.
 *
 */

#import <UIKit/UIKit.h>


@interface TeamsViewController : UITableViewController {
    NSMutableDictionary *_teams;
}

@property (nonatomic, retain) NSMutableDictionary *teams;

@end
