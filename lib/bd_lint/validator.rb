module BdLint
  class Validator
    GIT_HOOK_PATH = ".git/hooks/pre-commit".freeze

    def self.check
      puts "\n\n\e[31mLocal setup incomplete. Please run `bundle exec #{message}`\e[0m\n\n" if invalid?
    end

    def self.invalid?
      !defined?(Rake) && !File.exist?(GIT_HOOK_PATH)
    end

    def self.message
      defined?(Rails) ? "rails g pre_commit" : "rake bd_lint:generate:pre_commit"
    end
  end
end
