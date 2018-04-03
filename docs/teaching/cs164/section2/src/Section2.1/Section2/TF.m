//
//  TF.m
//  Section2
//
//  Created by Christopher Gerber on 2/29/12.
//  Copyright (c) 2012 Harvard. All rights reserved.
//

#import "TF.h"
#import "Student.h"
#import <stdlib.h>

@implementation TF

@synthesize name=_name, students=_students, ohs=_ohs, favorite=_favorite, grades=_grades;

- (id)initWithName:(NSString *)newName students:(NSMutableArray *)newStudents favorite:(Student *)newFavorite {
    if (self = [super init]) {
        self.name = newName;
        self.students = newStudents;
        self.favorite = newFavorite;
        
        self.grades = [[NSMutableDictionary alloc] init];
        self.ohs = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)grade {
    srand(time(NULL));
    
    for (Student *student in self.students) {
        int grade = rand() % 4;
        if ([student.name isEqualToString:self.favorite.name])
            grade = 4;
        [self.grades setValue:[NSNumber numberWithInt:grade] forKey:student.name];
    }
}

- (void)outputGrades {
    NSLog(@"Grades:");
    for(id student in self.grades)
        NSLog(@"%@: %@", student, [self.grades objectForKey:student]);
}

- (void)addOfficeHours:(NSDate *)date {
    [self.ohs addObject:date];
}

- (void)outputOfficeHours {
    NSLog(@"Office Hours:");
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateStyle:NSDateFormatterLongStyle];
    
    for (NSDate *oh in self.ohs)
        NSLog(@"%@", [formatter stringFromDate:oh]);
}
@end
