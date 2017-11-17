require "bd_lint/railtie" if defined?(Rails)
require "bd_lint/rvm_version"
require "pre-commit"
require "plugins/pre_commit/checks/jscs"

module BdLint
  RvmVersion.check

  def self.run
    PreCommit.run
  end
end
