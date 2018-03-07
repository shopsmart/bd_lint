module BdLint
  class Validator
    GIT_HOOK_PATH = ".git/hooks/pre-commit".freeze

    class GitHookError < StandardError; end

    def self.check
      raise GitHookError, "Please run `bundle exec #{message}`" if invalid?
    end

    def self.invalid?
      !defined?(Rake) && !File.exist?(GIT_HOOK_PATH)
    end

    def self.message
      defined?(Rails) ? "rails g pre_commit" : "rake bd_lint:generate:pre_commit"
    end
  end
end
