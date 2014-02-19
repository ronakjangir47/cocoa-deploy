Gem::Specification.new do |s|
  s.name            = 'cocoa-deploy'
  s.version         = "0.0.1"
  s.date            = '2013-01-29'
  s.summary         = %q{CocoaDeploy manages your releases and deploys them on GitHub and TestFlight}
  s.authors         = ["Ronak Jangir"]
  s.email           = 'ronakjangir47@gmail.com'
  s.files           = ["lib/cocoa-deploy.rb","lib/cocoa/deploy/test_flight.rb","lib/cocoa/deploy/config.rb","lib/cocoa/deploy/archive.rb"]
  s.require_paths   = ["lib"]
  s.executables     = ["icap"]
  s.homepage        = 'http://rubygems.org/gems/cocoa-deploy'
  s.license         = 'MIT'
end