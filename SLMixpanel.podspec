Pod::Spec.new do |s|
  s.name         = "SLMixpanel"
  s.version      = "3.0.3"
  s.summary      = "iPhone tracking library for Mixpanel Analytics"
  s.homepage     = "https://github.com/senselabs/mixpanel-iphone"
  s.license      = 'Apache License, Version 2.0'
  s.author       = { "Mixpanel, Inc" => "support@mixpanel.com" }
  s.platform     = :ios, '6.0'
  s.source       = { :git => "https://github.com/senselabs/mixpanel-iphone.git", :tag => "v#{s.version}" }
  s.source_files  = 'Mixpanel/**/*.{m,h}'
  s.private_header_files =  'Mixpanel/Library/**/*.h'
  s.resources 	 = ["Mixpanel/**/*.{png,storyboard}"]
  s.frameworks = 'UIKit', 'Foundation', 'SystemConfiguration', 'CoreTelephony', 'Accelerate', 'CoreGraphics', 'QuartzCore'
  s.libraries = "icucore"
  s.requires_arc = true
end
