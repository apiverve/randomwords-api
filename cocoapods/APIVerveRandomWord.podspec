Pod::Spec.new do |s|
  s.name             = 'APIVerveRandomWord'
  s.version          = '1.2.3'
  s.summary          = 'Random Word is a random word generator API that selects a random English word from the dictionary on each request.'
  s.description      = <<-'DESC'
Random Word is a random word generator API that selects a random English word from the dictionary on each request. Paid plans add dictionary definitions and ARPABET phonetic pronunciation.

This iOS/macOS SDK provides a convenient way to access the Random Word from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/randomwords?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/randomwords-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveRandomWord/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
