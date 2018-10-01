# mysql -h127.0.0.1 -uroot
sudo mysql -h127.0.0.1 --force -uroot < docs/sql/create-database.sql
sudo mysql -h127.0.0.1 --force -uroot < docs/sql/create-table.sql
sudo mysql -h127.0.0.1 --force -uroot < docs/sql/create-init-data.sql