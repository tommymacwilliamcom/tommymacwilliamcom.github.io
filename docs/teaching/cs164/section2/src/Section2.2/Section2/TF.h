//
//  TF.h
//  Section2
//
//  Created by Christopher Gerber on 2/29/12.
//  Copyright (c) 2012 Harvard. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Student;

@interface TF : NSObject

@property (copy, nonatomic) NSString *name;
@property (strong, nonatomic, readwrite) NSMutableArray *students;
@property (strong, nonatomic, readwrite) NSMutableArray *ohs;
@property (strong, nonatomic, readwrite) Student *favorite;
@property (strong, nonatomic, readwrite) NSDictionary *grades;

- (id)initWithName:(NSString *)newName students:(NSMutableArray *)newStudents favorite:(Student *)newFavorite;
- (void)grade;
- (void)outputGrades;
- (void)addOfficeHours:(NSDate *)date;
- (void)outputOfficeHours;

@end
