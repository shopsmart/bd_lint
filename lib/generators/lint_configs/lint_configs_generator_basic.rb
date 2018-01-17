require "thor"

class LintConfigsGeneratorBasic < Thor::Group
  include Thor::Actions

  def self.source_root
    File.expand_path('../templates', __FILE__)
  end

  def copy_lint_configs
    copy_file ".jscsrc",        ".jscsrc"
    copy_file ".rubocop.yml",   ".rubocop.yml"
    copy_file ".scss-lint.yml", ".scss-lint.yml"
  end
end
