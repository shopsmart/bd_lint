require "bundler/audit/cli"
require "bundler/audit/scanner"

module BdLint
  module Audit
    class CLI < Bundler::Audit::CLI
      DISABLED_WARNING = [
        "WARNING! Bundle Audit is disabled",
        "Please remove `DISABLE_BUNDLE_AUDIT` from the repositories environment variables once the build has completed"
      ].freeze

      def check
        if ENV["DISABLE_BUNDLE_AUDIT"]
          DISABLED_WARNING.each { |msg| say msg, :yellow }
          return
        end

        super
      end
    end
  end
end
