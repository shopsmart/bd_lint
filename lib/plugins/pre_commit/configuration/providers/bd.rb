module PreCommit
  class CanNotUpdateBD < StandardError
  end

  class Configuration
    class Providers
      class Bd
        include PreCommit::Configuration::TopLevel

        SOURCE_FILES_PATH = "../../../../../generators/lint_configs/templates/".freeze

        DEFAULTS =
          {
            checks_remove: [],
            checks_add: %i[debugger pry tabs yaml],
            warnings_remove: [],
            warnings_add: %i[jscs scss_lint rubocop]
          }.freeze

        def self.priority
          1
        end

        def initialize(defaults = nil)
          @config                      = defaults || DEFAULTS.dup
          @config[:"jscs.config"]      = get_config_path(".jscsrc")
          @config[:"rubocop.config"]   = get_config_path(".rubocop.yml")
          @config[:"scss_lint.config"] = get_config_path(".scss-lint.yml")
        end

        def [](name)
          @config[name]
        end

        def update(_name, _value)
          raise PreCommit::CanNotUpdateBD, "Can not update Brad's Deals settings"
        end

        private

        def get_config_path(filename)
          # Custom config in apps root directory
          custom_config_path = File.join(top_level, filename)

          # Return this custom config if it exists
          return custom_config_path if File.exists?(custom_config_path)

          # Return base file if custom one is not located
          File.expand_path(File.join(SOURCE_FILES_PATH, filename), __FILE__)
        end
      end
    end
  end
end
