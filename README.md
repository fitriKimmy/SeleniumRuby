# Selenium with Ruby
This project based on linked in course: [LearningSelenium](https://www.linkedin.com/learning/learning-selenium/welcome?u=2082620) by Meaghan lewis.

It's about creating web automation test using Selenium Webdriver and Ruby programming language

## Tools instalation
- Ruby
- [Rspec](https://rubygems.org/gems/rspec/versions/3.7.0)
- [Selenium Webdriver](https://rubygems.org/gems/selenium-webdriver)
- [Geckodriver](https://github.com/mozilla/geckodriver/releases)
- Mozila firefox

### Gemfile
Or you can add rspec and selenum webdriver instalation to your gemfile
```
source "https://rubygems.org"
gem 'selenium-webdriver', '~> 3.142', '>= 3.142.7'
gem 'rspec', '~> 3.7'
```

run gemfile by executing this command
```
bundle install
```

### Run Test
Go to test folder executing this command
```
rspec <filename.rb>
```