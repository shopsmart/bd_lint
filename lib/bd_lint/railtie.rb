module BdLint
  class Railtie < Rails::Railtie
    rake_tasks do
      load 'tasks/bd_lint.rake'
      load 'tasks/bundle_audit.rake'
    end
  end
end
