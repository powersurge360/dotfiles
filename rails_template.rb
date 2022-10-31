gem "view_component"
gem "cssbundling-rails"
gem "vite_rails"

gem_group :development, :test  do
  gem "rspec-rails"
  gem "lookbook"
  gem "dotenv-rails"
  gem "factory_bot_rails"
end

gem_group :development do
  gem "rubocop-github", require: false
  gem "solargraph", require: false
  gem "brakeman"
  gem "bundle-audit"
end

environment "config.view_component.generate.preview = true"
environment <<EOL
config.lookbook.preview_display_options = {
    wrapper: true
}
EOL

run "bundle install"

generate "rspec:install"
rails_command "css:install:tailwind"

run "bundle exec vite install"

run "bundle binstubs brakeman"
run "bundle binstubs bundler-audit"

rubocop_config = <<-EOL
inherit_gem:
  rubocop-github:
    - config/default.yml
    - config/rails.yml

Style/FrozenStringLiteralComment:
  SafeAutoCorrect: true

Layout/EmptyLineAfterMagicComment:
  Enabled: true
EOL

create_file ".rubocop.yml", rubocop_config
