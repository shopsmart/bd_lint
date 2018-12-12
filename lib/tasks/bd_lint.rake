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

  begin
    require "bd_lint/audit/cli"

    desc "Audit Application For Security Vulnerabilities"
    task :audit do
      %w(update check).each do |command|
        BdLint::Audit::CLI.start [command]
      end
    end
  rescue LoadError
    puts "Bundle Audit Gem not loaded. Nothing to do"
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

# Make audit a default task if defined
task default: "bd_lint:audit" if Rake::Task.task_defined?("bd_lint:audit")
