# MySQL-Scripts
Useful scripts utilizing MySQL command line. Since 8.4 MySQL doesn't have a fully functional GUI yet. 
Allows you to automate some tasks with windows task scheduler.

## IMPORTANT CHANGES YOU NEED TO MAKE. ##

## My.cnf ##
my.cnf Must be adjusted to your server settings. 
This file is required to make the MySQL backup automated with using task scheduler.


## Batch Script ##
Adds a timestamp to your backups as well as calling to a .cnf file to run automated MySQL backups

"C:\Program Files\MySQL\MySQL Server 8.4\bin" MUST BE POINTED TO YOUR BIN FOLDER LOCATION

mysqldump --defaults-file="C:\my.cnf" --all-databases > "C:\BACKUPLOCATION\all_db_backup_%TIMESTAMP%.sql"
You can change the name of all_db_backup %TIMESTAMP% is necessary for date of backup taken.
Check documentation but you can do some of the following as well:
--triggers to include your database triggers
--databases db_name for specific dabases can also dump specific tables

## MUST BE POINTED TO YOUR LOCATION OF YOUR FILES ##

## DOCUMENTATION ##
https://dev.mysql.com/doc/refman/8.4/en/mysqldump.html Documentation to add additional commands into your back script.

## Errors #
If the dump file produces a 0kb that means it errored out and one of your settings in these files are incorrect. 
This could be anything from a bad file path or wrong credentials or wrong database name.
I can look into creating error logs in the future.
