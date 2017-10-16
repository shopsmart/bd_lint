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
end
