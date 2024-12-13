template "~/dotfiles/rails.tmuxp.yaml.tt", "~/.tmuxp/#{@app_name}.yaml"

gem_group :development, :test do
  gem 'rspec-rails', git: "https://github.com/rspec/rspec-rails"
  gem 'factory_bot_rails'
end

after_bundle do
  generate 'rspec:install'
  run 'bundle binstubs rspec-core'
end
