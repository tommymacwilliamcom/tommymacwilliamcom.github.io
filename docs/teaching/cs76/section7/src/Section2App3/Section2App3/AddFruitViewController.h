/**
 *  AddFruitViewController.h
 *  Section2App3
 *  Tommy MacWilliam, 2011
 *  Add a new fruit to the list.
 *
 */

#import <UIKit/UIKit.h>

@interface AddFruitViewController : UIViewController <UITextFieldDelegate> {
    UILabel *_label;
    UITextField *_textField;
    NSMutableArray *_fruits;
}

@property (nonatomic, retain) IBOutlet UILabel *label;
@property (nonatomic, retain) IBOutlet UITextField *textField;
@property (nonatomic, retain) NSMutableArray *fruits;

@end
