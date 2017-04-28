# Test App

### Getting Started
Install dependencies

```
bundle install
```
Create database
```
bundle exec rails db:create db:migrate
```
Start rails and memcache servers
```
foreman start
```
Server should be running on [localhost:5000](localhost:5000)

### Testing on Heroku
Please see [https://stackchallenge.herokuapp.com/](https://stackchallenge.herokuapp.com/)

You can create a new user, or use one that I've already created for you: `test:test`.

### Design chocies
Very simple app (wish I could do more, but unfortunately don't have enough time!)

##### Auth
Used bcrypt for simple auth. Login is required for most pages (with the exception of `login_path` and `new_user_path`)

##### Users
Standard RESTful resource

##### Profiles
`Profile` is a plain ruby object that is initiated with the hash. It has a tweet method that caches requests from the Twitter API for 5 minutes.

Created `index` and `show` actions for `Profile`
