source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '>= 5.0.0.rc1', '< 5.1'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use Puma as the app server
gem 'puma', '~> 3.0'
gem 'pg'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5.x'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  gem 'better_errors'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  # Code Review
  gem 'rubocop', require: false
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# For nesded forms
gem 'cocoon', '~> 1.2', '>= 1.2.9'

# Integrate User system - use branch for solve error issue :
# DEPRECATION WARNING: alias_method_chain is deprecated.
gem "devise", :github => 'plataformatec/devise', :branch => 'master'
gem "omniauth"
gem "omniauth-google-oauth2"
gem 'omniauth-facebook'
gem 'uikitrails', '~> 0.1'
gem 'cancancan', '~> 1.14'
gem "figaro"
# Active admin
gem 'activeadmin', github: 'activeadmin'
gem 'rspec-rails', '>= 3.5.0.beta1'
gem 'ransack',    github: 'activerecord-hackery/ransack'
gem 'kaminari',   github: 'amatsuda/kaminari', branch: '0-17-stable'
gem 'formtastic', github: 'justinfrench/formtastic'
gem 'draper',     github: 'audionerd/draper', branch: 'rails5', ref: 'e816e0e587'
# To fix a Draper deprecation error
gem 'activemodel-serializers-xml', github: 'rails/activemodel-serializers-xml'
# Optional -- only if you already include these gems
gem 'rack-mini-profiler',          github: 'MiniProfiler/rack-mini-profiler'
gem 'database_cleaner', '~> 1.5', '>= 1.5.3'
# Only for JRuby:
gem 'activerecord-jdbc-adapter',   github: 'jruby/activerecord-jdbc-adapter', platforms: :jruby
