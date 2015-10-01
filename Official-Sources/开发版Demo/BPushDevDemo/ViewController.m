//
//  ViewController.m
//  BPushDemo
//

#import "ViewController.h"
#import "BPush.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%@", [NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES)[0] stringByAppendingPathComponent:@"Caches/com.baidu.native_push.default"]);
    // Do any additional setup after loading the view from its nib.
    UITapGestureRecognizer *tapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismissKeyboard)];
    [self.view addGestureRecognizer:tapGestureRecognizer];
}


- (IBAction)bind:(id)sender {
    NSLog(@"绑定");
    [BPush bindChannelWithCompleteHandler:^(id result, NSError *error) {
        // 绑定返回值
        [self addLogString:[NSString stringWithFormat:@"Method: %@\n%@",BPushRequestMethodBind,result]];
    }];
}

- (IBAction)unbind:(id)sender {
    [BPush unbindChannelWithCompleteHandler:^(id result, NSError *error) {
        // 解绑返回值
        [self addLogString:[NSString stringWithFormat:@"Method: %@\n%@",BPushRequestMethodUnbind,result]];
    }];
}

- (IBAction)setTags:(id)sender {
    NSString *tagsString = self.tagInputTF.text;
    if (![self checkTagString:tagsString]) {
        return;
    }
    
    NSArray *tags = [tagsString componentsSeparatedByString:@","];
    if (tags) {
        [BPush setTags:tags withCompleteHandler:^(id result, NSError *error) {
            // 设置多个标签组的返回值
            [self addLogString:[NSString stringWithFormat:@"Method: %@\n%@",BPushRequestMethodSetTag,result]];
        }];
    }
}

- (IBAction)delTags:(id)sender {
    NSString *tagsString = self.tagInputTF.text;
    if (![self checkTagString:tagsString]) {
        return;
    }
    
    NSArray *tags = [tagsString componentsSeparatedByString:@","];
    if (tags) {
        [BPush delTags:tags withCompleteHandler:^(id result, NSError *error) {
            // 删除标签的返回值
            [self addLogString:[NSString stringWithFormat:@"Method: %@\n%@",BPushRequestMethodDelTag,result]];
        }];
    }
}

- (IBAction)lisTags:(id)sender {
    [BPush listTagsWithCompleteHandler:^(id result, NSError *error) {
        // 获取标签组的返回值
        [self addLogString:[NSString stringWithFormat:@"Method: %@\n%@",BPushRequestMethodListTag,result]];
    }];
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
    logStr = [self replaceUnicode:logStr];
    NSString *additionStr = [logStr stringByAppendingString:@"\n\n"];
    NSString *preLogString = self.outputTextView.text;
    if (preLogString) {
        [self.outputTextView setText:[additionStr stringByAppendingString:preLogString]];
    }else
    {
        [self.outputTextView setText:additionStr];
    }
}

- (NSString *)replaceUnicode:(NSString *)unicodeStr {
    NSString *tempStr1 = [unicodeStr stringByReplacingOccurrencesOfString:@"\\u" withString:@"\\U"];
    NSString *tempStr2 = [tempStr1 stringByReplacingOccurrencesOfString:@"\"" withString:@"\\\""];
    NSString *tempStr3 = [[@"\"" stringByAppendingString:tempStr2] stringByAppendingString:@"\""];
    NSData *tempData = [tempStr3 dataUsingEncoding:NSUTF8StringEncoding];
    NSString* returnStr = [NSPropertyListSerialization propertyListFromData:tempData
                                                           mutabilityOption:NSPropertyListImmutable
                                                                     format:NULL
                                                           errorDescription:NULL];
    
    return [returnStr stringByReplacingOccurrencesOfString:@"\\r\\n" withString:@"\n"];
}

- (void)dismissKeyboard {
    NSLog(@"dismiss");
    [self.tagInputTF resignFirstResponder];
}

@end
