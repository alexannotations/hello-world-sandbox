--SHOW DATABASES;
--SELECT user, host, password FROM mysql.user;
	GRANT SELECT(ID,name,first,dress), INSERT(ID), UPDATE (name, first)
		ON test.testing
		TO 'table_user'@'localhost'
		;

	
--FLUSH PRIVILEGES;

--SHOW GRANTS FOR 'crud_user'@'localhost';
--SHOW GRANTS FOR 'query_user'@'localhost';
SHOW GRANTS FOR 'table_user'@'localhost';

