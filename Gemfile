source "https://rubygems.org"

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

group :development, :test do
  gem "rails", require: false
  gem "rspec-rails", require: false
  gem "simplecov", require: false, group: :test
end

group :development do
  gem "brakeman", require: false
  gem "bundler-audit", require: false
  gem "execjs"
  gem "pre-commit"
  # gem "pry-rails", require: false
  # gem "rspec-rails", require: false
  gem "pry"
  gem "rspec"
  gem "rubocop"
  gem "rubocop-rspec"
  gem "scss_lint"
  gem "thor"
end
