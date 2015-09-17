//
//  ViewController.h
//  BPushDemo
//
//  Created by 成伟 on 15/3/4.
//  Copyright (c) 2015年 chengwei06. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *tagInputTF;
@property (weak, nonatomic) IBOutlet UITextView *outputTextView;

- (void)addLogString:(NSString *)logStr;
@end

