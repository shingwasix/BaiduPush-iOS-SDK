//
//  BPushClass.m
//  BPush
//
//  Created by wangweixin on 14-5-21.
//  Copyright (c) 2014年 baidu. All rights reserved.
//
//  Modified by Shingwa Six(https://github.com/shingwasix) at 3/1/2015.
//

#import "BPushBase64.h"
#import "BPushDataCompressor.h"
#import "JSONKit.h"
#import "OpenUDID.h"
#import "BPushClass.h"

@implementation BPushClass

+ (Class)Base64
{
    return [BPushBase64 class];
}

+ (Class) GzipCompressor
{
    return [BPushDataCompressor class];
}

+ (Class) OpenUDID
{
    return [OpenUDID class];
}

@end
