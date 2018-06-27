#
# Be sure to run `pod lib lint Liquid.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Liquid'
  s.version          = '0.1.0'
  s.summary          = 'A short description of Liquid.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/mbalex99/Liquid'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'mbalex99' => 'mbalex99@gmail.com' }
  s.source           = { :git => 'https://github.com/mbalex99/Liquid.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'Liquid/Classes/**/*'
  
  # s.resource_bundles = {
  #   'Liquid' => ['Liquid/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'ObjectiveRocks'
  shared_ios_xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'ROCKSDB_LITE=1 IOS_CROSS_COMPILE=1 NROCKSDB_THREAD_STATUS=1' }
  s.ios.pod_target_xcconfig = shared_ios_xcconfig
  s.ios.user_target_xcconfig = shared_ios_xcconfig
end
