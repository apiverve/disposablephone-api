Pod::Spec.new do |s|
  s.name             = 'APIVerveDisposablePhoneNumberChecker'
  s.version          = '1.2.3'
  s.summary          = 'Disposable Phone Number Checker is a phone fraud API that flags temporary, burner and virtual phone numbers published on SMS-receiving...'
  s.description      = <<-'DESC'
Disposable Phone Number Checker is a phone fraud API that flags temporary, burner and virtual phone numbers published on SMS-receiving sites. Pass a number in E.164 format to check whether it is disposable and see the date it was first seen on those lists.

This iOS/macOS SDK provides a convenient way to access the Disposable Phone Number Checker from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/disposablephone?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/disposablephone-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveDisposablePhoneNumberChecker/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
