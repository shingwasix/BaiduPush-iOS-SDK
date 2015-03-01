//
//  ViewController.h
//  PushDemo
//
//  Created by yeyun on 13-5-28.
//  Copyright (c) 2013年 baidu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    UITextView *textView;
    UITextField *appidText;
    UITextField *useridText;
    UITextField *channelidText;
    UITextField *tagsText;
    UIButton IBOutlet *bindBtn;
    UIButton IBOutlet *unbindBtn;
    UIButton IBOutlet *settagBtn;
    UIButton IBOutlet *deltagBtn;
    UIButton IBOutlet *listtagBtn;
}

@property (nonatomic, retain) IBOutlet UITextField *tagsText;
@property (nonatomic, retain) IBOutlet UITextView *textView;
@property (nonatomic, retain) IBOutlet UITextField *appidText;
@property (nonatomic, retain) IBOutlet UITextField *useridText;
@property (nonatomic, retain) IBOutlet UITextField *channelidText;

-(IBAction) btnClicked:(id)sender;
-(IBAction)TextField_DidEndOnExit:(id)sender;

@end
