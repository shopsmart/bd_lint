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

Or install it yourself as:
```bash
$ gem install bd_lint
```

Install Pre-commit Hooks
```bash
$ rails g pre_commit
```

## Rake Tasks

If you wish to run checks without commiting you can run the following
```bash
$ rake bd_lint:rvm_check
```

The command ensures checks will run on RMV
```bash
$ rake bd_lint:rvm_check
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
