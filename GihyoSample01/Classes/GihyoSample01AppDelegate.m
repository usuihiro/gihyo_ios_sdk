//
//  GihyoSample01AppDelegate.m
//  GihyoSample01
//

#import "GihyoSample01AppDelegate.h"
#import "RootViewController.h"

@implementation GihyoSample01AppDelegate

@synthesize window;
@synthesize viewController;

#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
	window = [[UIWindow alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
	viewController = [[RootViewController alloc]init];
    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
    
    return YES;
}

- (void)dealloc {
	[viewController release];
    [window release];
    [super dealloc];
}


@end
