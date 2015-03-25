//
//  BPush.h
//
//  Created by LQMacBookPro on 15/1/21.
//  Copyright (c) 2015年 chengwei06. All rights reserved.
//
//
//

#import <Foundation/Foundation.h>

@protocol BPushDelegate <NSObject>

/**
 * @brief 调用云推送 API 后的回调方法，获取请求返回的数据
 * @param
 *     method - 请求的方法，如bind,set_tags
 *     response - 返回结果字典
 * @return
 *     none
 */
- (void)onMethod:(NSString*)method response:(NSDictionary*)data;
@end

/**
 * @brief 回调方法 <#onMethod:reponse#> 中 reponse 字典中的键值，用于获取对应的数据
 *
 */
extern NSString *const BPushRequestErrorCodeKey;
extern NSString *const BPushRequestErrorMsgKey;
extern NSString *const BPushRequestRequestIdKey;
extern NSString *const BPushRequestAppIdKey;
extern NSString *const BPushRequestUserIdKey;
extern NSString *const BPushRequestChannelIdKey;
extern NSString *const BPushRequestResponseParamsKey; // 服务端返回的原始值，其内容和以上的部分值可能有重合

/**
 * @brief 在回调方法 <#onMethod:reponse#> 中可通过 BPushRequestMethodKey 与 method 比较判断当前回调属于哪一个方法
 *
 */
extern NSString *const BPushRequestMethodBind;
extern NSString *const BPushRequestMethodUnbind;
extern NSString *const BPushRequestMethodSetTag;
extern NSString *const BPushRequestMethodDelTag;
extern NSString *const BPushRequestMethodListTag;

/**
 * @brief 当前推送的环境
 */
typedef NS_ENUM(NSInteger, BPushMode){
    BPushModeDevelopment, // 开发测试环境
    BPushModeProduction, // AppStore 上线环境
};

@interface BPush : NSObject
/**
 * @brief 注册百度云推送 SDK
 * @param
 *     launchOptions - App 启动时系统提供的参数，表明了 App 是通过什么方式启动的
 */
+ (void)registerChannel:(NSDictionary *)launchOptions apiKey:(NSString *)apikey pushMode:(BPushMode)mode isDebug:(BOOL)isdebug;

/**
 * @brief 设置delegate，该delegate必须实现 <#onMethod:reponse#> 方法
 * @param
 *     delegate - 请求发送完成后，结果的回调
 * @return
 *     none
 */
+ (void)setDelegate:(id<BPushDelegate>) delegate;

/**
 * @brief 向云推送注册 device token，只有在注册deviceToken后才可以绑定
 * @param
 *     deviceToken - 通过 AppDelegate 中的 didRegisterForRemoteNotificationsWithDeviceToken 回调获取
 * @return
 *     none
 */
+ (void)registerDeviceToken:(NSData *)deviceToken;

/**
 * 设置access token. 在bindChannel之前调用，如果access token改变后，必须重新设置并且重新bindChannel
 * @param
 *     token - Access Token
 * @return
 *     none
 */
+ (void)setAccessToken:(NSString *)token;

/**
 * 设置 Bduss
 * @param
 *     bduss -
 * @return
 *     none
 */
+ (void)setBduss:(NSString *)bduss forApp:(NSString *)appid;

/**
 * @brief 绑定channel. 如果用户有注册delegate并实现onMethod:response:，将会回调该函数，通过method参数来判断返回的方法。
 * @param
 *     none
 * @return
 *     none
 */
+ (void)bindChannel;

/**
 * @brief解除对 channel 的绑定. 如果用户有注册delegate并实现onMethod:response:，将会回调该函数，通过method参数来判断返回的方法。
 * @param
 *     none
 * @return
 *     none
 */
+ (void)unbindChannel;

/**
 * @brief设置tag。 如果用户有注册delegate并实现onMethod:response:，将会回调该函数，通过method参数来判断返回的方法。
 * @param
 *     tag - 需要设置的tag
 * @return
 *     none
 */
+ (void)setTag:(NSString *)tag;

/**
 * @brief设置多个tag。如果用户有注册delegate并实现onMethod:response:，将会回调该函数，通过method参数来判断返回的方法。
 * @param
 *     tags - 需要设置的tag数组
 * @return
 *     none
 */
+ (void)setTags:(NSArray *)tags;

/**
 * @brief删除tag。如果用户有注册delegate并实现onMethod:response:，将会回调该函数，通过method参数来判断返回的方法。
 * @param
 *     tag - 需要删除的tag
 * @return
 *     none
 */
+ (void)delTag:(NSString *)tag;

/**
 * @brief删除多个tag。如果用户有注册delegate并实现onMethod:response:，将会回调该函数，通过method参数来判断返回的方法。
 * @param
 *     tags - 需要删除的tag数组
 * @return
 *     none
 */
+ (void)delTags:(NSArray *)tags;

/**
 * @brief获取当前设备应用的tag列表。如果用户有注册delegate并实现onMethod:response:，将会回调该函数，通过method参数来判断返回的方法。
 * @param
 *     none
 * @return
 *     none
 */
+ (void)listTags;

/**
 * @brief 在didReceiveRemoteNotification中调用，用于推送反馈
 * @param
 *     userInfo
 * @return
 *     none
 */
+ (void)handleNotification:(NSDictionary *)userInfo;

/**
 * @brief获取应用ID，Channel ID，User ID。如果应用没有绑定，那么返回空
 * @param
 *     none
 * @return
 *     appid/channelid/userid
 */
+ (NSString *)getChannelId;
+ (NSString *)getUserId;
+ (NSString *)getAppId;

@end




