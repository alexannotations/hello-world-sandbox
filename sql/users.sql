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

/* usuario CRU on column of Tables  */
CREATE USER IF NOT EXISTS
	'tableColumn_user'@'localhost'
	;
    /* DELETE entra en conflicto con los privilegios a nivel columna */
	GRANT SELECT(city), INSERT(city)
		ON test.Persons /* conclusion, hora de entrega, valuaciones */
		TO 'tableColumn_user'@'localhost'
		;

	
FLUSH PRIVILEGES;
	