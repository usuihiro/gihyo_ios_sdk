//
//  Target.m
//  GihyoSample01
//

#import "Target.h"

@implementation Target

@synthesize name;
@synthesize targetHour;
@synthesize achievedHour;

-(void)dealloc {
    self.name = nil;
    [super dealloc];
}

- (id)initWithCoder:(NSCoder *)decoder {
    self = [super init];
    if (self != nil) {
        self.name = [decoder decodeObjectForKey:@"name"];
        self.targetHour = [decoder decodeIntegerForKey:@"targetHour"];
        self.achievedHour = [decoder decodeIntegerForKey:@"achievedHour"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)encoder {
    [encoder encodeObject:name forKey:@"name"];
    [encoder encodeInteger:targetHour forKey:@"targetHour"];
    [encoder encodeInteger:achievedHour forKey:@"achievedHour"];
}

@end
