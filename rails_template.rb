gem "view_component"
gem "lookbook"
gem "cssbundling-rails"
gem "vite_rails"

gem_group :development, :test  do
  gem "rspec-rails"
end

gem_group :development do
  gem "rubocop-shopify", require: false
  gem "solargraph", require: false
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
