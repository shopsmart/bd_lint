## v0.3.0

Changes:

  - Changed `Style/BlockLength` to `Metrics`
  - Added CHANGELOG.md
  - Added post install message for gem for developers and gem maintainers

Bugfixes:

  - Fix issue running `rails g pre_commit`. Changed validation class to post a warning rather than raise an error
  - Fix issue with VCR cassettes being flagged by linter. All spec .yml files are now ignored

Documentation:

  - Updated README with `Application Setup` section for updating and installing the gem
  - Updated README with `Local Developer Setup` section all developers
  - Change README to reference only rake tasks