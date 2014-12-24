--<ScriptOptions statementTerminator=";"/>

CREATE TABLE admindetails (
	username VARCHAR(10),
	password VARCHAR(10)
) ENGINE=InnoDB;

CREATE TABLE user (
	student BLOB
) ENGINE=InnoDB;

CREATE TABLE quiz (
	qid VARCHAR(5) NOT NULL,
	qn TEXT,
	op1 TEXT,
	op2 TEXT,
	op3 TEXT,
	op4 TEXT,
	ans VARCHAR(5),
	PRIMARY KEY (qid)
) ENGINE=InnoDB;

CREATE TABLE userdetails (
	username VARCHAR(10),
	password VARCHAR(10)
) ENGINE=InnoDB;

ALTER TABLE quiz ADD PRIMARY KEY (qid);

