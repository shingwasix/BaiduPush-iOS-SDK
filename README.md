# BaiduPush-iOS-SDK

[![CI Status](http://img.shields.io/travis/shingwasix/BaiduPush-iOS-SDK.svg?style=flat)](https://travis-ci.org/shingwasix/BaiduPush-iOS-SDK)
[![Version](https://img.shields.io/cocoapods/v/BPushSDK.svg?style=flat)](http://cocoapods.org/pods/BPushSDK)
[![License](https://img.shields.io/cocoapods/l/BPushSDK.svg?style=flat)](http://cocoapods.org/pods/BPushSDK)
[![Platform](https://img.shields.io/cocoapods/p/BPushSDK.svg?style=flat)](http://cocoapods.org/pods/BPushSDK)

百度推送iOS SDK

## 简介
此为非官方整理用于使用 [CocoaPods] 部署的项目，其中`Official-Sources`文件夹下的文件为百度推送官方网站下载的SDK文件。从1.4.4版本开始，该SDK包含normal和idfa两个不同的版本，请自行根据需求安装。

## 版本
1.4.4 [更新时间:2016-03-25]

## 兼容平台
iOS 5.1及以上

## 官方更新说明
1. 修复之前遗留的开启bitcode打包报错,sdk偶现崩溃,iOS8通知样式不 显示的bug。
2. 添加iOS9快捷回复的特性。
3. 添加idfa版本和非idfa版本。(idfa版本统计效果会更加好)
4. 添加lbs信息收集,可以进行基于 地理位置的推送,需要再app的info.plist文件中添加获取地理位置的字段 NSLocationAlwaysUsageDescription 后台使用位置信息。
5. 由于苹果 在15年2月份对idfa的使用进行了限制,没有接入公告服务的app不能采 用idfa,需要跟据自己app的情况进行接入,否则会审核通过不了。否则 会审核通过不了。

## 使用
可手动下载后参照[百度push服务sdk用户手册（ios版）.pdf](https://github.com/shingwasix/BaiduPush-iOS-SDK/blob/1.4.4/Official-Sources/百度push服务sdk用户手册（ios版）.pdf)进行配置

或

使用 [CocoaPods] 进行安装，可根据实际需求添加以下代码的任意一行到`Podfile`中，其中idfa版本需要应用包含广告服务，否则提交到App Store审核会不通过

```ruby
# 等同于normal版本
pod 'BPushSDK'
# normal版本
pod 'BPushSDK/normal'
# idfa版本
pod 'BPushSDK/idfa'
```

或

```ruby
# 等同于normal版本
pod 'SS-BaiduPushSDK'
# normal版本
pod 'SS-BaiduPushSDK/normal'
# idfa版本
pod 'SS-BaiduPushSDK/idfa'
```

## 官方下载
http://push.baidu.com/sdk/push_client_sdk_for_ios

## 官方开发文档
http://push.baidu.com/doc/ios/api

## License

LICENSE ©2015 Baidu, Inc. All rights reserved.

[CocoaPods]: http://cocoapods.org/
