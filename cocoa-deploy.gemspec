Gem::Specification.new do |s|
  s.name        = 'cocoa-deploy'
  s.version     = "0.0.0"
  s.date        = '2013-01-29'
  s.summary     = %q{CocoaDeploy manage your releases and deploys them on GitHub and TestFlight}
  s.authors     = ["Ronak Jangir"]
  s.email       = 'ronakjangir47@gmail.com'
  s.files         = `git ls-files`.split($/)
  s.require_paths = ["lib"]
  s.executables = ["icap"]
  s.homepage    =
    'http://rubygems.org/gems/cocoa-deploy'
  s.license       = 'MIT'
end