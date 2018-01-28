Pod::Spec.new do |s|

s.name         = "FMMapkit"
s.version      = "2.0.42"
s.summary      = "FMMapkit"
s.description  = <<-DESC
FMMapkit,thank for you use it.
DESC
s.homepage     = "https://www.fengmap.com/develop-ios-guide.html"
# s.screenshots = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"

s.license      = "MIT"
s.license      = { :type => "MIT", :file => "LICENSE" }
s.author             = { "ChinaBaozi" => "chinabaozi@yeah.net" }
s.platform     = :ios

s.source       = { :git => "https://github.com/ChinaBaozi/FMMapKit_inroad.git", :tag => "2.0.42" }
s.source_files   = "Classes", "YPTreeView/Classes/*.{h,m}"
#s.exclude_files = "Classes/Exclude"
s.public_header_files = "Classes/FMMapKit.h"

s.resource     = "Classes/Resources/FMBundle.bundle"
s.requires_arc = true


end
