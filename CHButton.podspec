#
#  Be sure to run `pod spec lint CHButton.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

   s.name         = "CHButton"
    s.version      = "1.1"
    s.ios.deployment_target = '7.0'
    s.summary      = "A delightful setting interface framework."
    s.homepage     = "https://github.com/ChanggnahC/CHButton"
    s.license              = { :type => "MIT", :file => "LICENSE" }
    s.author             = { "chang" => "465162663@qq.com" }
    s.social_media_url   = "https://www.jianshu.com/u/230f674988cc"
    s.source       = { :git => "https://github.com/ChanggnahC/CHButton.git", :tag => 1.1 }
    s.source_files  = "CHButton/CHButton.{h,m}"
 #   s.resources          = "CHButton/CHButton/CHButton.bundle"
    s.requires_arc = true


  end
