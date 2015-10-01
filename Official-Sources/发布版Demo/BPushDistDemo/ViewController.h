//
//  ViewController.h
//  BPushDemo
//
//  Created by Baidu.
//  Copyright (c) 2015年 All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *tagInputTF;
@property (weak, nonatomic) IBOutlet UITextView *outputTextView;

- (void)addLogString:(NSString *)logStr;
@end

