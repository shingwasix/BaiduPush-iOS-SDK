Pod::Spec.new do |s|
  s.name         = "SS-BaiduPushSDK"
  s.version      = "1.4.0"
  s.license  = { 
	:type => 'Cpoyright', 
	:text => 'LICENSE  ©2015 Baidu, Inc. All rights reserved' 
  }
  s.summary      = "Baidu Push SDK for iOS.Also see [BPushSDK]"
  s.homepage     = "https://github.com/shingwasix/BaiduPush-iOS-SDK"
  s.author       = { "Shingwa Six" => "http://blog.waaile.com" }
  s.platform     = :ios, "5.1"
  s.source       = { :git => "https://github.com/shingwasix/BaiduPush-iOS-SDK.git", :tag => "#{s.version}" }
  s.source_files = "LibBPush/*.h"
  s.public_header_files = "LibBPush/*.h"
  s.preserve_paths = "LibBPush/*.a"
  s.framework = 'Foundation','CoreTelephony','SystemConfiguration'
  s.libraries = 'z','BPush'
  s.requires_arc = false
  s.xcconfig = { 'LIBRARY_SEARCH_PATHS' => "$(PODS_ROOT)/#{s.name}/LibBPush" }
end
