# mysql -h127.0.0.1 -uroot
sudo mysql --force -uroot -p < docs/sql/create-database.sql
sudo mysql --force -uroot -p < docs/sql/create-table.sql
sudo mysql --force -uroot -p < docs/sql/create-init-data.sql