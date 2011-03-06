//
//  GihyoSample01AppDelegate.h
//  GihyoSample01
//

#import <UIKit/UIKit.h>

@class RootViewController;

@interface GihyoSample01AppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	RootViewController *viewController;
}

@property (nonatomic, retain) UIWindow *window;
@property (nonatomic, retain) RootViewController *viewController;

@end

