//
//  ViewController.h
//  BetterTextField
//
//  Created by Tommy MacWilliam on 3/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>

@property (nonatomic, strong) IBOutlet UILabel* label;
@property (nonatomic, strong) IBOutlet UITextField* textField;

@end
