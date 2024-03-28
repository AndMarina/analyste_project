DROP TABLE IF EXISTS fields_professors;



CREATE TABLE fields_professors(
	professor_id integer,
    field_id uuid,
	CONSTRAINT professor_id_key
        FOREIGN KEY(professor_id) 
            REFERENCES professor(professor_id)
            ON DELETE CASCADE,
	CONSTRAINT field_id_key
        FOREIGN KEY(field_id) 
            REFERENCES field(field_id)
            ON DELETE CASCADE,
	PRIMARY KEY (professor_id, field_id)
);


SELECT *
FROM fields_professors;