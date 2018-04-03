//
//  TF.m
//  CustomProtocolExample
//
//  Created by Tommy MacWilliam on 3/20/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TF.h"
#import <stdlib.h>

@implementation TF

- (int)grade
{
    return arc4random() % 100;
}

- (void)distributeGrades:(NSArray *)grades toStudents:(NSArray *)students
{
    NSLog(@"All done!");
}

@end
