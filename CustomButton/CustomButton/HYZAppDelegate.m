//
//  HYZAppDelegate.m
//  CustomButton
//
//  Created by Han_YaZhou on 14/12/5.
//  Copyright (c) 2014年 韩亚周. All rights reserved.
//

#import "HYZAppDelegate.h"

@implementation HYZAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    
    
    HYZCustomBtn *testButton = [[HYZCustomBtn alloc] initWithFrame:CGRectMake(50, 200, 120, 20)];
    [testButton setTitleString:@"保持登陆状态"];
    [testButton addTarget:self action:@selector(testButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    [testButton setNormalImage:[UIImage imageNamed:@"loginStateYES.png"]];
    [testButton setHeightLightImage:[UIImage imageNamed:@"loginStateNO.png"]];
    [self.window addSubview:testButton];
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)testButtonClick:(HYZCustomBtn *)sender{
    sender.selected =! sender.selected;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
