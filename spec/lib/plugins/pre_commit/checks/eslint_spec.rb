require "rails_helper"
require "plugins/pre_commit/configuration/providers/bd"

describe PreCommit::Checks::Eslint do
  let(:pluginator) { PreCommit.pluginator }
  let(:configuration) { PreCommit::Configuration.new(pluginator) }
  subject { PreCommit::Checks::Eslint.new(pluginator, configuration, []) }

  it "it looks for a .eslintrc.js file" do
    expect(subject.alternate_config_file).to eq '.eslintrc.js'
  end

  describe "#app_source" do
    it "doesn't look for eslint in the repo unless there is a node_modules/.bin dir" do
      expect(Find).not_to receive(:find).with(subject.node_modules_bin)
      subject.app_source
    end

    it 'finds the path to the eslint binary if node_modules are installed' do
      allow(File).to receive(:directory?).and_return true
      expect(Find).to receive(:find).with(subject.node_modules_bin)
      subject.app_source
    end
  end

  describe "#sys_source" do
    it "checks if the binary is available in the system path" do
      expect(MakeMakefile).to receive(:find_executable)
      subject.sys_source
    end
  end

  describe "#call" do
    it "reutrns a error message if eslint is not installed" do
      allow(subject).to receive(:eslint_source)
      expect(subject.call([])).to eq("ESLint executable could not be located")
    end
  end

  describe "#config_file_flag" do
    it 'returns an emtpy array if there is no config file' do
      allow(subject).to receive(:config_file)
      expect(subject.config_file_flag).to be_empty
    end

    it 'returns -c and the config file if one is found' do
      expect(subject.config_file_flag).to include "-c"
    end
  end
end
