#
# Be sure to run `pod lib lint DDLicenseViewController.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "DDLicenseViewController"
  s.version          = "0.3.0"
  s.summary          = "A library to list and show licenses uses in your app."
  s.description      = <<-DESC
                       Every responsible app developer should list out the licenses used in their app.  This library makes it easy to display those licenses. 
                       DESC
  s.homepage         = "https://github.com/dougdiego/DDLicenseViewController"
  s.screenshots      = "https://raw.githubusercontent.com/dougdiego/DDLicenseViewController/master/Assets/DDLicenseViewControllerDemo.gif"
  s.license          = 'MIT'
  s.author           = { "dougdiego" => "dougdiego@gmail.com" }
  s.source           = { :git => "https://github.com/dougdiego/DDLicenseViewController.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/dougdiego'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes'
  s.resource_bundles = {
    'DDLicenseViewController' => ['Pod/Assets/*.png']
  }

end
