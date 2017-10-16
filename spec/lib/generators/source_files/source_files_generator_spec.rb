require "rails_helper"
require "fileutils"
require "rails/generators"
require "generators/source_files/source_files_generator"

describe SourceFilesGenerator do
  let(:source_files) { %w[.jscsrc .rubocop.yml .scss-lint.yml] }

  describe "#create_source_files" do
    after do
      source_files.map do |sf|
        FileUtils.rm Rails.root.join(sf)
      end
    end

    it "creates all the source files" do
      subject.invoke_all

      files      = Dir[Rails.root.join(".*")]
      file_names = files.map{ |f| f.split("/").pop }

      expect(file_names).to include(*source_files)
    end
  end
end
