# BaiduPush-iOS-SDK

[![CI Status](http://img.shields.io/travis/shingwasix/BaiduPush-iOS-SDK.svg?style=flat)](https://travis-ci.org/shingwasix/BaiduPush-iOS-SDK)
[![Version](https://img.shields.io/cocoapods/v/BPushSDK.svg?style=flat)](http://cocoapods.org/pods/BPushSDK)
[![License](https://img.shields.io/cocoapods/l/BPushSDK.svg?style=flat)](http://cocoapods.org/pods/BPushSDK)
[![Platform](https://img.shields.io/cocoapods/p/BPushSDK.svg?style=flat)](http://cocoapods.org/pods/BPushSDK)

百度推送iOS SDK

## 简介
此为非官方整理用于使用 [CocoaPods] 部署的项目，其中`Official-Sources`文件夹下的文件为百度推送官方网站下载的SDK文件。从1.4.4版本开始，该SDK包含normal和idfa两个不同的版本，请自行根据需求安装。

## 版本
1.4.5 [更新时间:2016-05-20]

## 兼容平台
iOS 5.1及以上

## 官方更新说明
1. 地理位置控制开关,可以更加灵活的控制是否启用地理位置推送!
2. 非idfa版本中的静态库中移出广告标识符库,提交AppStore更加快捷方便。
3. 全面支持 IPv6，解决 AppStore 审核问题。

## 使用
可手动下载后参照[百度push服务sdk用户手册（ios版）.pdf](https://github.com/shingwasix/BaiduPush-iOS-SDK/blob/1.4.5/Official-Sources/百度push服务sdk用户手册（ios版）.pdf)进行配置

或

使用 [CocoaPods] 进行安装，可根据实际需求添加以下代码的任意一行到`Podfile`中，其中idfa版本需要应用包含广告服务，否则提交到App Store审核可能会不通过

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

### BPushSDK

LICENSE ©2016 Baidu, Inc. All rights reserved.

### BPushSDK.podspec & SS-BaiduPushSDK.podspec

Licensed under the [MIT License]

Copyright &copy; 2015-2016 [Shingwa Six]

[CocoaPods]: http://cocoapods.org/
[MIT License]: http://creativecommons.org/licenses/MIT/
[Shingwa Six]: https://github.com/shingwasix