== README

# OnlineTestExaminer

# Requirements and runtime instructions to get this application up and running:

* Ruby version
ruby 2.2.3p173

* Rails version
Rails 4.2.4

* System dependencies
 mysql2

* Configuration
routes: match ':controller(/:action(/:id))', :via => [:get, :post]


* Database creation
Db_name: testExaminer_development
![Screenshot](screenshot.png)

* Database initialization
adapter: mysql2
username: root
password: test-examiner

* How to run the test suite
bin/rails server
http://localhost:3000
