# U3.W7: Intro to SQLite

## Release 0: Create a dummy database

Andrew-Koines-Jrs-MacBook-Pro:Desktop andrewkoinesjr$ sqlite3 dummy.db
-- Loading resources from /Users/andrewkoinesjr/.sqliterc

SQLite version 3.7.13 2012-07-17 17:46:21
Enter ".help" for instructions
Enter SQL statements terminated with a ";"
sqlite> CREATE TABLE users (
   ...>   id INTEGER PRIMARY KEY AUTOINCREMENT,
   ...>   first_name VARCHAR(64) NOT NULL,
   ...>   last_name  VARCHAR(64) NOT NULL,
   ...>   email VARCHAR(128) UNIQUE NOT NULL,
   ...>   created_at DATETIME NOT NULL,
   ...>   updated_at DATETIME NOT NULL
   ...> );

## Release 1: Insert Data 

sqlite> INSERT INTO users
   ...> (first_name, last_name, email, created_at, updated_at)
   ...> VALUES
   ...> ('Kimmey', 'Lin', 'kimmy@devbootcamp.com', DATETIME('now'), DATETIME('now'));
sqlite> SELECT * FROM users
   ...> ;
id          first_name  last_name   email                  created_at           updated_at         
----------  ----------  ----------  ---------------------  -------------------  -------------------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-05-14 20:00:24  2014-05-14 20:00:24


sqlite> INSERT INTO users (first_name,last_name,email,created_at,updated_at) VALUES ('Andrew','Koines','andrew@andrewkoines.com',DATETIME('now'),DATETIME('now'));
sqlite> select * from users
   ...> ;
id          first_name  last_name   email                  created_at           updated_at         
----------  ----------  ----------  ---------------------  -------------------  -------------------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-05-14 20:00:24  2014-05-14 20:00:24
2           Andrew      Koines      andrew@andrewkoines.c  2014-05-14 20:09:42  2014-05-14 20:09:42

## Release 2: Multi-line commands

sqlite> INSERT INTO users
   ...> (first_name, last_name, email, created_at, updated_at)
   ...> VALUES
   ...> ('Kimmey', 'Lin', 'kimmy@devbootcamp.com', DATETIME('now'), DATETIME('now'));
Error: column email is not unique
sqlite> INSERT INTO users
   ...> (first_name, last_name, email, created_at, updated_at)
   ...> VALUES
   ...> ('Kimmey', 'Lin', 'kimmy2@devbootcamp.com', DATETIME('now'), DATETIME('now'));

## Release 3: Add a column
<!-- paste your terminal output here -->
sqlite> ALTER TABLE users ADD nickname VARCHAR(64) NOT NULL DEFAULT '';
sqlite> select * from users
   ...> ;
id          first_name  last_name   email                  created_at           updated_at           nickname  
----------  ----------  ----------  ---------------------  -------------------  -------------------  ----------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-05-14 20:26:37  2014-05-14 20:26:37            
2           Andrew      Koines      andrew@andrewkoines.c  2014-05-14 20:27:19  2014-05-14 20:27:19            
3           Kimmey      Lin         kimmy2@devbootcamp.co  2014-05-14 20:27:36  2014-05-14 20:27:36            

sqlite> UPDATE users SET nickname="Kimchee" where Id=1;
sqlite> select * from users
id          first_name  last_name   email                  created_at           updated_at           nickname  
----------  ----------  ----------  ---------------------  -------------------  -------------------  ----------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-05-14 20:26:37  2014-05-14 20:26:37  Kimchee   
2           Andrew      Koines      andrew@andrewkoines.c  2014-05-14 20:27:19  2014-05-14 20:27:19            
3           Kimmey      Lin         kimmy2@devbootcamp.co  2014-05-14 20:27:36  2014-05-14 20:27:36            
sqlite> 


## Release 4: Change a value


sqlite> UPDATE users SET nickname='Ninja Coder',first_name="Kimmy", updated_at=DATETIME('now') WHERE id=1;
sqlite> select * from users
id          first_name  last_name   email                  created_at           updated_at           nickname   
----------  ----------  ----------  ---------------------  -------------------  -------------------  -----------
1           Kimmy       Lin         kimmy@devbootcamp.com  2014-05-14 20:26:37  2014-05-14 20:35:24  Ninja Coder
2           Andrew      Koines      andrew@andrewkoines.c  2014-05-14 20:27:19  2014-05-14 20:27:19             
3           Kimmey      Lin         kimmy2@devbootcamp.co  2014-05-14 20:27:36  2014-05-14 20:27:36         

## Release 5: Reflect

