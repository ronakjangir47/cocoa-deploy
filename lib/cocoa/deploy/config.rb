require 'yaml'
require 'psych'

module Cocoa
  module Deploy
    class Config

      PATH_TO_CONFIG_FILE = "/cocoa_deploy.yml"

      def self.configure
        begin
          config = load_file
        rescue Errno::ENOENT
          puts(:error, "YAML configuration file couldn't be found"); return
        rescue Psych::SyntaxError
          puts(:error, "YAML configuration file contains invalid syntax."); return
        end
        config
      end

      private

        def self.load_file
          YAML::load(IO.read(Dir.pwd + PATH_TO_CONFIG_FILE))
        end

    end
  end
end