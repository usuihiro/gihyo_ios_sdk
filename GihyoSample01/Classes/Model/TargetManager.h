//
//  TargetManager.h
//  GihyoSample01
//

#import <Foundation/Foundation.h>

#import "Target.h"

@interface TargetManager : NSObject {
    NSMutableArray *_targets;
}

-(id)add:(Target*)target;
-(Target*)targetAtIndex:(NSInteger)index;
-(NSInteger)count;
-(void)load;
-(void)save;

@end
