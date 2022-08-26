# Ror-sample-task

## Dependencies
#### Ruby version - 3.0.0
#### Rails version - 6.1.6
#### Database used - sqlite3
#### webpacker@5.4.3

### Steps to follow
- Clone the repository
- Open the root folder of application in terminal after finishing the cloning
- Run ***"bundle install"*** to install required gems in the application
- After finishing the installation of gems ,Run ***"rake db:create"*** command, it will create the required database in sqlite3
- Then run ***"rails db:migrate"*** to migrate database
- After finishing the migration , run ***"rails server"*** to run server

NOTE - In case, if its shows error "Webpacker can't find application.js "run ***"bundle exec rails webpacker:install"***  and after install try to run server again by "rails server"


