require './cocoa/deploy/config'
require './cocoa/deploy/test_flight'

class CocoaDeploy

  def self.launch
    @configuration = Cocoa::Deploy::Config.configure
    Cocoa::Deploy::TestFlight.upload(@configuration["staging"]["test_flight"])
  end

end

CocoaDeploy.launch