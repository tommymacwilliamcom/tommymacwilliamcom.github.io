//
//  ViewController.h
//  TicTacToe
//
//  Created by Tommy MacWilliam on 3/5/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIAlertViewDelegate>

@property (nonatomic, strong) NSMutableArray* board;
@property (nonatomic, strong) IBOutlet UIButton* gameButton;
@property (nonatomic, assign) BOOL turn;

- (BOOL)check:(int)x with:(int)y and:(int)z;
- (BOOL)checkColumns;
- (BOOL)checkRows;
- (IBAction)game:(id)sender;
- (IBAction)play:(id)sender;
- (BOOL)won;

@end
