require "thor"

class PreCommitGeneratorBasic < Thor::Group
  include Thor::Actions

  DESTINATION = ".git/hooks/pre-commit".freeze

  def self.source_root
    File.expand_path('../templates', __FILE__)
  end

  def copy_pre_commit
    copy_file "pre-commit", DESTINATION
    chmod(DESTINATION, 0755)
  end
end
