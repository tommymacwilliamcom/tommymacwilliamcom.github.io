/**
 *  Student.h
 *  Section0App
 *  Tommy MacWilliam, 2011
 *
 */

#import <Foundation/Foundation.h>


@interface Student : NSObject {
	NSString *_name;
}

@property (copy, nonatomic, readwrite) NSString *name;

- (id)initWithName:(NSString *)newName;

@end
