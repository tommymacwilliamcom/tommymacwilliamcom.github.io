//
//  ViewController.h
//  CustomProtocolExample
//
//  Created by Tommy MacWilliam on 3/19/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol GraderProtocol

- (int)grade;
- (void)distributeGrades:(NSArray *)grades toStudents:(NSArray *)students;

@end

@interface ViewController : UIViewController

@end
