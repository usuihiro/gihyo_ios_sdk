//
//  TargetManager.m
//  GihyoSample01
//

#import "TargetManager.h"


@implementation TargetManager

static NSString *FILE_NAME = @"targets.dat";

-(id)init {
    self = [super init];
    if (self != nil) {
        // arrayWithCapacityはautoreleaseが呼ばれている。
        // プロパティでretainしていない（プロパティを作っていない）ため、明示的なretainが必要
        _targets = [[NSMutableArray arrayWithCapacity:0] retain]; 
    }
    return self;
}

-(void)dealloc {
    [_targets release];
    [super dealloc];
}

-(id)add:(Target*)target {
    [_targets addObject:target];
    return self;
}

-(Target*)targetAtIndex:(NSInteger)index {
    return [_targets objectAtIndex:index];
}

-(NSInteger)count {
    return [_targets count];
}

-(NSString*)dataDirectory {
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *dir = [paths objectAtIndex:0];
    NSFileManager *fmgr = [NSFileManager defaultManager];
    if (![fmgr fileExistsAtPath:dir]) {
        NSError *error;
        [fmgr createDirectoryAtPath:dir withIntermediateDirectories:YES attributes:nil error:&error];
        if (error != nil) {
            NSLog(@"Error %@", error);
            return nil;
        }
    }
    return dir;
}

-(NSString*)dataFilePath {
    NSString *path = [[self dataDirectory] stringByAppendingPathComponent:FILE_NAME];
    return path;
}

-(void)load {
    NSString *path = [self dataFilePath];
        
    NSFileManager *fmgr = [NSFileManager defaultManager];
    if (![fmgr fileExistsAtPath:path]) {
        return;
    }

    [_targets removeAllObjects];
    [_targets setArray: [NSKeyedUnarchiver unarchiveObjectWithFile:path]];
}

-(void)save {
    NSString *path = [[self dataDirectory] stringByAppendingPathComponent:FILE_NAME];
    
    [NSKeyedArchiver archiveRootObject:_targets toFile:path];
}

@end
