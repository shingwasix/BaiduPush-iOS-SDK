# BaiduPush-iOS-SDK
百度推送iOS SDK

# 简介
此为非官方整理，其中`LibBPush`以及`PushDemo`文件夹下的代码文件以及pdf说明书均来自百度官方网站，本人未对其进行任何修改。

`LibBPush/opensource`文件夹下的源码没有添加podspec中，其中`OpenUDID` & `Reachability`均直接依赖引用`cocoapod/spec`中存在的库，`JSONKit` 则使用了`GCJSONKit`进行替换 。`Base64`原身为来自[Google Toolbox for Mac](https://code.google.com/p/google-toolbox-for-mac/source/browse/trunk/Foundation/?r=390)的`GTMBase64`；`GzipCompressor`原身为来自[ASIHTTPRequest](https://github.com/pokeb/asi-http-request/tree/master/Classes)的`ASIDataCompressor`；`BPushClass`为百度官方定义的一个类，目的应该是为了防止`Base64`和`GzipCompressor`出现命名冲突时无法处理。此处本人将`GTMBase64`改名为`BPushBase64`，以及将`ASIDataCompressor`改名为`BPushDataCompressor`后引入到项目中。`Classes`下的源文件即为修改后的源码。

PS:若项目中存在`JSONKit`，请注意修正避免出现重复定义的错误。

# 版本
1.2.0 [更新时间:2014-08-11]

# 兼容平台
iOS 5.0及以上

# 使用
可手动下载后参照`用户手册.pdf`进行配置

或

使用[cocoapods](http://cocoapods.org/)进行安装,在`podfile`中添加如下代码

> `pod 'BPushSDK'

或

> `pod 'SS-BaiduPushSDK'

# 官方下载
http://developer.baidu.com/wiki/index.php?title=docs/cplat/push/sdk/clientsdk

# 官方版本说明
http://developer.baidu.com/wiki/index.php?title=docs/cplat/push/versions
