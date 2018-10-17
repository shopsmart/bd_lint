## v0.3.0

Changes:

  - Changed `Style/BlockLength` to `Metrics`
  - Added CHANGELOG.md
  - Added post install message for gem
  - Updated readme with `Setup` section

Bugfixes:
  - Fix issue running `rails g pre_commit`. Changed validation class to post a warning rather than raise an error
  - Fix issue with VCR cassettes being flagged by linter. All spec .yml files are now ignored

Documentation:

  - Updated README with `Setup` section
