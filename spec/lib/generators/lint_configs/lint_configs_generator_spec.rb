require "rails_helper"
require "fileutils"
require "rails/generators"
require "generators/lint_configs/lint_configs_generator"

describe LintConfigsGenerator do
  let(:lint_configs) { %w[.jscsrc .rubocop.yml .scss-lint.yml] }

  describe "#copy_lint_configs" do
    after do
      lint_configs.map do |sf|
        FileUtils.rm Rails.root.join(sf)
      end
    end

    it "creates all the source files" do
      subject.invoke_all

      files      = Dir[Rails.root.join(".*")]
      file_names = files.map{ |f| f.split("/").pop }

      expect(file_names).to include(*lint_configs)
    end
  end
end
