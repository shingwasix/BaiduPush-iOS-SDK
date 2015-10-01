# BaiduPush-iOS-SDK

[![CI Status](http://img.shields.io/travis/shingwasix/BaiduPush-iOS-SDK.svg?style=flat)](https://travis-ci.org/shingwasix/BaiduPush-iOS-SDK)
[![Version](https://img.shields.io/cocoapods/v/BPushSDK.svg?style=flat)](http://cocoapods.org/pods/BPushSDK)
[![License](https://img.shields.io/cocoapods/l/BPushSDK.svg?style=flat)](http://cocoapods.org/pods/BPushSDK)
[![Platform](https://img.shields.io/cocoapods/p/BPushSDK.svg?style=flat)](http://cocoapods.org/pods/BPushSDK)

百度推送iOS SDK

## 简介
此为非官方整理用于CocoaPods部署的项目，其中`Official-Sources`文件夹下的文件为百度推送官方网站下载的SDK文件。若安装后有任何问题，请先校验静态库，确保下载的文件正确。

## 校验

[libBPush.a](https://github.com/shingwasix/BaiduPush-iOS-SDK/blob/1.4.2/Official-Sources/LibBPush/libBPush.a)

MD5:`4211548f4ede6d040ec56c2f7646f520`

SHA1:`a727d96113f09b5488e39fcc3f767da3722136f0`

## 版本
1.4.2 [更新时间:2015-09-24]

## 兼容平台
iOS 5.1及以上

## 官方更新说明
1. 主要针对iOS 9系统做了修复，优化了双demo,在iOS 7 和6上不再报错，添加了标签组的操作。
2. 开启了bitcode编码，静态包大小有所减小。
3. 优化了sdk缓存时对文件的读写操作。

## 使用
可手动下载后参照[百度push服务sdk用户手册（ios版）.pdf](https://github.com/shingwasix/BaiduPush-iOS-SDK/blob/1.4.2/Official-Sources/%E7%99%BE%E5%BA%A6push%E6%9C%8D%E5%8A%A1sdk%E7%94%A8%E6%88%B7%E6%89%8B%E5%86%8C%EF%BC%88ios%E7%89%88%EF%BC%89.pdf)进行配置

或

使用[CocoaPods](http://cocoapods.org/)进行安装,在`Podfile`中添加如下代码

```ruby
pod 'BPushSDK'
```

或

```ruby
pod 'SS-BaiduPushSDK'
```

## 官方下载
http://push.baidu.com/sdk/push_client_sdk_for_ios

## 官方开发文档
http://push.baidu.com/doc/ios/api

## License

LICENSE ©2015 Baidu, Inc. All rights reserved.
