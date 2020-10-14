$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "bd_lint/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "bd_lint"
  s.version     = BdLint::VERSION
  s.authors     = ["Dev Team"]
  s.email       = ["dev@bradsdeals.com"]
  s.homepage    = "https://www.bradsdeals.com"
  s.summary     = "Adds essentials to Ruby apps"
  s.description = "BdLint adds linters, and other gems"
  s.license     = "MIT"

  s.files = Dir["{app,config,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "brakeman", "~> 4"
  s.add_dependency "bundler-audit", "~> 0.7"
  s.add_dependency "execjs"
  s.add_dependency "fasterer", "~> 0.6"
  s.add_dependency "rubocop", "~> 0.93.1"
  s.add_dependency "rubocop-rspec", "~> 1.43"
  s.add_dependency "scss_lint", "0.59.0"
  s.add_dependency "thor"

  s.add_development_dependency "rake"
  s.add_development_dependency "rails"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "sprockets"

  s.post_install_message = %q{
    For all developers
    Please see https://github.com/shopsmart/bd_lint#local-developer-setup
    for a complete list of steps to get your local environment setup

    If you are installing/updating this gem
    Please see https://github.com/shopsmart/bd_lint#application-setup

    For details on this specific release, refer to the CHANGELOG file.
}
end
