#import "iObject.h"

@implementation iObject
@synthesize name, description, imageURL;

-(id)initWithName:(NSString *)n description:(NSString *)d url:(NSString *)u {
    self = [super init];
    if( self )
    {
        self.name = n;
        self.description = d;
        self.imageURL = u;
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];
    if( self )
    {
        self.name = [aDecoder decodeObjectForKey:@"name"];
        self.description = [aDecoder decodeObjectForKey:@"description"];
        self.imageURL = [aDecoder decodeObjectForKey:@"imageURL"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)encoder
{
    [encoder encodeObject:name forKey:@"name"];
    [encoder encodeObject:description forKey:@"description"];
    [encoder encodeObject:imageURL forKey:@"imageURL"];
}

@end
