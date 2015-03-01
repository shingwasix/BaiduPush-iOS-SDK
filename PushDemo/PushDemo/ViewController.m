//
//  ViewController.m
//  PushDemo
//
//  Created by yeyun on 13-5-28.
//  Copyright (c) 2013年 baidu. All rights reserved.
//

#import "ViewController.h"
#import "BPush.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize tagsText, textView, useridText, appidText, channelidText;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)btnClicked:(id)sender {
    if (sender == bindBtn) {
        [BPush bindChannel];
    } else if (sender == unbindBtn) {
        [BPush unbindChannel];
    }else if (sender == settagBtn) {
        NSString *tags = tagsText.text;
        if (![@"" isEqualToString:tags]) {
            NSArray *tagArr = [tags componentsSeparatedByString:@";"];
            [BPush setTags:tagArr];
        }
    } else if (sender == deltagBtn) {
        NSString *tags = tagsText.text;
        if (![@"" isEqualToString:tags]) {
            NSArray *tagArr = [tags componentsSeparatedByString:@";"];
            [BPush delTags:tagArr];
        }
    } else if (sender == listtagBtn) {
        [BPush listTags];
    }
}

- (IBAction)TextField_DidEndOnExit:(id)sender {
    // 隐藏键盘.
    [sender resignFirstResponder];
}

@end
