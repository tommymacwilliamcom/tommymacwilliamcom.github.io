//
//  main.m
//  GDB
//
//  Created by Tommy MacWilliam on 3/5/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

void f(int, int);

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSString* s = @"Hi!";
        NSLog(@"%@", s);
        
        for (int i = 0; i < 2; i++)
            NSLog(@"loop");
        
        f(1, 2);
    }
    return 0;
}

void f(int x, int y) {
    NSLog(@"%d, %d", x, y);
}