#
# Be sure to run `pod lib lint SFBaseUI.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SFBaseUI'
  s.version          = '0.1.3'
  s.summary          = 'SwiftStoryboard for shanghai jianlian BaseUIKit'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
SFBaseUI 是一个基础 UI 组件库，提供了许多常用的 UI 组件和工具函数，帮助快速构建 iOS 应用。
                       DESC

  s.homepage         = 'https://github.com/gaozijian55555/SFBaseUI'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'gaozijian55555' => '448916193@qq.com' }
  s.source           = { :git => 'https://github.com/gaozijian55555/SFBaseUI.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '11.0'
  
  s.swift_versions = ['5.0'] # 指定 Swift 版本
  
  s.source_files = 'SFBaseUI/Classes/**/*'
  
  # s.resource_bundles = {
  #   'SFBaseUI' => ['SFBaseUI/Assets/*.png']
  # }
  
  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
   s.dependency 'SnapKit', '5.6.0'
   
end
