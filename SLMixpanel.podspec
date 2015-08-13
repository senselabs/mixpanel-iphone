Pod::Spec.new do |s|
  s.name         = 'SLMixpanel'
  s.version      = '3.2.5'
  s.summary      = 'iPhone tracking library for Mixpanel Analytics'
  s.homepage     = 'https://github.com/senselabs/mixpanel-iphone'
  s.license      = 'Apache License, Version 2.0'
  s.author       = { 'Mixpanel, Inc' => 'support@mixpanel.com' }
  s.platform     = :ios, '6.0'
  s.source       = { :git => 'git@github.com:senselabs/mixpanel-iphone.git', :tag => "v#{s.version}" }
  s.requires_arc = true
  s.default_subspec = 'SLMixpanel'

  s.subspec 'SLMixpanel' do |ss|
    ss.source_files  = 'Mixpanel/**/*.{m,h}'
    ss.resources 	 = ['Mixpanel/**/*.{png,storyboard}']
    ss.frameworks = 'UIKit', 'Foundation', 'SystemConfiguration', 'CoreTelephony', 'Accelerate', 'CoreGraphics', 'QuartzCore'
    ss.libraries = 'icucore'
  end

  s.subspec 'AppExtension' do |ss|
    ss.source_files  = ['Mixpanel/Mixpanel.{m,h}', 'Mixpanel/MPLogger.h', 'Mixpanel/NSData+MPBase64.{m,h}' ]
    ss.xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) MIXPANEL_APP_EXTENSION'}
    ss.frameworks = 'UIKit', 'Foundation', 'SystemConfiguration', 'CoreTelephony', 'Accelerate', 'CoreGraphics', 'QuartzCore'
    ss.libraries = 'icucore'
  end
end
