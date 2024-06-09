### Gems set up ###

# gem "view_component"
# gem "turbo-rails"

gem_group :development, :test  do
  gem "rspec-rails"
  # gem "lookbook"
  gem "factory_bot_rails"
end

gem_group :development do
  gem "solargraph", require: false
  gem "solargraph-rails", require: false
end

### Lookbook set up ###

# environment "config.view_component.generate.preview = true"
# environment <<RUBY,
# config.lookbook.preview_display_options = {
#     wrapper: true
# }
# RUBY
#   env: "development"
#
# lookbook_route = <<-RUBY
#
#   # Mount the lookbook engine
#
#   if Rails.env.development?
#     mount Lookbook::Engine, at: "/lookbook"
#   end
# RUBY
#
# insert_into_file "config/routes.rb", lookbook_route, before: "end"

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

# run "yarn add alpinejs"

# application_js = <<-EOL
# import Alpine from 'alpinejs';

# window.Alpine = Alpine;

# Alpine.start();
# EOL


# Needs to be in the after bundle to make sure all dependencies are captured, unfortunately
after_bundle do
  # generate "dockerfile --yjit"
  generate "rspec:install"
  # generate "bullet:install"
  # rails_command "turbo:install"

  # insert_into_file "app/javascript/application.js", application_js

  ### Binstubs set up ###

  # run "bundle binstubs brakeman"
  # run "bundle binstubs bundler-audit"
  # run "bundle binstubs rubocop"
  run "bundle binstubs rspec-core"
  #
  # run "rubocop -A ."
end
