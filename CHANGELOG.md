## v0.6.0

Changes:

  - Adds `BUNDLE_AUDIT_IGNORE` ENVAR to support ignoring specific CVE's

Documentation:

  - Updated README with `BUNDLE_AUDIT_IGNORE` section

## v0.5.0

Changes:

  - Adds ESLint support with ES6 capabilities and AirBnB rules

Documentation:

  - Updated README with `Application Setup` section for updating and installing the gem
  - Updated README with `Local Developer Setup` section all developers
  - Change README to reference only rake tasks

## v0.4.1
  Bugfixes:

  - Fix boot check

# 0.4.0
 Bugfixes:

 - Fix bash command

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
