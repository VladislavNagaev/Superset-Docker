CREATE USER superset WITH PASSWORD 'superset';
ALTER ROLE superset SET CLIENT_ENCODING TO 'utf8';
ALTER ROLE superset SET TIMEZONE TO 'UTC';
CREATE DATABASE superset WITH lc_collate='en_US.utf8';
GRANT ALL PRIVILEGES ON DATABASE superset TO superset;
ALTER DATABASE superset OWNER TO superset;
