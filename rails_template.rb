gem "view_component"
gem "cssbundling-rails"
gem "vite_rails"

gem_group :development, :test  do
  gem "rspec-rails"
  gem "lookbook"
end

gem_group :development do
  gem "rubocop-shopify", require: false
  gem "solargraph", require: false
end

environment do
  "config.view_component.generate.preview = true"
end

run "bundle install"

generate "rspec:install"
rails_command "css:install:tailwind"

run "bundle exec vite install"

rubocop_config = <<-EOL
inherit_gem:
  rubocop-shopify: rubocop.yml
EOL

create_file '.rubocop.yml', rubocop_config
