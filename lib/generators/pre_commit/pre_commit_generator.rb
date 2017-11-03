class PreCommitGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)

  DESTINATION = ".git/hooks/pre-commit".freeze

  def copy_pre_commit
    copy_file "pre-commit", DESTINATION
    chmod(DESTINATION, 0755)
  end
end
