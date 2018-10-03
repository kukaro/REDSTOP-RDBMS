# mysql -h127.0.0.1 -uroot
cd ~/RDBMS
sudo mysql --force -uroot < docs/sql/create-database.sql
sudo mysql --force -uroot < docs/sql/create-table.sql
sudo mysql --force -uroot < docs/sql/create-init-data.sql