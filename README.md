# BdLint
Short description and motivation.

## Usage
How to use my plugin.

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

Add this line to the top of you `Rakefile` to expose rake tasks
```ruby
require "bd_lint/rake_tasks"
```

### Generate Pre-commit Hooks (IMPORTANT!)

Ruby on Rails
```bash
$ rails g pre_commit
```

Rack or Sinatra
```bash
$ rake bd_lint:generate:pre_commit
```

### Generate Lint Config Files

Ruby on Rails
```bash
$ rails g lint_configs
```

Rack or Sinatra
```bash
$ rake bd_lint:generate:lint_configs
```

## IMPORTANT! Re-generate lint files each time the gem is upgraded

Or install it yourself as:
```bash
$ gem install bd_lint
```

## Running linter without commiting staged changes

If you wish to run checks without commiting you can run the following
```bash
$ rake bd_lint:run
```

The command ensures checks will run on RMV
```bash
$ rake bd_lint:rvm_check
```

## Contributing
If you wish to contribute create a separate branch and submit a pull request to the master branch.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
