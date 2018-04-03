//
//  Student.m
//  Students7
//
//  David J. Malan
//  Harvard University
//  malan@harvard.edu
//
//  Defines a student with init methods.
//

#import "Student.h"

@implementation Student

@synthesize age=_age;
@synthesize name=_name;

- (id)init
{
    self = [self initWithName:@"John" andAge:404];
    return self;
}

- (id)initWithName:(NSString *)name andAge:(int)age
{
    if (self = [super init])
    {
        self.age = age;
        self.name = name;
    }
    return self;
}

@end