[![Maintainability](https://api.codeclimate.com/v1/badges/765a8008543a6d0293df/maintainability)](https://codeclimate.com/github/shopsmart/bd_lint/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/765a8008543a6d0293df/test_coverage)](https://codeclimate.com/github/shopsmart/bd_lint/test_coverage)
[![Build Status](https://travis-ci.org/shopsmart/bd_lint.svg?branch=master)](https://travis-ci.org/shopsmart/bd_lint)

# BdLint
This is a developer tool designed to provide a consistant format for the Brad's Deals code base. It also adds checks for common issues like leaving debugging declarations in the code.The linter cover the following.

- Javascript ES5* (ES6 Coming Soon)
- JSON
- Ruby & Ruby on Rails
- SCSS & CSS
- YAML

## Installation
Add this line to your application's Gemfile:

```ruby
group :development do
  gem 'bd_lint'
end
```

And then execute:
```bash
$ bundle
```

## Application Setup
Add this snippet to the apps `./Rakefile` **If the app is NOT rails**
```ruby
begin
  require "bd_lint/rake_tasks"
rescue LoadError
  puts "BD Lint Not Loaded"
end
```

Install/Update bd lint config:
```bash
$ bundle exec rake bd_lint:setup:app
```

## Local Developer Setup
Install pre-commit on your local copy of the application
```bash
$ bundle exec rake bd_lint:setup:local
```

## Bundle Audit Issues
If you are trying to merge or push a change out and temporarily ignore bundle audit, you can disable it by performing the following steps.

1. Vist your Travis builds Repository
2. Click `More options` / `Settings`
3. Go to the `Environment Variables` section
4. Add `DISABLE_BUNDLE_AUDIT` with a value of `true`
5. Re-run your travis build
6. After your build completes successfully remove the variable from Travis

#### Note
If you are merging a pull requests and deploying to staging wait until after your code is deployed before removing the variable from Travis.

## Additional Commands

#### Evaluate Changes Manually
If you wish to run checks without commiting you can run the following
```bash
$ bundle exec rake bd_lint:check
```

#### If you are using RVM and your install is not working
The command ensures checks will run on RMV
```bash
$ bundle exec rake bd_lint:rvm_check
```

Check an application for known security vulnerabilities in its Gems by running the following
```bash
$ bundle exec rake bd_lint:audit
```

## Contributing
If you wish to contribute create a separate branch and submit a pull request to the master branch.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
