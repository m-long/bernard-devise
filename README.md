# Bernard 2.0, built on Devise
- By Matt Long


## Overview

A newer version of the Bernard IoT HomeOS built using Devise and other more common gems for streamlining user management and other processes. This will also look into combing the Alexa custom skills and the Alexa SmartHome API into one app for smoother integration into the home, as well as looking at add in Google Home Support

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
- Finish custom templates for scaffolds
- Configure gems:
-- devise (in progress, need to define user model more thoroughly to finish)
-- cancancan (also needs user and other models well defined)
-- rubocop
--- populate .rubocop.yml in root directory with additional preferences
-- brakeman
- Figure out rest of todo's and update this
