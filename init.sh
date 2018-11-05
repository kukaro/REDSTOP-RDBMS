# mysql -h127.0.0.1 -uroot
sudo mysql --force -uroot -p123redstop456 < docs/sql/create-database.sql
sudo mysql --force -uroot -p123redstop456 < docs/sql/create-table.sql
sudo mysql --force -uroot -p123redstop456 < docs/sql/create-init-data.sql

# grant all privileges on *.* to 'root'@'%' identified by '123redstop456'