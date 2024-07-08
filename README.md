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
