### Gems set up ###

gem "view_component"
gem "turbo-rails"

gem_group :development, :test  do
  gem "rspec-rails"
  gem "lookbook"
  gem "factory_bot_rails"
end

gem_group :development do
  gem "rubocop-github", require: false
  gem "solargraph", require: false
  gem "brakeman"
  gem "bundle-audit"
end

### Lookbook set up ###

environment "config.view_component.generate.preview = true"
environment <<EOL,
config.lookbook.preview_display_options = {
    wrapper: true
}
EOL
  env: "development"

lookbook_route = <<-EOL

  # Mount the lookbook engine

  if Rails.env.development?
    mount Lookbook::Engine, at: "/lookbook"
  end
EOL

insert_into_file "config/routes.rb", lookbook_route, before: "end"

### Lint set up ###

rubocop_config = <<-EOL
inherit_gem:
  rubocop-github:
    - config/default.yml
    - config/rails.yml

AllCops:
  NewCops: disable

Style/FrozenStringLiteralComment:
  SafeAutoCorrect: true

Layout/EmptyLineAfterMagicComment:
  Enabled: true
EOL

create_file ".rubocop.yml", rubocop_config

### Javascript set up ###

# Problems with the manifest make this a little tedious to use
# esbuild_config = <<-EOL
# {
#   "compilerOptions": {
#     "paths": {
#       "components/*": ["./app/components/*"]
#     }
#   },
#   "include": []
# }
# EOL

# create_file "tsconfig.json", esbuild_config

run "yarn add alpinejs"

application_js = <<-EOL
import Alpine from 'alpinejs';

window.Alpine = Alpine;

Alpine.start();
EOL


# Needs to be in the after bundle to make sure all dependencies are captured, unfortunately
after_bundle do
  generate "dockerfile --yjit"
  generate "rspec:install"
  rails_command "turbo:install"

  insert_into_file "app/javascript/application.js", application_js

  ### Binstubs set up ###

  run "bundle binstubs brakeman"
  run "bundle binstubs bundler-audit"
  run "bundle binstubs rubocop"
  run "bundle binstubs rspec-core"

  run "rubocop -A ."
end
