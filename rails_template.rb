gem "view_component"

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

run "bundle binstubs brakeman"
run "bundle binstubs bundler-audit"
run "bundle binstubs rubocop"

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

# Run rubocop against default files to start off with everything fixed
run "rubocop -A ."
