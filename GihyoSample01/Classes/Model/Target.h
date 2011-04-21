//
//  Target.h
//  GihyoSample01
//

#import <Foundation/Foundation.h>

@interface Target : NSObject <NSCoding> {
    NSString *name;
    NSInteger targetHour;
    NSInteger achievedHour;
}

@property (nonatomic,retain) NSString* name;
@property (nonatomic) NSInteger targetHour;
@property (nonatomic) NSInteger achievedHour;

@end
