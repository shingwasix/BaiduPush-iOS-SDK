//
//  AppDelegate.m
//  PushDemo
//
//  Created by yeyun on 13-5-28.
//  Copyright (c) 2013年 baidu. All rights reserved.
//

#import "AppDelegate.h"

#import "ViewController.h"
#import "BPush.h"
#import "JSONKit.h"
#import "OpenUDID.h"

#define SUPPORT_IOS8 0

@implementation AppDelegate

@synthesize appId, channelId, userId;

- (void)dealloc
{
    [_window release];
    [_viewController release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    self.viewController = [[[ViewController alloc] initWithNibName:@"ViewController" bundle:nil] autorelease];
    
    self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
    
    [BPush setupChannel:launchOptions];
    [BPush setDelegate:self];
    
    [application setApplicationIconBadgeNumber:0];
#if SUPPORT_IOS8
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 8.0) {
        UIUserNotificationType myTypes = UIRemoteNotificationTypeBadge | UIRemoteNotificationTypeAlert | UIRemoteNotificationTypeSound;
        UIUserNotificationSettings *settings = [UIUserNotificationSettings settingsForTypes:myTypes categories:nil];
        [[UIApplication sharedApplication] registerUserNotificationSettings:settings];
    }else
#endif
    {
        UIRemoteNotificationType myTypes = UIRemoteNotificationTypeBadge|UIRemoteNotificationTypeAlert|UIRemoteNotificationTypeSound;
        [[UIApplication sharedApplication] registerForRemoteNotificationTypes:myTypes];
    }
    
    [self.viewController.textView setTextColor:[UIColor blueColor]];
    self.viewController.textView.text = [self.viewController.textView.text stringByAppendingFormat:@"Launch: %@\n", [launchOptions JSONString]];
    return YES;
}

#if SUPPORT_IOS8
- (void)application:(UIApplication *)application didRegisterUserNotificationSettings:(UIUserNotificationSettings *)notificationSettings
{
    //register to receive notifications
    [application registerForRemoteNotifications];
}
#endif

- (void)application:(UIApplication *)application didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken
{
    NSLog(@"test:%@",deviceToken);
    [BPush registerDeviceToken: deviceToken];
    
    self.viewController.textView.text = [self.viewController.textView.text stringByAppendingFormat: @"Register device token: %@\n openudid: %@", deviceToken, [OpenUDID value]];
}

- (void) onMethod:(NSString*)method response:(NSDictionary*)data {
    NSLog(@"On method:%@", method);
    NSLog(@"data:%@", [data description]);
    NSDictionary* res = [[[NSDictionary alloc] initWithDictionary:data] autorelease];
    if ([BPushRequestMethod_Bind isEqualToString:method]) {
        NSString *appid = [res valueForKey:BPushRequestAppIdKey];
        NSString *userid = [res valueForKey:BPushRequestUserIdKey];
        NSString *channelid = [res valueForKey:BPushRequestChannelIdKey];
        //NSString *requestid = [res valueForKey:BPushRequestRequestIdKey];
        int returnCode = [[res valueForKey:BPushRequestErrorCodeKey] intValue];
        
        if (returnCode == BPushErrorCode_Success) {
            self.viewController.appidText.text = appid;
            self.viewController.useridText.text = userid;
            self.viewController.channelidText.text = channelid;
            
            // 在内存中备份，以便短时间内进入可以看到这些值，而不需要重新bind
            self.appId = appid;
            self.channelId = channelid;
            self.userId = userid;
        }
    } else if ([BPushRequestMethod_Unbind isEqualToString:method]) {
        int returnCode = [[res valueForKey:BPushRequestErrorCodeKey] intValue];
        if (returnCode == BPushErrorCode_Success) {
            self.viewController.appidText.text = nil;
            self.viewController.useridText.text = nil;
            self.viewController.channelidText.text = nil;
        }
    }
    self.viewController.textView.text = [[[NSString alloc] initWithFormat: @"%@ return: \n%@", method, [data description]] autorelease];
}

- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo {
    NSLog(@"Receive Notify: %@", [userInfo JSONString]);
    NSString *alert = [[userInfo objectForKey:@"aps"] objectForKey:@"alert"];
    if (application.applicationState == UIApplicationStateActive) {
        // Nothing to do if applicationState is Inactive, the iOS already displayed an alert view.
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Did receive a Remote Notification"
                                                            message:[NSString stringWithFormat:@"The application received this remote notification while it was running:\n%@", alert]
                                                           delegate:self
                                                  cancelButtonTitle:@"OK"
                                                  otherButtonTitles:nil];
        [alertView show];
    }
    [application setApplicationIconBadgeNumber:0];
    
    [BPush handleNotification:userInfo];
    
   self.viewController.textView.text = [self.viewController.textView.text stringByAppendingFormat:@"Receive notification:\n%@", [userInfo JSONString]];
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
    
    self.viewController.appidText.text = self.appId;
    self.viewController.useridText.text = self.userId;
    self.viewController.channelidText.text = self.channelId;
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    
    self.viewController.appidText.text = [BPush getAppId];
    self.viewController.useridText.text = [BPush getUserId];
    self.viewController.channelidText.text = [BPush getChannelId];
    
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
