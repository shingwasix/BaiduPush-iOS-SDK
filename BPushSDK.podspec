Pod::Spec.new do |s|
  s.name         = 'BPushSDK'
  s.version      = '1.4.8'
  s.summary      = 'Baidu Push SDK for iOS.'
  s.homepage     = 'https://github.com/shingwasix/BaiduPush-iOS-SDK'
  s.license      = { :type => 'Copyright', :text => 'LICENSE ©2015-2017 Baidu, Inc. All rights reserved' }
  s.author       = { 'Shingwa Six' => 'https://github.com/shingwasix' }
  s.source       = { :http => 'http://boscdn.bpc.baidu.com/channelpush/sdk/BPush-SDK-iOS-1.4.8.zip', :sha1 => 'ce0c7ccffb48c801e4214ac60e48880ceeb5ed52' }
  
  s.ios.deployment_target = '5.1'
  s.frameworks = 'Foundation','CoreTelephony','SystemConfiguration'
  s.libraries = 'z'
  s.requires_arc = false
  s.default_subspecs = 'normal'
  
  s.subspec 'normal' do |sp|
    sp.source_files = 'BPush-SDK-iOS-1.4.8/normalversion/*.h'
    sp.public_header_files = 'BPush-SDK-iOS-1.4.8/normalversion/*.h'
    sp.vendored_libraries = 'BPush-SDK-iOS-1.4.8/normalversion/*.a'
    sp.frameworks = 'Foundation','CoreTelephony','SystemConfiguration'
    sp.libraries = 'z'
  end
  
  s.subspec 'idfa' do |sp|
    sp.source_files = 'BPush-SDK-iOS-1.4.8/idfaversion/*.h'
    sp.public_header_files = 'BPush-SDK-iOS-1.4.8/idfaversion/*.h'
    sp.vendored_libraries = 'BPush-SDK-iOS-1.4.8/idfaversion/*.a'
    sp.frameworks = 'Foundation','CoreTelephony','SystemConfiguration'
    sp.libraries = 'z'
  end
end
