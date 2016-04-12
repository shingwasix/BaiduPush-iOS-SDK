Pod::Spec.new do |s|
	s.name         = "BPushSDK"
	s.version      = "1.4.4"
	s.license      = 'LICENSE ©2015 Baidu, Inc. All rights reserved'
	s.summary      = "Baidu Push SDK for iOS."
	s.homepage     = "http://push.baidu.com/doc/ios/api"
	s.documentation_url = "http://push.baidu.com/doc/ios/api"
	s.author       = { "Shingwa Six" => "http://github.com/shingwasix" }
	s.platform     = :ios, "5.1"
	s.source       = { :git => "https://github.com/shingwasix/BaiduPush-iOS-SDK.git", :tag => s.version.to_s }
	s.framework = 'Foundation','CoreTelephony','SystemConfiguration'
	s.libraries = 'z'
	s.requires_arc = false
    s.default_subspecs    = 'normal'
  
	s.subspec 'normal' do |sp|
		sp.source_files = "Official-Sources/normalversion/*.h"
		sp.public_header_files = "Official-Sources/normalversion/*.h"
		sp.vendored_libraries = "Official-Sources/normalversion/*.a"
		sp.framework = 'Foundation','CoreTelephony','SystemConfiguration'
		sp.libraries = 'z'
	end
  
	s.subspec 'idfa' do |sp|
		sp.source_files = "Official-Sources/idfaversion/*.h"
		sp.public_header_files = "Official-Sources/idfaversion/*.h"
		sp.vendored_libraries = "Official-Sources/idfaversion/*.a"
		sp.framework = 'Foundation','CoreTelephony','SystemConfiguration'
		sp.libraries = 'z'
	end
end
