require "rails_helper"

describe "dev:prime" do
  include_context "rake"

  it "loads the environments" do
    expect(subject.prerequisites).to include("environment")
  end

  context "not development" do
    it "does nothing" do
      expect(FileUtils).not_to receive(:ln_s)
    end
  end

  context "development" do
    before :each do
      allow(Rails.env).to receive(:development?).and_return true
    end

    it "installs symlinks for all the dot files into the apps directory" do
      subject.invoke

      files      = Dir[Rails.root.join(".*")]
      file_names = files.map{ |f| f.split("/").pop }

      expect(file_names).to include(".jscsrc", ".rubocop", ".scss-lint", ".rspec")
    end
  end
end
