# Bernard 2.0, built on Devise
- By Matt Long


## Overview

A newer version of the Bernard IoT HomeOS built using Devise and other more common gems for streamlining user management and other processes. This will also look into combing the Alexa custom skills and the Alexa SmartHome API into one app for smoother integration into the home, as well as looking at add in Google Home Support

## Included gems

### General Gems
- bootstrap (version 4)
  - sprockets-rails version check
  - jquery-rails
  - autoprefixer-rails
  - font-awesome-rails
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
  - mry (for updating RuboCop)
- Brakeman

## ToDo
- Add in complete Remote attributes validations in db and model
- Add in user/admin authentication (CanCanCan configuration)
- Configure FactoryGirl seeds/test data
- Add in MQTT support
- Add in controllers for Alexa Voice Services API
  - Add in models for skills
  - Create separate controllers for Custom skill and SmartHome API
- Finish custom templates for generators
- Finish custom templates for scaffolds
- Configure & implement gems:
  - cancancan
  - rubocop
    - populate .rubocop.yml in root directory with additional preferences
  - brakeman
- Tests, tests, tests, tests, tests!
  - So far been the opposite of TDD, need to rectify that and then some
- Beautify site
- Probably more things I forgot
