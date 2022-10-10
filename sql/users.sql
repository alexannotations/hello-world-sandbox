CREATE USER IF NOT EXISTS
	'crud_user'@'localhost'
	;
	GRANT SELECT, INSERT, UPDATE, DELETE
		ON test.* 
		TO 'crud_user'@'localhost'
		;

CREATE USER IF NOT EXISTS
	'query_user'@'localhost'
	;
	GRANT SELECT
		ON test.* 
		TO 'query_user'@'localhost'
		;

/* usuario CRUD on column of Tables  */
CREATE USER IF NOT EXISTS
	'table_user'@'localhost'
	;
    /* DELETE entra en conflicto con los privilegios a nivel columna */
	GRANT SELECT(ID,name,first,dress), INSERT(ID), UPDATE (name, first)
		ON test.testing /* conclusion, hora de entrega, valuaciones */
		TO 'table_user'@'localhost'
		;

	
FLUSH PRIVILEGES;
	