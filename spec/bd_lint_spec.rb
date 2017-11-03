require "rails_helper"

describe BdLint do
  it "has a version number" do
    expect(BdLint::VERSION).not_to be nil
  end

  it 'runs precommit' do
    expect(PreCommit).to receive(:run)
    described_class.run
  end
end
