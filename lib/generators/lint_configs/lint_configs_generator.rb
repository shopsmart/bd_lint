class LintConfigsGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)

  def copy_lint_configs
    copy_file ".jscsrc",        ".jscsrc"
    copy_file ".rubocop.yml",   ".rubocop.yml"
    copy_file ".scss-lint.yml", ".scss-lint.yml"
  end
end
