# SQLite3 practice DB

### How to get up and running:

* `git clone https://github.com/Carmer/sql_practice.git`
* Then run `bundle install`
* To create a new database just run the sqlite3 file with the argument after the file being the name of the new database and the second being the number of rows you want in each table `ruby sqlite3DB.rb name_of_database 100`.
* Next to get into the database to start playing around with SQL queried run `sqlite3 name_of_database.swlite3`. You should see something like this:

```
SQLite version 3.8.10.2 2015-05-20 18:17:19
Enter ".help" for usage hints.
sqlite> `
```
* Now you're ready to start querying in SQL (don't forget your semi-colons)
* To checkout the database schema just run `sqlite> .schema`
