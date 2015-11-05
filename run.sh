# checking if the basil db is configured
mysqlcheck () {
  echo 'Checking, if the database is empty or not.';
  count="select count(*) from information_schema.tables where table_type = 'BASE TABLE' and table_schema = 'basil'"
  mysql -h db -ubasil -ppV7JuwTj7FAjDG3B basil -e "$count" > mysql_status.txt 
  stat=`cat mysql_status.txt | tail -1`
  rm -rf mysql_status.txt
  if [ "$stat" != "0" ]; then
    echo 'The database specified, is not empty.';
  else
    echo 'Database is empty... creating db'
    mysql -h db -ubasil -ppV7JuwTj7FAjDG3B basil < db.sql 
  fi
}

echo Waiting for Mysql startup
sleep 7
mysqlcheck
java -jar -Dbasil.configurationFile=basil.ini -Dlog4j.configurationFile=log4j2.xml basil-server-0.3.2.jar  -p 8080
