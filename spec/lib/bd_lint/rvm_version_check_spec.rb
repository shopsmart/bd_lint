require "rails_helper"

describe BdLint::RvmVersionCheck do
  describe "#check" do
    it "checks the rvm" do
      expect(MakeMakefile).to receive(:find_executable).with("rvm")
      described_class.check
    end
  end
end
