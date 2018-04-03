//
//  Student+Description.m
//  Section2
//
//  Created by Christopher Gerber on 2/29/12.
//  Copyright (c) 2012 Harvard. All rights reserved.
//

#import "Student+Description.h"

@implementation Student (Description)

- (NSString *)description {
    return [NSString stringWithFormat:@"Name: %@\nAge: %d\n", self.name, self.age];
}

@end
