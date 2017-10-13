require "fileutils"

namespace :dev do
  desc "Install all dev dependencies"
  task prime: :environment do
    if Rails.env.development?
      # FileUtils.ln_s Dir.glob('bin/*.rb'), Rails.root, force: true
      # DO SOMETHING
    end
  end
end
