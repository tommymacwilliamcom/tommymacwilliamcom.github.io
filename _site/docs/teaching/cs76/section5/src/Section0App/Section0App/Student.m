/**
 *  Student.m
 *  Section0App
 *  Tommy MacWilliam, 2011
 *
 */

#import "Student.h"


@implementation Student

@synthesize name = _name;

/**
 * Initialize a new student
 *
 */
- (id)initWithName:(NSString *)newName {
	self = [super init];

	if (self != nil)
		self.name = newName;
	
	return self;
}

/**
 * Deallocate
 *
 */
- (void)dealloc {
    // release all properties
    self.name = nil;
    
    [super dealloc];
}

@end
