source 'https://rubygems.org'

# Declare your gem's dependencies in bd_lint.gemspec.
# Bundler will treat runtime dependencies like base dependencies, and
# development dependencies will be added by default to the :development group.
gemspec

# Declare any dependencies that are still in development here instead of in
# your gemspec. These might include edge Rails or gems from your path or
# Git. Remember to move these dependencies to your gemspec before releasing
# your gem to rubygems.org.

# To use a debugger
# gem 'byebug', group: [:development, :test]

group :development do
  gem "pre-commit", require: false
  gem "pre-commit-jscs", github: "shopsmart/pre-commit-jscs", tag: "v1.0.5", require: false
  gem "rspec-rails", require: false
  gem "rubocop", require: false
  gem "scss_lint", require: false
  gem "pry-rails", require: false
end
