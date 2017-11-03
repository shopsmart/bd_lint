require "bd_lint"

namespace :bd_lint do
  desc "Run Lint Checks"
  task :run do
    BdLint.run
  end

  desc "Check RVM dependencies"
  task :rvm_check do
    BdLint::RvmVersion.check
  end
end
