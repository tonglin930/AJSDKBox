#
# Be sure to run `pod lib lint AJSDKBox.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AJSDKBox'
  s.version          = '0.1.0'
  s.summary          = 'A short description of AJSDKBox.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'ssh://git@gitlab.263nt.com:2200/italkbbspecs/ajsdkbox.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'keithmorning' => 'xiaofeng.xi@net263.com' }
  s.source           = { :git => 'ssh://git@gitlab.263nt.com:2200/italkbbspecs/ajsdkbox.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  
  s.default_subspec = 'AJSDKBox'
  
#  s.subspec 'AJSDKInterface' do |ss|
#    ss.source_files = 'AJSDKInterface/Classes/**/*'
#  end

  s.subspec 'AJSDKBox' do |ss|
    ss.source_files = 'AJSDKBox/Classes/**/*'
#    ss.dependency 'AJSDKBox/AJSDKInterface'
  end
  
#  s.subspec 'AJEZVIZ' do |ss|
#    ss.source_files = 'AJEZVIZ/Classes/**/*'
#    ss.dependency 'AJSDKBox/AJSDKBox'
#  end
#  
#  s.subspec 'AJTuya' do |ss|
#    ss.source_files = 'AJTuya/Classes/**/*'
#    ss.dependency 'AJSDKBox/AJSDKBox'
#  end
#  
  
  
  # s.resource_bundles = {
  #   'AJSDKBox' => ['AJSDKBox/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
