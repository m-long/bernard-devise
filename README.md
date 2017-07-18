# Rails Application Templte
- By Matt Long


## Overview

An application framework for projects moving forward, using commons gems rather than a custom user authentication system. If you have any suggestions for improvement, feel free to contact me at m@mattlong.la


## Included gems

### General Gems
- bootstrap (version 4)
-- sprockets-rails version check
-- jquery-rails
-- autoprefixer-rails
-- font-awesome-rails
- passenger
- bcrypt
- meta-tags (for SEO)

### User Management
- Devise
- CanCanCan

### Testing
- RSpec
- FactoryGirl
- Capybara
- Selenium

### Code Cleanliness
- RuboCop
-- mry (for updating RuboCop)
- Brakeman

## ToDo
- Finish custom templates for generators
- Configure gems:
-- devise (in progress, need to define user model to finish)
-- cancancan (also needs user and other models defined)
-- rubocop
--- populate .rubocop.yml in root directory with additional preferences
-- brakeman
- Figure out rest of todo's and update this
