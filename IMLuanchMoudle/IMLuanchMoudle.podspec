#
# Be sure to run `pod lib lint IMLuanchMoudle.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'IMLuanchMoudle'
  s.version          = '0.1.0'
  s.summary          = 'A short description of IMLuanchMoudle.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/alvin/IMLuanchMoudle'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'alvin' => '674268015@qq.com' }
  s.source           = { :git => 'https://github.com/alvin/IMLuanchMoudle.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'IMLuanchMoudle/Classes/**/*'
  
  s.resource = "IMLuanchMoudle/Assets/IMLuanchMoudle.bundle"
#  s.resource_bundle = { 'IMLuanchMoudle' => ['IMLuanchMoudle/resource_bundle/*.png'] }
  s.static_framework  =  true
  
  s.dependency 'IMBeeHive'
  s.dependency 'IMDynamicMoudle'
  s.dependency 'IMChatMoudle'
  s.dependency 'IMHomeMoudle'
  s.dependency 'IMMineMoudle'
end
