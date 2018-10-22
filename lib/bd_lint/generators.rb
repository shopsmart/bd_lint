require "generators/lint_configs/lint_configs_generator_basic"
require "generators/pre_commit/pre_commit_generator_basic"

module BdLint
  class Generators
    def self.pre_commit
      generator = PreCommitGeneratorBasic.new
      generator.invoke_all
    end

    def self.lint_configs
      generator = LintConfigsGeneratorBasic.new
      generator.invoke_all
    end
  end
end
