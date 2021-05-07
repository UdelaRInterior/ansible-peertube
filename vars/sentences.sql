
TRUNCATE TABLE plugin;

UPDATE "user" set "password" = '{{ peertube_dbuser_password }}' where "username" = 'root';
