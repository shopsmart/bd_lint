require "rails_helper"
require "bd_lint/audit/cli"
require "bundler/audit/scanner"

describe "bd_lint:check" do
  include_context "rake"

  it "calls the runner" do
    expect(BdLint).to receive(:run)
    subject.invoke
  end
end

describe "bd_lint:rvm_check" do
  include_context "rake"

  it "calls the runner" do
    expect(BdLint::RvmVersion).to receive(:check)
    subject.invoke
  end
end

describe "bd_lint:audit" do
  include_context "rake"

  let(:default_task) { Rake::Task.tasks.find { |t| t.name.eql?("default") } }

  it "calls update" do
    expect_any_instance_of(BdLint::Audit::CLI).to receive(:update)
    subject.invoke
  end

  it "calls the check function" do
    expect_any_instance_of(BdLint::Audit::CLI).to receive(:check)
    subject.invoke
  end

  it "scans Gemfile.lock" do
    expect_any_instance_of(Bundler::Audit::Scanner).to receive(:scan).and_call_original
    subject.invoke
  end

  it "is part of the default rake tasks" do
    expect(default_task.prerequisite_tasks.map(&:name)).to include "bd_lint:audit"
  end

  context "when the DISABLE_BUNDLE_AUDIT is set" do
    before do
      allow(ENV).to receive(:[]).with("DISABLE_BUNDLE_AUDIT").and_return("true")
    end

    after do
      allow(ENV).to receive(:[]).with("DISABLE_BUNDLE_AUDIT").and_return(nil)
    end

    it "skips the audit scan" do
      expect_any_instance_of(Bundler::Audit::Scanner).not_to receive(:scan)
      subject.invoke
    end
  end
end
