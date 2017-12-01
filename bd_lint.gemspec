$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "bd_lint/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "bd_lint"
  s.version     = BdLint::VERSION
  s.authors     = ["Eric Agnew"]
  s.email       = ["eric@bradsdeals.com"]
  s.homepage    = "https://www.bradsdeals.com"
  s.summary     = "Adds essentials to rails apps"
  s.description = "BdLint adds linters, and other gems"
  s.license     = "MIT"

  s.files = Dir["{app,config,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", ">= 4.2.0"

  s.add_dependency "brakeman"
  s.add_dependency "bundler-audit"
  s.add_dependency "pre-commit"
  s.add_dependency "rubocop"
  s.add_dependency "rubocop-rspec"
  s.add_dependency "scss_lint"

  s.add_development_dependency "rake"
  s.add_development_dependency "rspec-rails"
end
