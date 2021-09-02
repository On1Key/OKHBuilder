#
# Be sure to run `pod lib lint OKHBuilder.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'OKHBuilder'
  s.version          = '0.1.0'
  s.summary          = 'A pod for ios uni-app'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/On1Key/OKHBuilder'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'on1key' => 'on1key@foxmail.com' }
  s.source           = { :git => 'https://github.com/On1Key/OKHBuilder.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios
  s.ios.deployment_target = '9.0'
  
  #  s.static_framework = true
  s.source_files = 'OKHBuilder/Classes/**/*'
  
  s.resources  = "OKHBuilder/Resources/Bundles/*","*.{md,podspec}"
#   s.resource_bundles = {
#     'OKHBuilder' => ["OKHBuilder/Resources/Bundles/*", "*.{md,podspec}"]
#   }
#  s.public_header_files = 'Pod/Classes/**/*.h'
  
  s.vendored_libraries = "OKHBuilder/Libraries/**/*.{a}"
  s.vendored_frameworks = "OKHBuilder/Frameworks/**/*.{framework}"
  s.frameworks = 'CoreText', 'JavaScriptCore', 'WebKit', 'CoreTelephony', 'MobileCoreServices', 'SystemConfiguration', 'MediaPlayer', 'AudioToolbox', 'QuartzCore', 'CFNetwork', 'Foundation', 'CoreFoundation', 'CoreGraphics', 'UIKit', 'AVFoundation', 'AssetsLibrary', 'AddressBook', 'CoreLocation', 'UserNotifications', 'ImageIO', 'CoreVideo', 'CoreMedia', 'CoreLocation', 'CoreBluetooth', 'Photos', 'MetalKit', 'GLKit', 'QuickLook'
  s.libraries = 'c++', 'iconv.2', 'xml2', 'sqlite3.0'
  
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  
#  s.default_subspecs = ['Base', 'Third', 'Tool']
#
#
#  s.subspec 'Base' do |plugin|
#    plugin.vendored_libraries = "OKHBuilder/Libraries/Base/*.{a}"
#    plugin.frameworks = [
#      'CoreText',
#      'JavaScriptCore',
#      'WebKit',
#      'CoreTelephony',
#      'MobileCoreServices',
#      'SystemConfiguration',
#      'MediaPlayer',
#      'AudioToolbox',
#      'QuartzCore',
#      'CFNetwork',
#      'Foundation',
#      'CoreFoundation',
#      'CoreGraphics',
#      'UIKit',
#      'AVFoundation',
#      'AssetsLibrary',
#      'AddressBook',
#      'CoreLocation',
#      'UserNotifications']
#      plugin.libraries = 'c++'
#  end
#
#  s.subspec 'Audio' do |plugin|
#    plugin.vendored_libraries = "OKHBuilder/Libraries/Audio/*.{a}"
#    plugin.frameworks = ['AVFoundation']
#    plugin.dependency 'OKHBuilder/Base'
#  end
#
#  s.subspec 'Barcode' do |plugin|
#    plugin.vendored_libraries = "OKHBuilder/Libraries/Barcode/*.{a}"
#    plugin.frameworks = [
#      'AVFoundation',
#      'ImageIO',
#      'CoreVideo',
#      'CoreMedia']
#    plugin.libraries = 'iconv.2'
#    plugin.dependency 'OKHBuilder/Base'
#  end
#
#  s.subspec 'Location' do |plugin|
#    plugin.vendored_libraries = "OKHBuilder/Libraries/Location/*.{a}"
#    plugin.frameworks = ['CoreLocation', 'CoreBluetooth']
#    plugin.dependency 'OKHBuilder/Base'
#  end
#
#  s.subspec 'Camera' do |plugin|
#    plugin.vendored_libraries = "OKHBuilder/Libraries/Camera/*.{a}"
#    plugin.frameworks = [
#      'AssetsLibrary',
#      'Photos',
#      'CoreMedia',
#      'MetalKit',
#      'GLKit']
#    plugin.dependency 'OKHBuilder/Base'
#  end
#
#  s.subspec 'Third' do |plugin|
#    plugin.vendored_libraries = "OKHBuilder/Libraries/Third/*.{a}"
#    plugin.frameworks = ['UIKit', 'Foundation', 'QuickLook']
#    plugin.libraries = 'xml2'
#    plugin.dependency 'OKHBuilder/Base'
#  end
#
#  s.subspec 'Tool' do |plugin|
#    plugin.vendored_libraries = "OKHBuilder/Libraries/Tool/*.{a}"
#    plugin.vendored_frameworks = "OKHBuilder/Frameworks/Tool/*.{framework}"
#    plugin.frameworks = ['UIKit', 'Foundation', 'CoreLocation']
#    plugin.libraries = 'sqlite3.0'
#    plugin.dependency 'OKHBuilder/Base'
#  end
end
