
TRUNCATE TABLE plugin;

UPDATE "user" set "password" = '{{ peertube_web_admin_password }}' where "username" = 'root';
