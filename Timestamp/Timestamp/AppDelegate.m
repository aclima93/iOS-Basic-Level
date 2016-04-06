//
//  AppDelegate.m
//  Timestamp
//
//  Created by António Lima on 05/04/16.
//  Copyright © 2016 António Lima. All rights reserved.
//

#import "AppDelegate.h"

#define ROOTVIEW [[UIApplication sharedApplication] keyWindow]

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    NSLog(@"didFinishLaunchingWithOptions");
    [[[ROOTVIEW rootViewController ]view] setBackgroundColor:[UIColor blackColor]];
    [self doAnUnorthodoxDelay];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    
    NSLog(@"applicationWillResignActive");
    [[[ROOTVIEW rootViewController ]view] setBackgroundColor:[UIColor blueColor]];
    [self doAnUnorthodoxDelay];
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    
    NSLog(@"applicationDidEnterBackground");
    [[[ROOTVIEW rootViewController ]view] setBackgroundColor:[UIColor greenColor]];
    [self doAnUnorthodoxDelay];
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    
    NSLog(@"applicationWillEnterForeground");
    [[[ROOTVIEW rootViewController ]view] setBackgroundColor:[UIColor yellowColor]];
    [self doAnUnorthodoxDelay];
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    
    NSLog(@"applicationDidBecomeActive");
    [[[ROOTVIEW rootViewController ]view] setBackgroundColor:[UIColor redColor]];
    [self doAnUnorthodoxDelay];
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    
    NSLog(@"applicationWillTerminate");
    [[[ROOTVIEW rootViewController ]view] setBackgroundColor:[UIColor magentaColor]];
    [self doAnUnorthodoxDelay];
}

-(void) doAnUnorthodoxDelay{
    
    // Remember, this is for testing purposes only, you shouldn't abuse stupid delays such as this in a real app
    // as it adds unnecessary complexity and possibly race conditions!
    
    [NSThread sleepForTimeInterval: 2.0];
}

@end
