source "https://yoomee:wLjuGMTu30AvxVyIrq3datc73LVUkvo@gems.yoomee.com"
source 'http://rubygems.org'

gem 'rails', '3.1.10'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'mysql2'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', "  ~> 3.1.0"
  gem 'coffee-rails', "~> 3.1.0"
  gem 'uglifier'
end

gem 'jquery-rails'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :test do
  # Pretty printed test output
  gem 'turn', :require => false
end
gem "rake", "0.8.7"
gem 'exception_notification', "2.6.1", git:'git://github.com/alanjds/exception_notification.git'
gem "country-select"
gem "formtastic-bootstrap", :git => "git://github.com/cgunther/formtastic-bootstrap.git", :branch => "bootstrap-2"
gem "whenever", :require => false
gem "ym_core" #, :path => "~/Rails/Gems/ym_core"
gem "ym_cms"
gem "ym_users"
gem "ym_permalinks"
gem 'ym_enquiries'
gem 'ym_search'


group :development do
  gem 'growl'
  gem 'mailcatcher'
  gem 'letter_opener'
  gem 'ruby-debug19'
  gem 'ym_tools'
  gem 'passenger'
end
group :development, :test do
  gem 'rspec-rails'
end
group :test do
  gem 'factory_girl_rails'
  gem 'shoulda-matchers'
  gem 'capybara'
  gem 'guard-rspec'
  gem 'sqlite3'
end
