//
//  MasterViewController.h
//  EditableTableViewController
//
//  Created by Tommy MacWilliam on 3/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AddTodoViewController.h"
#import <UIKit/UIKit.h>

@interface MasterViewController : UITableViewController <AddTodoDelegate>

-(void)addTodo;

@end
