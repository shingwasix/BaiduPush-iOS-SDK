# BaiduPush-iOS-SDK

[![CI Status](http://img.shields.io/travis/shingwasix/BaiduPush-iOS-SDK.svg?style=flat)](https://travis-ci.org/shingwasix/BaiduPush-iOS-SDK)
[![Version](https://img.shields.io/cocoapods/v/BPushSDK.svg?style=flat)](http://cocoapods.org/pods/BPushSDK)
[![License](https://img.shields.io/cocoapods/l/BPushSDK.svg?style=flat)](http://cocoapods.org/pods/BPushSDK)
[![Platform](https://img.shields.io/cocoapods/p/BPushSDK.svg?style=flat)](http://cocoapods.org/pods/BPushSDK)

百度推送iOS SDK

## 简介
此为非官方整理，其中`LibBPush`以及`XXX Demo`文件夹下的代码文件以及pdf说明书均来自百度官方网站，本人未对其进行任何修改。

## 版本
1.4.1 [更新时间:2015-08-21]

## 兼容平台
iOS 5.1及以上

## 官方更新说明
1. 主要针对1.4.0版本做了修复，双demo,分为开发和发布版，不会在配错推送环境了！
2. 修复等修改BPushMode和APikey后，进行绑定操作后能够跟服务端进行网络请求，方便开发者调试。
3. 修改一些缓存的策略，更加方便线上问题的定位，更快地解决开发中的困扰！

## 使用
可手动下载后参照[百度push服务sdk用户手册（ios版）.pdf](https://github.com/shingwasix/BaiduPush-iOS-SDK/blob/1.4.1/%E7%99%BE%E5%BA%A6push%E6%9C%8D%E5%8A%A1sdk%E7%94%A8%E6%88%B7%E6%89%8B%E5%86%8C%EF%BC%88ios%E7%89%88%EF%BC%89.pdf)进行配置

或

使用[CocoaPods](http://cocoapods.org/)进行安装,在`Podfile`中添加如下代码

```ruby
pod 'BPushSDK', '~> 1.4.1'
```

或

```ruby
pod 'SS-BaiduPushSDK', '~> 1.4.1'
```

## 官方下载
http://push.baidu.com/sdk/push_client_sdk_for_ios

## 官方开发文档
http://push.baidu.com/doc/ios/api

## License

LICENSE ©2015 Baidu, Inc. All rights reserved.
