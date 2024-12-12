gem_group :development, :test do
  gem 'rspec-rails'
  gem 'factory_bot_rails'
end

# Needs to be in the after bundle to make sure all dependencies are captured, unfortunately
after_bundle do
  generate 'rspec:install'
  run 'bundle binstubs rspec-core'
end
