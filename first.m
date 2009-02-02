#import <Foundation/Foundation.h>

@interface YourClass : NSObject
{
	float myFloat;
	NSString* str;
}

- (void) hello;
- (NSString*) bye;

@end

@implementation YourClass

- (id) init
{
	self = [super init];
	if(self != nil)
	{
		myFloat = 5.0;
	}
	return self;
}

- (void) hello
{
	NSLog(@"Hello, I'm your first Objective-C program!");
}
//new code
- (NSString*) bye
{
	str = @"Goodbye, nice seeing you!"; 
	return (str);
}
//
- (void) dealloc
{
	// release any retained objects here.
	[super dealloc];
}

- (void) setMyFloat:(float)val
{
	myFloat = val;
}

- (float)myFloat
{
	return myFloat;
}

@end

int main(int argc, char**argv)
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	
	// allocate an instance
	YourClass *instance = [[YourClass alloc] init];
	[instance hello];
	
	[instance setMyFloat: 10.0f];
	NSLog(@"new value is %f", [instance myFloat]);
	//new code
	NSLog([instance bye]);
	
	[pool release];
	
	return 0;
}