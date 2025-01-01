The solution involves using a `weak` reference to break the retain cycle.  Modify the code as follows:

```objectivec
@interface MyClass : NSObject
@property (strong, nonatomic) NSString *myString;
@property (weak, nonatomic) MyOtherClass *otherObject; // Changed to weak
@end

@implementation MyClass
- (void)someMethod {
    self.myString = [[NSString alloc] initWithString:@