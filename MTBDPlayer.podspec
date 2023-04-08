#
# Be sure to run `pod lib lint MTBDPlayer.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MTBDPlayer'
  s.version          = '0.1.0'
  s.summary          = 'A short description of MTBDPlayer.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = "go go go MTBDPlayer"

  s.homepage         = 'https://github.com/hippiefox/MTBDPlayer'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'HippieFox' => 'foxhippie5@gmail.com' }
  s.source           = { :git => 'https://github.com/hippiefox/MTBDPlayer.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  s.public_header_files = 'MTBDPlayer/Classes/**/*.h'
  s.ios.deployment_target = '13.0'
  s.swift_version = '5.0'

  s.source_files = 'MTBDPlayer/Classes/**/*'
  
  s.subspec 'Player' do |pp|
      pp.source_files = 'MTBDPlayer/Classes/Player/*'
      pp.dependency 'SnapKit'
      pp.dependency 'BaiduBCEPlayerFull', "~> 3.5.0"
      pp.dependency 'SJUIKit/SQLite3'
      pp.dependency 'SJMediaCacheServer'
      pp.dependency 'MTPower/Widgets'
      pp.dependency 'MTPower/Basic'
      pp.dependency 'MTPower/Extensions'
      pp.dependency 'MTPower/HUD'
      pp.dependency 'MTPower/Algorithm'
      pp.dependency 'MTPower/Device'
      
  end
  # 需要兼容x86结构
  s.static_framework = true
  
end
