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

  unless defined?(Rails)
    namespace :generate do
      desc "Generate Pre-Commit Git Hook"
      task :pre_commit do
        BdLint::Generators.pre_commit
      end

      desc "Generate Linter Source Files"
      task :lint_configs do
        ARGV.shift
        BdLint::Generators.lint_configs(*ARGV)
      end
    end
  end
end
