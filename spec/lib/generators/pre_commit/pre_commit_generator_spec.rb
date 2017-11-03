require "rails_helper"
require "fileutils"
require "rails/generators"
require "generators/pre_commit/pre_commit_generator"

describe PreCommitGenerator do
  let(:destination) { ".git/hooks/pre-commit" }

  describe "#create_source_files" do
    after do
      FileUtils.rm Rails.root.join(destination)
    end

    it "creates all the source files" do
      subject.invoke_all
      file = Dir[Rails.root.join(destination)]
      expect(file).to be_present
    end

    it "opens the permissions of the file so it can be executed by git" do
      subject.invoke_all
      permission = File.stat(Rails.root.join(destination)).mode.to_s(8)[3..5].to_i
      expect(permission).to eq 755
    end
  end
end
