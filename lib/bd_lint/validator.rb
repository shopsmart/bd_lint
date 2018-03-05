module BdLint
  class Validator
    GIT_HOOK_PATH = ".git/hooks/pre-commit".freeze

    class GitHookError < StandardError; end

    def self.check
      raise GitHookError, "Please run `bundle exec rake bd_lint:generate:pre_commit`" if invalid?
    end

    def self.invalid?
      !defined?(Rake) && !File.exist?(GIT_HOOK_PATH)
    end
  end
end
