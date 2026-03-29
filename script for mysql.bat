@echo off

REM Create timestamp YYYY-MM-DD_HH-MM-SS
set TIMESTAMP=%DATE:~10,4%-%DATE:~4,2%-%DATE:~7,2%_%TIME:~0,2%-%TIME:~3,2%-%TIME:~6,2%

REM Fix leading space in hour (Windows puts a space when hour < 10)
set TIMESTAMP=%TIMESTAMP: =0%

REM Change directory to MySQL bin
cd /d "C:\Program Files\MySQL\MySQL Server 8.4\bin"

REM Perform backup using defaults file
mysqldump --defaults-file="C:\my.cnf" --all-databases > "C:\BACKUPLOCATION\all_db_backup_%TIMESTAMP%.sql"
