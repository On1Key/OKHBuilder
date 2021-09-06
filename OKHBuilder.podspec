#
# Be sure to run `pod lib lint OKHBuilder.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'OKHBuilder'
  s.version          = '0.2.0'
  s.summary          = 'A pod for ios uni-app'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/On1Key/OKHBuilder'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'on1key' => 'on1key@foxmail.com' }
  s.source           = { :git => 'https://github.com/On1Key/OKHBuilder.git', :tag => s.version.to_s }

  s.platform     = :ios
  s.ios.deployment_target = '9.0'
  
  s.source_files = 'OKHBuilder/Classes/**/*'
  
  s.resources  = "OKHBuilder/Resources/Bundles/*","*.{md,podspec}"
  
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  
  s.default_subspecs = ['Base', 'Third', 'Tool']

  s.subspec 'Base' do |plugin|
    plugin.vendored_libraries = "OKHBuilder/Libraries/Base/*.{a}"
    plugin.frameworks = [
      'CoreText',
      'JavaScriptCore',
      'WebKit',
      'CoreTelephony',
      'MobileCoreServices',
      'SystemConfiguration',
      'MediaPlayer',
      'AudioToolbox',
      'QuartzCore',
      'CFNetwork',
      'Foundation',
      'CoreFoundation',
      'CoreGraphics',
      'UIKit',
      'AVFoundation',
      'AssetsLibrary',
      'AddressBook',
      'CoreLocation',
      'QuickLook',
      'UserNotifications']
    plugin.libraries = 'c++'
  end
  
  s.subspec 'Tool' do |plugin|
    plugin.vendored_libraries = "OKHBuilder/Libraries/Tool/*.{a}"
    plugin.vendored_frameworks = "OKHBuilder/Frameworks/Tool/*.{framework}"
    plugin.frameworks = ['CoreMedia', 'CoreVideo', 'CoreMotion', 'CoreLocation']
    plugin.libraries = 'sqlite3.0'
    plugin.dependency 'OKHBuilder/Base'
  end
  
  s.subspec 'Third' do |plugin|
    plugin.vendored_libraries = "OKHBuilder/Libraries/Third/*.{a}"
    plugin.libraries = 'xml2'
    plugin.dependency 'OKHBuilder/Base'
    plugin.dependency 'OKHBuilder/Tool'
  end

  s.subspec 'Audio' do |plugin|
    plugin.vendored_libraries = "OKHBuilder/Libraries/Audio/*.{a}"
    plugin.frameworks = ['AVFoundation']
    plugin.dependency 'OKHBuilder/Base'
    plugin.dependency 'OKHBuilder/Tool'
  end

  s.subspec 'Location' do |plugin|
    plugin.vendored_libraries = "OKHBuilder/Libraries/Location/*.{a}"
    plugin.frameworks = ['CoreLocation', 'CoreBluetooth']
    plugin.dependency 'OKHBuilder/Base'
    plugin.dependency 'OKHBuilder/Tool'
  end

  s.subspec 'Camera' do |plugin|
    plugin.vendored_libraries = "OKHBuilder/Libraries/Camera/*.{a}"
    plugin.frameworks = [
      'Accelerate',
      'AssetsLibrary',
      'Photos',
      'CoreMedia',
      'MetalKit',
      'GLKit']
    plugin.dependency 'OKHBuilder/Base'
    plugin.dependency 'OKHBuilder/Tool'
  end
  
  s.subspec 'Barcode' do |plugin|
    plugin.vendored_libraries = "OKHBuilder/Libraries/Barcode/*.{a}"
    plugin.frameworks = [
      'AVFoundation',
      'ImageIO',
      'CoreVideo',
      'CoreMedia']
    plugin.libraries = 'iconv.2'
    plugin.dependency 'OKHBuilder/Base'
    plugin.dependency 'OKHBuilder/Tool'
    plugin.dependency 'OKHBuilder/Third'
  end
  
end
