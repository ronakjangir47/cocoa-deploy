module Cocoa
  module Deploy
    class Archive

      def self.genrate_archive(configuration={})
        clean_workspace(configuration["workspace"],configuration["scheme"])
      end

      private
        def self.clean_workspace(workspace,scheme)
          if system("xctool -workspace #{workspace} -scheme #{scheme} clean")
            return system("xctool -workspace #{workspace} -scheme #{scheme} archive")
          else
            return false
          end
        end

    end
  end
end