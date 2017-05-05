source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.0'
gem 'puma', '~> 3.0'
gem 'uglifier', '>= 1.3.0'
gem 'therubyracer', platforms: :ruby
gem 'jquery-rails'
gem 'turbolinks', '~> 5'

# model
gem 'redis', '~> 3.0'
gem 'mysql2'

# view
gem 'webpacker'
gem 'coffee-rails', '~> 4.2'
gem 'sass-rails', '~> 5.0'
gem 'jbuilder', '~> 2.5'
gem 'slim-rails'

# constant
gem 'dotenv-rails'
gem 'config'

group :staging, :production do
  gem 'unicorn'
end

group :test do
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'database_cleaner'
  gem 'timecop'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri

  # pry
  gem 'pry-rails'
  gem 'pry-byebug'
  gem 'pry-doc'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  # Deploy
  gem 'capistrano', '~> 3.1'
  gem 'capistrano-rails', '~> 1.1'
  gem 'capistrano-bundler', '~> 1.1.2'
  gem 'capistrano-rbenv', '~> 2.0'
  gem 'capistrano3-unicorn'

  gem 'capybara', '~> 2.13.0'
  gem 'selenium-webdriver'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
