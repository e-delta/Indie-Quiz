//
//  IQAppDelegate.m
//  Indie Quiz
//
//  Created by Huey on 12/17/13.
//  Copyright (c) 2013 Huey. All rights reserved.
//

#import "IQAppDelegate.h"
#import "IQViewController.h"
#import "WinStudioViewController.h"

@implementation IQAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    WinStudioViewController *wsv = [[WinStudioViewController alloc] initWithNibName:@"WinStudioViewController" bundle:[NSBundle mainBundle]];

    [[self.window rootViewController].view addSubview:[wsv view]];
    [[self.window rootViewController].view bringSubviewToFront:[wsv view]];
    
    [UIView transitionWithView:self.window duration:3.0f options:UIViewAnimationTransitionNone animations:^(void){[wsv view].alpha=0.0f;} completion:^(BOOL finished){[[wsv view] removeFromSuperview];}];
    
    
    
    return YES;
}
							
@end
