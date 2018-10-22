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

  s.add_dependency "brakeman"
  s.add_dependency "bundler-audit"
  s.add_dependency "execjs"
  s.add_dependency "pre-commit"
  s.add_dependency "rubocop"
  s.add_dependency "rubocop-rspec"
  s.add_dependency "scss_lint"
  s.add_dependency "thor"

  s.add_development_dependency "rake"

  s.post_install_message = %q{
    For all developers
    Please see https://github.com/shopsmart/bd_lint#local-developer-setup
    for a complete list of steps to get your local environment setup

    If you are installing/updating this gem
    Please see https://github.com/shopsmart/bd_lint#application-setup

    For details on this specific release, refer to the CHANGELOG file.
}
end
