#
# Be sure to run `pod lib lint FastCheckout.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'FastCheckout'
  s.version          = '0.1.0-alpha.2'
  s.summary          = 'The Fast Checkout iOS SDK'

  s.description      = <<-DESC
  The Fast Checkout iOS SDK.
                       DESC

  s.homepage         = 'https://fast.co'
  s.license          = { :type => 'Commercial', :file => 'LICENSE' }
  s.author           = { 'Fast' => 'support@fast.co' }
  s.source           = { :http => "https://github.com/fast-af/fast-ios-sdk/releases/download/#{s.version}/FastCheckout.xcframework.zip" }
  s.social_media_url = 'https://twitter.com/fast'

  s.ios.deployment_target = '12.0'

  s.vendored_frameworks = 'FastCheckout.xcframework'
end
