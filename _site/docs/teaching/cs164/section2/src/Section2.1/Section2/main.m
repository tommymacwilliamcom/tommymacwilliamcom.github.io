//
//  main.m
//  Students7
//
//  David J. Malan
//  Harvard University
//  malan@harvard.edu
//
//  Demonstrates mutable arrays.
//

#import <Foundation/Foundation.h>
#import "Student.h"
#import "TF.h"

// prototype
void greet(Student *s);

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        
        // allocate array for students
        NSMutableArray *students = [[NSMutableArray alloc] init];
        
        // Alice
        Student *alice = [[Student alloc] initWithName:@"Alice" andAge:20];
        [students addObject:alice];
        
        // Bob
        [students addObject:[[Student alloc] initWithName:@"Bob" andAge:21]];
        
        TF *chris = [[TF alloc] initWithName:@"Chris" students:students favorite:alice];
        NSLog(@"%@", chris.favorite.name);
                
        Student *david = [[Student alloc] init];
        david.name = @"David";
        david.age = 34;
        
        [students addObject:david];
        
        [chris grade];
        [chris outputGrades];
        
        [chris addOfficeHours:[NSDate dateWithNaturalLanguageString:@"2/29/2012"]];
        [chris addOfficeHours:[NSDate dateWithNaturalLanguageString:@"3/7/2012"]];
        [chris outputOfficeHours];
    }
    return 0;
}

// greets student (via stderr)
void greet(Student *s)
{
    NSLog(@"Hello, %@.  I see that you are %d years old.\n", s.name, s.age);
}