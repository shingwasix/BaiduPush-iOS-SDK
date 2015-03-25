//
//  ViewController.m
//  BPushDemo
//
//  Created by 成伟 on 15/3/4.
//  Copyright (c) 2015年 chengwei06. All rights reserved.
//

#import "ViewController.h"
#import "BPush.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    UITapGestureRecognizer *tapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismissKeyboard)];
    [self.view addGestureRecognizer:tapGestureRecognizer];
}


- (IBAction)bind:(id)sender {
    NSLog(@"绑定");
    [BPush bindChannel];
}

- (IBAction)unbind:(id)sender {
    [BPush unbindChannel];
}

- (IBAction)setTags:(id)sender {
    NSString *tagsString = self.tagInputTF.text;
    if (![self checkTagString:tagsString]) {
        return;
    }
    
    NSArray *tags = [tagsString componentsSeparatedByString:@","];
    if (tags) {
        [BPush setTags:tags];
    }
}

- (IBAction)delTags:(id)sender {
    NSString *tagsString = self.tagInputTF.text;
    if (![self checkTagString:tagsString]) {
        return;
    }
    
    NSArray *tags = [tagsString componentsSeparatedByString:@","];
    if (tags) {
        [BPush delTags:tags];
    }
}

- (IBAction)lisTags:(id)sender {
    [BPush listTags];
}

- (IBAction)appId:(id)sender {
    [self addLogString:[@"App ID : " stringByAppendingString:[BPush getAppId]]];
}

- (IBAction)userId:(id)sender {
    [self addLogString:[@"User ID : " stringByAppendingString:[BPush getUserId]]];
}

- (IBAction)channelId:(id)sender {
    [self addLogString:[@"Channel ID : " stringByAppendingString:[BPush getChannelId]]];
}

- (BOOL)checkTagString:(NSString *)tagStr {
    NSString *str = [tagStr stringByReplacingOccurrencesOfString:@"," withString:@""];
    if ([str isEqualToString:@""]) {
        [self addLogString:@"tags can not be empty"];
        return NO;
    }
    return YES;
}

- (void)addLogString:(NSString *)logStr
{
    NSString *additionStr = [logStr stringByAppendingString:@"\n\n"];
    NSString *preLogString = self.outputTextView.text;
    [self.outputTextView setText:[additionStr stringByAppendingString:preLogString]];
}

- (void)dismissKeyboard {
    NSLog(@"dismiss");
    [self.tagInputTF resignFirstResponder];
}

@end
