def natively_supports_docker?
  docker_supported_version = Gem::Version.new("7.1")
  this_rails_version = Gem::Version.new(Rails.version) 

  this_rails_version > docker_supported_version
end

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
  gem "dockerfile-rails" unless natively_supports_docker?
end

environment "config.view_component.generate.preview = true"
environment <<EOL,
config.lookbook.preview_display_options = {
    wrapper: true
}
EOL
  env: "development"

run "bundle install"

generate "rspec:install"

run "bundle binstubs brakeman"
run "bundle binstubs bundler-audit"
run "bundle binstubs rubocop"
run "bundle binstubs rspec-core"

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

esbuild_config = <<-EOL
{
  "compilerOptions": {
    "paths": {
      "components/*": ["./app/components/*"]
    }
  },
  "include": []
}
EOL

create_file "tsconfig.json", esbuild_config

generate "dockerfile"
