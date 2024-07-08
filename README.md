# RailsBase

This is a template for new Rails projects. It includes several helpful gems and configurations to get you started quickly.

## Setup

1. Clone this repository
2. Delete the `.git` folder
3. Initialize a new git repository: `git init`
4. Rename the project in `config/application.rb`
5. Update `config/database.yml` with your database credentials if needed
6. Run `bundle install`
7. Run `rails db:create db:migrate`

## Docker Setup

This project is configured to run in Docker containers. You can choose which services to include.

### First-time Setup

For the first time setup or when you want to change the included services:

```bash
chmod +x docker-compose-up.sh
./docker-compose-up.sh
```

This script will prompt you to choose which services you want to include (Redis and/or Sidekiq).

### Quick Start

After the initial setup, you can use the quick start script to launch Docker with your saved configuration:

```bash
chmod +x docker-compose-quickstart.sh
./docker-compose-quickstart.sh
```

### Manual Configuration

If you prefer to manually configure your Docker setup or your project requirements have changed:

1. Edit the `docker-compose.yml` file directly to include or exclude services.
2. Launch Docker with:

   ```bash
   docker-compose up
   ```

## Included Gems

- RSpec for testing
- FactoryBot for test data
- Faker for generating fake data
- Rubocop for code style checking
- (list other significant gems here)

## Configuration

- MySQL database
- RSpec test framework
- Tailwind CSS
- Docker setup with optional Redis and Sidekiq

## Usage

Describe here how to use any custom scripts or features you've added to the template.

# Gem Setup and Configuration Instructions

After running `bundle install`, follow these steps to set up and configure the gems:

1. RSpec Rails
   ```
   rails generate rspec:install
   ```
   This will create the necessary configuration files for RSpec.

2. Factory Bot Rails
   Add the following to `spec/rails_helper.rb`:
   ```ruby
   RSpec.configure do |config|
     config.include FactoryBot::Syntax::Methods
   end
   ```

3. Shoulda Matchers
   Add the following to `spec/rails_helper.rb`:
   ```ruby
   Shoulda::Matchers.configure do |config|
     config.integrate do |with|
       with.test_framework :rspec
       with.library :rails
     end
   end
   ```

4. Database Cleaner (if you decide to add it)
   Add the following to `spec/rails_helper.rb`:
   ```ruby
   RSpec.configure do |config|
     config.before(:suite) do
       DatabaseCleaner.strategy = :transaction
       DatabaseCleaner.clean_with(:truncation)
     end

     config.around(:each) do |example|
       DatabaseCleaner.cleaning do
         example.run
       end
     end
   end
   ```

5. Bullet
   Add the following to `config/environments/development.rb`:
   ```ruby
   config.after_initialize do
     Bullet.enable = true
     Bullet.alert = true
     Bullet.bullet_logger = true
     Bullet.console = true
     Bullet.rails_logger = true
     Bullet.add_footer = true
   end
   ```

6. Annotate
   Run the following command to add annotations to your models:
   ```
   rails g annotate:install
   ```

7. Rubocop
   Create a `.rubocop.yml` file in your project root and add your preferred rules.

8. Brakeman
   You can run Brakeman manually with:
   ```
   brakeman
   ```

9. Rails ERD
   To generate your first ERD, run:
   ```
   rake erd
   ```

10. Pry Rails
    No additional setup needed. It will automatically replace IRB in the Rails console.

11. Better Errors
    No additional setup needed for development. It will automatically provide improved error pages.

12. Rack Mini Profiler
    It should work out of the box, but you can customize it by creating an initializer:
    ```ruby
    bundle exec rails g rack_mini_profiler:install
    ```

13. Acts As Paranoid
    No initial setup needed. You can use it in your models like this:
    ```ruby
    class YourModel < ApplicationRecord
      acts_as_paranoid
    end
    ```

Remember to restart your Rails server after making these changes to ensure all new configurations are loaded.
