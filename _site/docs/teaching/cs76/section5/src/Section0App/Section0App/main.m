/**
 *  main.m
 *  Section0App
 *  Tommy MacWilliam, 2011
 *
 *  Create several students and assign them to a TF, then have the TF grade them and schedule office hours accordingly
 *
 */

#import <Foundation/Foundation.h>
#import "TF.h"
#import "Student.h"

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    // create student objects
	Student *alycia = [[Student alloc] initWithName:@"Alycia"];
	Student *joe = [[Student alloc] initWithName:@"Joe"];
    
    // create array of students
	NSMutableArray *students = [[NSMutableArray alloc] initWithObjects: alycia, joe, nil];
    
    // create new TF
	TF *tommy = [[TF alloc] initWithName:@"Tommy" students:students favorite:alycia];
    NSLog(@"%@", tommy.favorite.name);
    
    // give TF another student
	Student *tim = [[Student alloc] initWithName:@"Tim"];
    [students addObject:tim];
    
    // assign and output grades
    [tommy grade];
    [tommy outputGrades];
    
    // create and output office hours
    [tommy addOfficeHour:[NSDate dateWithNaturalLanguageString:@"1/23/45"]];
    [tommy addOfficeHour:[NSDate dateWithNaturalLanguageString:@"4/56/78"]];
    [tommy outputOfficeHours];
	
    // release everything
	[alycia release];
	[joe release];
    [students release];
    [tommy release];
	[tim release];
    
    [pool drain];
    return 0;
}

