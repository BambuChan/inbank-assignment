-- MariaDB SQL syntax

create or replace TABLE BLACKLIST (
	USER_ID DECIMAL(38,0),
	BLACKLIST_CODE DECIMAL(38,0),
	BLACKLIST_START_DATE DATE,
	BLACKLIST_END_DATE DATE
);

create or replace TABLE CURRENCIES (
	CURRENCY_ID DECIMAL(38,0),
	CURRENCY_CODE VARCHAR(50),
	START_DATE DATE,
	END_DATE DATE
);

create or replace TABLE CURRENCY_RATES (
	CURRENCY_ID DECIMAL(38,0),
	EXCHANGE_RATE_TO_EUR DECIMAL(38,2),
	EXCHANGE_DATE DATE
);

create or replace TABLE PAYMENTS (
	USER_ID_SENDER DECIMAL(38,0),
	CONTRACT_ID DECIMAL(38,0),
	AMOUNT DECIMAL(38,2),
	CURRENCY DECIMAL(38,0),
	TRANSACTION_DATE DATE
);

INSERT INTO BLACKLIST (USER_ID,BLACKLIST_CODE,BLACKLIST_START_DATE,BLACKLIST_END_DATE) VALUES
	 (3837,101,'2022-01-01',NULL);
	
INSERT INTO CURRENCIES (CURRENCY_ID,CURRENCY_CODE,START_DATE,END_DATE) VALUES
	 (111,'EUR','1999-01-01',NULL),
	 (222,'PLN','1995-01-01',NULL),
	 (333,'CZK','1993-01-01',NULL),
	 (444,'HRK','1994-05-30','2022-12-31'),
	 (555,'YUM','1994-01-01','2003-01-01');
	
INSERT INTO CURRENCY_RATES (CURRENCY_ID,EXCHANGE_RATE_TO_EUR,EXCHANGE_DATE) VALUES
	 (222,0.19,'2023-01-05'),
	 (222,0.20,'2023-02-05'),
	 (222,0.21,'2023-03-05');

INSERT INTO PAYMENTS (USER_ID_SENDER,CONTRACT_ID,AMOUNT,CURRENCY,TRANSACTION_DATE) VALUES
	 (9863,786283,10,111,'2023-01-05'),
	 (7619,379828,34,111,'2023-01-05'),
	 (8472,367139,750,444,'2023-01-05'),
	 (9382,382033,378,222,'2023-01-05'),
	 (3837,789912,82,111,'2023-02-05'),
	 (9863,786283,19,111,'2023-02-05'),
	 (9382,382033,406,222,'2023-02-05'),
	 (9863,786283,53,111,'2023-03-05'),
	 (5673,372832,640,444,'2023-03-05'),
	 (7619,379828,34,111,'2023-03-05');

INSERT INTO PAYMENTS (USER_ID_SENDER,CONTRACT_ID,AMOUNT,CURRENCY,TRANSACTION_DATE) VALUES
	 (5321,466423,231,111,'2023-03-05');
