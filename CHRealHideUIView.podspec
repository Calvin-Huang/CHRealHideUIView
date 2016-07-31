#
#  Be sure to run `pod spec lint CHRealHideUIView.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.name         = "CHRealHideUIView"
  s.version      = "1.0.0"
  s.summary      = "CHRealHideUIView hide view not only make view invisible but also eliminate hidden view's blank."

  s.description  = <<-DESC
When hidding the view, we expect the hidden view will not leave blank space.
For example there are two views =>  :dog::smile::cat:, hide :smile: should be :dog::cat:␣ , however in iOS will be :dog:␣:cat:.
Even view don't draw, auto layout will retain their frame.
CHRealHideUIView help you hide views and will not leave blank space.
                    DESC

  s.homepage     = "https://blog.capslock.tw/"
  s.screenshots  = "https://raw.githubusercontent.com/Calvin-Huang/CHRealHideUIView/master/assets/CHRealHideUIView.gif"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.license      = "MIT"


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.author             = { "Calvin" => "calvin.peak@capslock.tw" }

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  # s.platform     = :ios
  # s.platform     = :ios, "5.0"

  s.ios.deployment_target = "8.0"
  # s.osx.deployment_target = "10.9"
  # s.watchos.deployment_target = "2.0"
  # s.tvos.deployment_target = "9.0"


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.source       = { :git => "https://github.com/Calvin-Huang/CHRealHideUIView.git", :tag => s.version.to_s }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.source_files  = "CHRealHideUIView/Extensions/UIView+AdditionDataExtension.swift", 
                    "CHRealHideUIView/Extensions/UIViewController+RealHideViewExtension.swift"


  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  # s.resource  = "icon.png"
  # s.resources = "Resources/*.png"

  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  # s.framework  = "SomeFramework"
  # s.frameworks = "SomeFramework", "AnotherFramework"

  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"

end
