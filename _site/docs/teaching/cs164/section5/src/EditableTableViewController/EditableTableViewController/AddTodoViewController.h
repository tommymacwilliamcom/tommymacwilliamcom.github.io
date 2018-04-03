//
//  AddFruitViewController.h
//  EditableTableViewController
//
//  Created by Tommy MacWilliam on 3/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol AddTodoDelegate
- (void)didFinishWithTodo:(NSString *)todo;
@end

@interface AddTodoViewController : UIViewController

@property (weak, nonatomic) id<AddTodoDelegate> delegate;
@property (weak, nonatomic) IBOutlet UITextField *textField;

- (IBAction)buttonPressed:(id)sender;

@end
