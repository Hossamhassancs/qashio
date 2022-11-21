# README
* Ruby version: 3.1.2 , Rails version: 7.0.4

* System dependencies: you should install pgsql

* Configuration
 - bundle install
 - add username and password for pgsql at "config/database.yml"
 
* Database creation: at root folder of the project use rails:db:create then rails db:migrate

* seed movies and reviews tables by run rake task: [rake import_movies] and [rake import_reviews]

