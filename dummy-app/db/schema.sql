-- Some Random schema with data
CREATE TABLE account (
	id          serial          PRIMARY KEY,
	usr         VARCHAR ( 50 )  UNIQUE NOT NULL,
	pwd         VARCHAR ( 50 )  NOT NULL,
	email       VARCHAR ( 255 ),
	created_on  TIMESTAMP,
    last_login  TIMESTAMP
);

CREATE TABLE permission (
   id   serial        PRIMARY KEY,
   name VARCHAR (255) UNIQUE NOT NULL
);

CREATE TABLE account_permission (
  account_id        INT NOT NULL,
  permission_id     INT NOT NULL,
  grant_date        TIMESTAMP,
  PRIMARY KEY (account_id, permission_id),
  FOREIGN KEY (permission_id) REFERENCES permission (id),
  FOREIGN KEY (account_id) REFERENCES account (id)
);

INSERT INTO account (usr,pwd) VALUES ('admin','admin'); 