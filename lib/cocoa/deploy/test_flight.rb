require 'json'
module Cocoa
  module Deploy
    class TestFlight

      BASE_URL = "http://testflightapp.com/api/builds.json"

      # TestFlight Response
      # {
      #   "bundle_version": "3.1.0 (3.1.0)",
      #   "install_url": "https://testflightapp.com/install/7cc45c45b2bcb3ca733d73ce109d4af4-OTMyMDc0Nw/",
      #   "config_url": "https://testflightapp.com/dashboard/builds/permissions/9320747/",
      #   "created_at": "2014-02-07 07:55:03",
      #   "device_family": "Universal",
      #   "notify": false,
      #   "team": "Cocoa-Deploy",
      #   "minimum_os_version": "5.0",
      #   "release_notes": "sdfsdfsdfd",
      #   "binary_size": 133080
      # }

      def self.upload(config={})
        file = "YLProgressBarSample.ipa"
        response = `curl -X POST -F file=@#{file} -F api_token=#{config["api_token"]} -F team_token=#{config["team_token"]} -F notes='sdfsdfsdfd' #{BASE_URL}`
        parse_response(response)
      end

      def self.parse_response(response)
        begin
          parsed_response = JSON.parse(response)
          if parsed_response.is_a?(Hash) && parsed_response.has_key?("bundle_version")
            true
          else
            raised_error
          end
        rescue Exception => e
          raised_error
        end
      end

      def self.raised_error
        puts "Error while uploading to TestFlight"
        false
      end

    end
  end
end