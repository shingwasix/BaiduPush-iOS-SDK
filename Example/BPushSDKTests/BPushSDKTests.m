//
//  BPushSDKTests.m
//  BPushSDKTests
//
//  Created by SixChashao on 15/8/4.
//  Copyright (c) 2015年 ShingwaSix. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import <BPushSDK/BPush.h>

@interface BPushSDKTests : XCTestCase

@end

@implementation BPushSDKTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    [BPush registerChannel:nil apiKey:nil pushMode:BPushModeDevelopment withFirstAction:nil withSecondAction:nil withCategory:nil isDebug:YES];
}

@end
