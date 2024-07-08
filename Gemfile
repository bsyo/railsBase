source 'https://rubygems.org'

ruby '3.3.1'

# Rails and core gems
gem 'acts_as_paranoid'                  # Soft delete records
gem 'bootsnap', require: false          # Reduces boot times through caching
gem 'importmap-rails'                   # Use JavaScript with ESM import maps
gem 'jbuilder'                          # Build JSON APIs with ease
gem 'mysql2', '~> 0.5'                  # MySQL database adapter
gem 'puma', '>= 5.0'                    # Web server for Rails
gem 'rails', '~> 7.1.3'                 # Full-stack web application framework
gem 'sprockets-rails'                   # Asset pipeline for Rails
gem 'stimulus-rails'                    # Hotwire's modest JavaScript framework
gem 'tailwindcss-rails'                 # Integrates Tailwind CSS with Rails asset pipeline
gem 'turbo-rails'                       # Hotwire's SPA-like page accelerator
gem 'tzinfo-data', platforms: %i[mswin mswin64 mingw x64_mingw jruby] # Timezone data for Windows

# Uncomment these if needed
# gem "redis", ">= 4.0.1"               # Redis adapter for Action Cable
# gem "kredis"                          # Higher-level data types in Redis
# gem "bcrypt", "~> 3.1.7"              # Use Active Model has_secure_password
# gem "image_processing", "~> 1.2"      # Use Active Storage variants

group :development do
  gem 'annotate' # Add schema information to model files
  gem 'better_errors' # Provides better error pages
  gem 'binding_of_caller' # Retrieve the binding of a method's caller in Better Errors
  gem 'brakeman' # Static analysis security vulnerability scanner
  gem 'bullet' # Help to kill N+1 queries and unused eager loading
  gem 'error_highlight', '>= 0.4.0', platforms: [:ruby] # Highlight syntax errors
  gem 'memory_profiler' # Memory profiling for Ruby
  gem 'pry-rails' # Use Pry as your rails console
  gem 'rack-mini-profiler', require: false # Profiling information for your Rails app
  gem 'rails-erd' # Generate Entity-Relationship Diagrams
  gem 'rubocop', require: false # Ruby static code analyzer and formatter
  gem 'rubocop-rails', require: false # Rails-specific RuboCop cops
  gem 'web-console' # Access an IRB console on exception pages or by using <%= console %> anywhere

  # Uncomment if needed
  # gem "spring"                        # Rails application preloader
  # gem "rack-mini-profiler"            # Performance information on your Rails pages
end

group :development, :test do
  gem 'debug', platforms: %i[mri mswin mswin64 mingw x64_mingw] # Debugging functionality
  gem 'factory_bot_rails'               # A library for setting up Ruby objects as test data
  gem 'faker'                           # A library for generating fake data
end

group :test do
  gem 'capybara'                        # Integration testing tool for web applications
  gem 'rspec-rails'                     # RSpec testing framework for Rails
  gem 'shoulda-matchers'                # Collection of testing matchers
  gem 'webdrivers'                      # Run Selenium tests more easily
end
