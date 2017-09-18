DROP TABLE IF EXISTS Account CASCADE;
DROP TABLE IF EXISTS Character CASCADE;
DROP TABLE IF EXISTS StatDefinition CASCADE;
DROP TABLE IF EXISTS StatRecord CASCADE;

CREATE TABLE Account (
        account_id bigserial PRIMARY KEY,
        username varchar(40),
        email_address varchar
);

CREATE TABLE Character (
        character_id bigserial PRIMARY KEY,
        character_name varchar, 
        account_id bigint REFERENCES Account(account_id)
);

CREATE TABLE StatDefinition (
    stat_id bigserial PRIMARY KEY
);

CREATE TABLE StatRecord (
    stat_id bigint REFERENCES StatDefinition(stat_id),
    character_id bigint REFERENCES Character(character_id),
    PRIMARY KEY (stat_id, character_id)
);
