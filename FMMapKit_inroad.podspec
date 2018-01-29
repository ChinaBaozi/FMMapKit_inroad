Pod::Spec.new do |s|

s.name         = "FMMapKit_inroad"
s.version      = "2.0.50"
s.summary      = "FMMapkit.蜂鸟iOSSDK"
s.description  = <<-DESC
FMMapkit,thank for you use it.
完全和官方SDK一致
DESC

s.homepage     = "https://www.fengmap.com/develop-ios-guide.html"
s.license      = { :type => "MIT", :file => "LICENSE" }
s.author             = { "ChinaBaozi" => "chinabaozi@yeah.net" }
s.platform     = :ios
s.source       = { :git => "https://github.com/ChinaBaozi/FMMapKit_inroad.git", :tag => s.version.to_s}

s.ios.deployment_target = '8.0'
s.source_files   = 'Classes/*.{h,m,mm}'
s.public_header_files = "Classes/*.h"
s.vendored_libraries = 'Classes/libFMMapKit.a'
s.resource     = "Classes/Resources/FMBundle.bundle"
s.frameworks = 'GLKit', 'CoreGraphics','OpenGLES','Security'
s.libraries = 'z'
s.requires_arc = true
s.xcconfig = {
'CLANG_CXX_LANGUAGE_STANDARD' => 'gnu++0x',
'CLANG_CXX_LIBRARY' => 'libstdc++'
}
s.pod_target_xcconfig = {
'OTHER_LDFLAGS' => '-ObjC'
}

end

