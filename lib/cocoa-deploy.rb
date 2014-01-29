require './cocoa/deploy/config'
require './cocoa/deploy/test_flight'

class CocoaDeploy

  def self.hi
    Cocoa::Deploy::Config.configure
  end

end