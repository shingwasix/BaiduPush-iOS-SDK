Pod::Spec.new do |s|
  s.name         = "BPushSDK"
  s.version      = "1.3.0"
  s.license  = { 
	:type => 'Cpoyright', 
	:text => 'LICENSE  ©2015 Baidu, Inc. All rights reserved' 
  }
  s.summary      = "Baidu Push SDK for iOS."
  s.homepage     = "http://developer.baidu.com/wiki/index.php?title=docs/cplat/push/sdk/clientsdk"
  s.author       = { "Shingwa Six" => "http://blog.waaile.com" }
  s.platform     = :ios, "5.1"
  s.source       = { :git => "https://github.com/shingwasix/BaiduPush-iOS-SDK.git", :tag => "#{s.version}" }
  s.source_files = "LibBPush/*.h"
  s.public_header_files = "LibBPush/*.h"
  s.preserve_paths = "LibBPush/*.a"
  s.framework = 'CoreTelephony','SystemConfiguration'
  s.libraries = 'z','BPush'
  s.requires_arc = false
  s.xcconfig = { 'LIBRARY_SEARCH_PATHS' => "$(PODS_ROOT)/#{s.name}/LibBPush" }
end
