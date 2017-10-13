require "pre-commit/cli" if Rails.env.development?
require "fileutils"
require "mkmf"

namespace :dev do
  desc "Install all dev dependencies"
  task prime: :environment do
    if Rails.env.development?
      # Install pre-commit git hook into your local git directory
      unless File.exist?(".git/hooks/pre-commit")
        puts "Installing pre-commit hooks"
        PreCommit::Cli.new("install").execute

        # Load Custom Pre-Commit Script
        example_file = File.read(File.join(Rails.root, "lib", "tasks", "pre-commit.example-copy"))

        # Overwrite Pre-Commit with version that supports SourceTree
        File.write(File.join(Rails.root, ".git", "hooks", "pre-commit"), example_file)
      end

      # If rvm is installed override ruby to leverage the following command in this repo.cop
      # This will give pre-commit access to all the installed gems via bundler.
      # Note: Running this more than once is ok
      PreCommitCommand.check

      # Install all node modules
      system("npm install")

      # Copy example files over
      Dir.glob(File.join(Rails.root, "**", "*.example")).each do |example|
        dest = example.sub(/.example$/, "")

        unless File.exist?(dest)
          puts "Copied `#{example}` to `#{dest}`"
          FileUtils.cp(example, dest)
        end
      end
    end
  end
end
