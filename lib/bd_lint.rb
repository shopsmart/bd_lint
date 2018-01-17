require "bd_lint/rvm_version"
require "pre-commit"
require "plugins/pre_commit/checks/jscs"

module BdLint
  def self.run
    RvmVersion.check
    PreCommit.run
  end
end
