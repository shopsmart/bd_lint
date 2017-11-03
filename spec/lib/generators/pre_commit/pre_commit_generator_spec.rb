require "rails_helper"
require "fileutils"
require "rails/generators"
require "generators/pre_commit/pre_commit_generator"

describe PreCommitGenerator do
  let(:destination) { ".git/hooks/pre-commit" }

  describe "#create_source_files" do
    after do
      FileUtils.rm Rails.root.join(".git/hooks/pre-commit")
    end

    it "creates all the source files" do
      subject.invoke_all
      file = Dir[Rails.root.join(".git/hooks/pre-commit")]
      expect(file).to be_present
    end
  end
end
