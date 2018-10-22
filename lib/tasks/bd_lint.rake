require "bd_lint"
require "bd_lint/generators"

namespace :bd_lint do
  desc "Run Lint Checks"
  task :check do
    BdLint.run
  end

  desc "Check RVM dependencies"
  task :rvm_check do
    BdLint::RvmVersion.check
  end

  namespace :setup do
    desc "Install application config files"
    task :app do
      BdLint::Generators.lint_configs
    end

    desc "Setup developer local environment"
    task :local do
      BdLint::Generators.pre_commit
    end
  end
end
