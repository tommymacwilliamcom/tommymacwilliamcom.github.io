/**
 *  TF.m
 *  Section0App
 *  Tommy MacWilliam, 2011
 *
 */

#import "TF.h"
#import "Student.h"
#import <stdlib.h>

@implementation TF

@synthesize name = _name, students = _students, favorite = _favorite, grades = _grades, ohs = _ohs;

/**
 * Initialize a new TF
 *
 */
- (id)initWithName:(NSString *)newName students:(NSMutableArray *)newStudents favorite:(Student *)newFavorite {
	self = [super init];
	
    // make sure we have a valid object
	if (self != nil) {
        // set all properties
		self.name = newName;
		self.students = newStudents;
		self.favorite = newFavorite;
        
        // create a blank dictionary for grades
        self.grades = [[NSMutableDictionary alloc] init];
        self.ohs = [[NSMutableArray alloc] init];
	}
	
	return self;
}

/**
 * Assign grades to students
 *
 */
- (void)grade {
    // seed PRNG
	srand(time(NULL));
	
    // iterate through all students
	for (Student *student in self.students) {
        // after much thought and consideration, decide on a student's grade
        int grade = rand() % 4;
        
        // favorite student gets a check+
        if ([student.name isEqualToString:self.favorite.name])
            grade = 3;
        
        // add student/grade pair to dictionary
        [self.grades setValue:[NSNumber numberWithInt:grade] forKey:student.name];
	}
}

/**
 * Display grades for all students
 *
 */
- (void)outputGrades {
    NSLog(@"Grades:");
    
    // iterate over grades and output student/grade pair
    for (id student in self.grades)
        NSLog(@"%@: %@", student, [self.grades objectForKey:student]);
}

/** 
 * Add an office hour
 *
 */
- (void)addOfficeHour:(NSDate *)date {
    [self.ohs addObject:date];
}

/**
 * Display all office hours
 *
 */
- (void)outputOfficeHours {
    NSLog(@"Office Hours:");
    
    // create new date formatter to output NSDate in human-readable format
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateStyle:NSDateFormatterLongStyle];
    
    // iterate over office hours and display each
    for (NSDate *oh in self.ohs)
        NSLog(@"%@", [formatter stringFromDate:oh]);
    
    [formatter release];
}

/**
 * Deallocate
 *
 */
- (void)dealloc {    
    // release all properties
    self.name = nil;
    self.favorite = nil;
    self.grades = nil;
    self.ohs = nil;
    self.students = nil;

    [super dealloc];
}

@end
