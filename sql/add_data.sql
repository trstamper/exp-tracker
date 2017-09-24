INSERT INTO Account (username, email_address)
		VALUES ('tstamper', 'fake@gmail.com');

SELECT * FROM Account;

INSERT INTO Character(character_name, account_id)
		VALUES ('Tim', 1);

INSERT INTO StatDefinition(stat_id) VALUES (1);
INSERT INTO StatRecord VALUES (1,1);