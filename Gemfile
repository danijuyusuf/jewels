source "https://rubygems.org"

gem "rails", ">= 5.0.0.beta3", "< 5.1"
gem "puma"
gem "sass-rails", "~> 5.0"
gem "uglifier", ">= 1.3.0"
gem "coffee-rails", "~> 4.1.0"
gem "bootstrap-sass", "~> 3.3.6"
gem "jquery-rails"
gem "turbolinks", "~> 5.x"
gem "jbuilder", "~> 2.0"
gem "font-awesome-rails"
gem "animate-rails"
gem "jquery-easing-rails"
gem "fittextjs_rails"
gem "wow-rails"
gem "bcrypt"
gem "coveralls", require: false

group :development, :test do
  %w[rspec-core rspec-expectations rspec-mocks rspec-rails rspec-support].
    each do |lib|
    gem lib, git: "https://github.com/rspec/#{lib}.git", branch: "master"
  end
  gem "factory_girl_rails"
  gem "faker"
  gem "sqlite3"
  gem "byebug"
  gem "pry"
  gem "pry-nav"
end

group :development do
  gem "web-console", "~> 3.0"
  gem "listen", "~> 3.0.5"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end

group :production do
  gem "pg"
end

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
