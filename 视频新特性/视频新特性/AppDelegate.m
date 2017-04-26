//
//  AppDelegate.m
//  视频新特性
//
//  Created by 罗文琦 on 2017/4/26.
//  Copyright © 2017年 罗文琦. All rights reserved.
//

#import "AppDelegate.h"
#import "JJMoviewNewFeatureVC.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    
    _window = [UIWindow new];
    
    
    NSURL* url = [[NSBundle mainBundle]URLForResource:@"qidong" withExtension:@"mp4"];
    JJMoviewNewFeatureVC* VC = [[JJMoviewNewFeatureVC alloc]initWithContentURL:url];
    
    
    _window.rootViewController = VC;
    [_window makeKeyAndVisible];
    
    
    //内存是没有泄露的喔,因为是播放视频,所以播放过程中内存占用比较大,但是也是没有问题的,是被准许的,还有就是模拟器上显示内存占用不准确,真机会真实很多,内存占用小很多
    //求赞一个喔,
    //你都不知道我有多希望你赞我
    //其他小工具https://github.com/luowenqi/JJMovieNewFeature
    
    
    /*
     模拟器会一直打印一些没用的信息,解决方案
     1.选择 Product -->Scheme-->Edit Scheme
     2.选择 Arguments
     3.在Environment Variables添加一个环境变量 OS_ACTIVITY_MODE 设置值为"disable"
     */
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
