# Rails React Bootstrap

Example application


## System Dependencies

* Ruby [2.7.4](https://www.ruby-lang.org/en/downloads/releases/)
* Ruby on Rails [6.1.4.1](https://rubygems.org/gems/rails/versions)
* PostgreSQL [13.1](https://www.postgresql.org/support/versioning/)
* React [17.0.2](https://reactjs.org/versions/) (yarn)
* Stimulus [2.0.0](https://github.com/hotwired/stimulus/releases) (yarn)
* Hotwire [0.1.3](https://rubygems.org/gems/hotwire-rails/versions)
* Turbo [0.7.10](https://rubygems.org/gems/turbo-rails/versions) (yarn)
* Bootstrap [4.6](https://getbootstrap.com/docs/versions/) (yarn)
* If building from scratch (not cloning)
```
$ ruby -v
$ rails -v
$ rails new PROJECT_NAME -d=postgresql --webpacker=react
$ pg_config --version
$ npm view react version
```


## Libraries, Packages and Gems

* Font Awesome
* jQuery
* Action Text (trix)
* will_paginate
* Chartkick + Chart.js
* Groupdate
* Ahoy
* Geocoder + maxminddb
* Devise + Rolify + Cancan
* Figaro
* Redis (video chat production & turbo streams development)
* Rspec + Simplecov
* Brakeman + bundler_audit
* PGHero


## Analysis, Testing and Coverage

* PGHero: root/pghero (sysadmin)
* Brakeman + bundler_audit
```
$ brakeman
$ brakeman -o brakeman.html
$ open brakeman.html

$ bundle-audit
```
* Rspec + Simplecov
```
$ rspec
$ rspec spec/models/user_spec.rb

$ open coverage/index.html
```


## Initialization (Development)

* Set GMAIL_USERNAME, GMAIL_PASSWORD, TWILIO_ACCOUNT_SID, TWILIO_AUTH_TOKEN, GEOCODER_API in /config/application.yml ( figaro | .gitignore ). If you don't want to use verification email, comment out :confirmable in user model and edit db/seeds
* Search and replace in project the following:  rails_react_bootstrap , rails-react-bootstrap , RAILSREACTBOOTSTRAP (case sensitive)
```
$ bundle install
$ yarn install
$ rails db:create
$ rails db:seed
$ rails s
$ bin/webpack-dev-server
```


## Initialization (Heroku)

* The Heroku CLI: https://devcenter.heroku.com/articles/heroku-cli
* Add-ons (free): Heroku Postgres | Heroku Redis | Heroku Scheduler | Rollbar | Papertrail
* Buildpacks: heroku/nodejs | heroku/ruby
* Set GMAIL_USERNAME, GMAIL_PASSWORD, TWILIO_ACCOUNT_SID, TWILIO_AUTH_TOKEN, GEOCODER_API in Config Vars
* Search and replace in project the following (if you're skipping Development Initialization):  rails_react_bootstrap , rails-react-bootstrap , RAILSREACTBOOTSTRAP (case sensitive)
```
$ heroku git:remote -a your_app_name
$ git remote rename heroku production
$ git push production master
$ heroku run rake db:schema:load --app PROJECT_NAME
$ heroku run rake db:seed --app PROJECT_NAME

$ heroku run rails c
$ heroku run rake clean_ahoy
$ heroku run rake deliver_daily

$ heroku logs --tail

$ heroku restart
```
