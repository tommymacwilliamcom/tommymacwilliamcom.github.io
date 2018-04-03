/**
 *  TF.h
 *  Section0App
 *  Tommy MacWilliam, 2011
 *
 */

#import <Foundation/Foundation.h>

@class Student;

@interface TF : NSObject {
	NSString *_name;
	NSMutableArray *_students;
    NSMutableArray *_ohs;
	Student *_favorite;
	NSDictionary *_grades;
}

@property (copy, nonatomic) NSString *name;
@property (retain, nonatomic) NSMutableArray *students;
@property (retain, nonatomic) Student *favorite;
@property (retain, nonatomic) NSDictionary *grades;
@property (retain, nonatomic) NSMutableArray *ohs;

- (id)initWithName:(NSString *)newName students:(NSMutableArray *)newStudents favorite:(Student *)newFavorite;
- (void)grade;
- (void)outputGrades;
- (void)addOfficeHour:(NSDate *)date;
- (void)outputOfficeHours;

@end
