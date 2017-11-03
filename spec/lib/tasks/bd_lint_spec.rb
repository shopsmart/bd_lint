require "rails_helper"

describe "bd_lint:run" do
  include_context "rake"

  it 'calls the runner' do
    expect(BdLint).to receive(:run)
    subject.invoke
  end
end

describe "bd_lint:rvm_check" do
  include_context "rake"

  it 'calls the runner' do
    expect(BdLint::RvmVersion).to receive(:check)
    subject.invoke
  end
end
