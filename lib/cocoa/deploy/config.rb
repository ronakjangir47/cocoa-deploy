require 'yaml'
require 'psych'

module Cocoa
  module Deploy
    class Config

      CONFIG_OPTIONS = [:team_id]
      PATH_TO_CONFIG_FILE = "cocoa_deploy.yml"

      def self.configure
        begin
          config = YAML::load(IO.read(PATH_TO_CONFIG_FILE))
        rescue Errno::ENOENT
          puts(:error, "YAML configuration file couldn't be found"); return
        rescue Psych::SyntaxError
          puts(:error, "YAML configuration file contains invalid syntax."); return
        end
        config
      end

    end
  end
end