#import <Foundation/Foundation.h>

@interface YourClass : NSObject
{
	NSString* str;
}
- (NSString*) goodbye;

@end
//
@interface MyClass : NSObject
{
	float myFloat;
	YourClass *friend;
}

- (void) hello;
- (void) Friends:(YourClass*)val;
- (YourClass*) friend;
@end


@implementation YourClass

- (id) init
{
	self = [super init];
	return self;
}

- (NSString*) goodbye
{
	str = @"Goodgoodbye, nice seeing you!"; 
	return (str);
}
//
- (void) dealloc
{
	// release any retained objects here.
	[super dealloc];
}
@end

@implementation MyClass

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

- (void) setMyFloat:(float)val
{
	myFloat = val;
}

- (float)myFloat
{
	return myFloat;
}

- (void) Friends:(YourClass*)val
{
	[friend release];
	friend = val;
}

- (YourClass*) friend
{
	return friend;
}



- (void) dealloc
{
	// release any retained objects here.
	[super dealloc];
}

@end

int main(int argc, char**argv)
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	
	// allocate an instance
	MyClass *instance = [[MyClass alloc] init];
	[instance hello];
	
	[instance setMyFloat: 10.0f];
	NSLog(@"new value is %f", [instance myFloat]);
	//new code
	YourClass *ins = [[YourClass alloc] init];
	[instance Friends: ins];
	NSLog(@"This is my friend %@ and he says '%@'", [instance friend], [[instance friend] goodbye]);
	
	[pool release];
	
	return 0;
}