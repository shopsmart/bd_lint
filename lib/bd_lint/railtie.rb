require "bd_lint"
require "rails"

module BdLint
  class Railtie < Rails::Railtie
    railtie_name :bd_lint

    rake_tasks do
      path = File.expand_path(__dir__)
      Dir.glob("#{path}/../tasks/**/*.rake").each { |f| load f }
    end
  end
end
