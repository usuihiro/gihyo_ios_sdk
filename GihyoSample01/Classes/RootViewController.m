//
//  RootViewController.m
//  GihyoSample01
//

#import "RootViewController.h"

@implementation RootViewController

- (void)loadView {
	textView = [[UITextView alloc]initWithFrame:[[UIScreen mainScreen]applicationFrame]];
	textView.text = @"Hello World";
	textView.textAlignment = UITextAlignmentCenter;
	self.view = textView;
}

- (void)dealloc {
	[textView release];
    [super dealloc];
}


@end
