//
//  BPushSDKTests.m
//  BPushSDKTests
//
//  Created by Shingwa Six on 01/17/2017.
//  Copyright (c) 2017 Shingwa Six. All rights reserved.
//

@import XCTest;
#import <BPushSDK/BPush.h>

@interface Tests : XCTestCase

@end

@implementation Tests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample
{
    [BPush registerChannel:nil apiKey:nil pushMode:BPushModeDevelopment withFirstAction:nil withSecondAction:nil withCategory:nil useBehaviorTextInput:NO isDebug:YES];
}

@end

