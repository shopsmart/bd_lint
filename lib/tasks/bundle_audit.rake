begin
  require "bundler/audit/task"
  Bundler::Audit::Task.new

  task default: "bundle:audit"
rescue LoadError
  puts "Bundle Audit Gem not loaded. Nothing to do"
end
