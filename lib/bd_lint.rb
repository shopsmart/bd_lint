require "bd_lint/rvm_version"
require "bd_lint/validator"
require "pre-commit"
require "plugins/pre_commit/checks/jscs"

# Run this on application initialization
BdLint::Validator.check
BdLint::RvmVersion.check

module BdLint
  def self.run
    PreCommit.run
  end
end
