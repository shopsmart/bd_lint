module BdLint
  class Railtie < Rails::Railtie
    rake_tasks do
      load 'tasks/bd_lint.rake'
    end
  end
end
