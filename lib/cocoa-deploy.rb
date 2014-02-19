require 'cocoa/deploy/config'
require 'cocoa/deploy/test_flight'
require_relative 'cocoa/deploy/archive'

class CocoaDeploy

  def self.launch(env)
    configuration = Cocoa::Deploy::Config.configure
    if configuration && data = configuration[env]
      puts Cocoa::Deploy::Archive.genrate_archive(data)
      Cocoa::Deploy::TestFlight.upload(configuration["test_flight"])
    end
  end

end