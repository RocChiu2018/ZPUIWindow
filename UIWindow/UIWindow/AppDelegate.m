//
//  AppDelegate.m
//  UIWindow
//
//  Created by apple on 15/12/3.
//  Copyright © 2015年 SUNCO. All rights reserved.
//

/**
 没有storyboard文件的程序的启动过程为：
 1、程序运行后首先调用main.m文件中的main函数；
 2、在main函数中调用UIApplicationMain函数；
 3、在main函数中创建UIApplication对象；
 4、在main函数中创建UIApplication的delegate对象；
 5、利用上面创建的delegate对象来监听系统的事件；
 6、程序启动完毕后系统会调用didFinishLaunchingWithOptions:方法；
 7、在didFinishLaunchingWithOptions:方法中创建UIWindow对象（UIWindow是UIView的一个子类）；
 8、在didFinishLaunchingWithOptions:方法中创建视图控制器的一个实例化对象；
 9、把上面创建好的视图控制器的实例化对象设为上面已经创建好的UIWindow的对象的根视图控制器。
 
 有storyboard文件的程序启动后做的工作的步骤为：
 1、创建窗口对象（UIWindow类的一个对象）；
 2、创建在storyboard文件中箭头所指向的那个视图控制器；
 3、把创建好的视图控制器作为窗口对象的根视图控制器，并使窗口对象可见。
 
 除了UIWindow是窗口外，键盘和状态栏都是窗口。
 */
#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    /**
     UIWindow类代表的是程序的窗口，窗口可以单独显示，也可以在窗口上再叠加一个视图控制器的View，这样显示的就是那个叠加在最外层的视图控制器的View了；
     一个程序理论上可以创建无数多个窗口，但是默认一个程序只有一个窗口。
     */
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor redColor];
    
    /**
     设置window为主窗口并且可见。
     */
    [self.window makeKeyAndVisible];
    
    /**
     设置视图控制器是窗口的根控制器。
     */
    ViewController *viewController = [[ViewController alloc] init];
    self.window.rootViewController = viewController;
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
