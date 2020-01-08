#
# Be sure to run `pod lib lint ZZMakeWiFiManager.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ZZMakeWiFiManager'
  s.version          = '1.0.0'
  s.summary          = '利用WIFI电脑给手机传文件.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  利用WIFI电脑给手机传文件，只需2行代码
                       DESC

  s.homepage         = 'https://github.com/UserZhangXiaoZhe/ZZMakeWiFiManager'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'UserZhangXiaoZhe' => 'zaihuishou223@163.com' }
  s.source           = { :git => 'https://github.com/UserZhangXiaoZhe/ZZMakeWiFiManager.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'ZZMakeWiFiManager/Classes/**/*'
  
  # s.resource_bundles = {
  #   'ZZMakeWiFiManager' => ['ZZMakeWiFiManager/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
   s.dependency 'CocoaAsyncSocket'
end
