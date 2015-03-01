//
//  AppDelegate.h
//  PushDemo
//
//  Created by yeyun on 13-5-28.
//  Copyright (c) 2013年 baidu. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) ViewController *viewController;

@property (strong, nonatomic) NSString *appId;
@property (strong, nonatomic) NSString *channelId;
@property (strong, nonatomic) NSString *userId;

@end
