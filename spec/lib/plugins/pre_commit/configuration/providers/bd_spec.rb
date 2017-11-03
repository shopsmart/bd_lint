require "rails_helper"
require "plugins/pre_commit/configuration/providers/bd"

describe PreCommit::Configuration::Providers::Bd do
  it "knows about the linter source files" do
    expect(described_class::SOURCE_FILES_PATH).to be_present
  end

  it "knows about the linter source files" do
    expect(described_class::SOURCE_FILES_PATH).to be_present
  end

  it "has a low priority number so it appears at the top of the list of providers" do
    expect(described_class.priority).to eq 1
  end

  it "includes the defaults in the instance configuration" do
    expect(subject.instance_variable_get(:@config)).to include(described_class::DEFAULTS)
  end

  describe "config paths" do
    let(:config) { subject.instance_variable_get(:@config) }
    let(:relative_path) { "bd_lint/lib/generators/source_files/templates" }

    describe "jscsrc" do
      it 'returns the gems config if one is not found in the apps root' do
        expect(config[:"jscs.config"]).to include relative_path
      end

      context "when custom config exists in the app root" do
        it 'includes a path to a jscs config' do
          allow(File).to receive(:exists?).and_return true
          expect(config[:"jscs.config"]).to eq(File.join(subject.top_level, ".jscsrc"))
        end
      end
    end

    describe "rubocop" do
      it 'returns the gems config if one is not found in the apps root' do
        expect(config[:"rubocop.config"]).to include relative_path
      end

      context "when custom config exists in the app root" do
        it 'includes a path to a rubocop config' do
          allow(File).to receive(:exists?).and_return true
          expect(config[:"rubocop.config"]).to eq(File.join(subject.top_level, ".rubocop.yml"))
        end
      end
    end

    describe "scss_lint" do
      it 'returns the gems config if one is not found in the apps root' do
        expect(config[:"scss_lint.config"]).to include relative_path
      end

      context "when custom config exists in the app root" do
        it 'includes a path to a scss_lint config' do
          allow(File).to receive(:exists?).and_return true
          expect(config[:"scss_lint.config"]).to eq(File.join(subject.top_level, ".scss-lint.yml"))
        end
      end
    end
  end
end
