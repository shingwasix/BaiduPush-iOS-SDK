# BaiduPush-iOS-SDK

[![CI Status](http://img.shields.io/travis/shingwasix/BaiduPush-iOS-SDK.svg?style=flat)](https://travis-ci.org/shingwasix/BaiduPush-iOS-SDK)
[![Version](https://img.shields.io/cocoapods/v/BPushSDK.svg?style=flat)](http://cocoapods.org/pods/BPushSDK)
[![License](https://img.shields.io/cocoapods/l/BPushSDK.svg?style=flat)](http://cocoapods.org/pods/BPushSDK)
[![Platform](https://img.shields.io/cocoapods/p/BPushSDK.svg?style=flat)](http://cocoapods.org/pods/BPushSDK)

百度推送iOS SDK

## 简介
此为非官方整理，其中`LibBPush`以及`BPushDemo`文件夹下的代码文件以及pdf说明书均来自百度官方网站，本人未对其进行任何修改。

## 版本
1.4.0 [更新时间:2015-06-04]

## 兼容平台
iOS 5.1及以上

## 更新说明
1. 添加iOS8特性，通知栏的上可以自定义展现的按钮
2. 封装本地通知，开发者可以方便创建和管理本地通知
3. 修改回调方法，原来的BPushDelegate改为block回调，所有回调在其方法里面直接回调给开发者，更方便调用sdk

## 使用
可手动下载后参照[sdk用户手册（ios版）.pdf](https://github.com/shingwasix/BaiduPush-iOS-SDK/blob/1.4.0/%E7%99%BE%E5%BA%A6push%E6%9C%8D%E5%8A%A1sdk%E7%94%A8%E6%88%B7%E6%89%8B%E5%86%8C%EF%BC%88ios%E7%89%88%EF%BC%89.pdf)进行配置

或

使用[CocoaPods](http://cocoapods.org/)进行安装,在`Podfile`中添加如下代码

```ruby
pod 'BPushSDK', '~> 1.4.0'
```

或

```ruby
pod 'SS-BaiduPushSDK', '~> 1.4.0'
```

## 官方下载
http://push.baidu.com/sdk/push_client_sdk_for_ios

## 官方开发文档
http://push.baidu.com/doc/ios/api

## License

LICENSE ©2015 Baidu, Inc. All rights reserved.
