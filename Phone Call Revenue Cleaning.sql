wrap_data:
o	Blank cells are unwrapped data:
	SELECT * 
FROM wrap_data
WHERE type_of_call = "";

o	Update all blank cells to be called “unwrapped”:
	UPDATE wrap_data
SET type_of_call = “unwrapped”
WHERE type_of_call = “”;

outbound_calls_trade:
o	identify all whitespace:
	SELECT * 
FROM outbound_calls_trade
WHERE phone like "% %";

o	remove all whitespace:
	UPDATE outbound_calls_trade
SET phone = REPLACE(phone, " ", "")

o	Identify Length of Phone numbers:
	SELECT phone, LENGTH(phone) AS Length
FROM outbound_calls_trade
WHERE length(phone) > 1
ORDER by Length;

o	Create column to show Phone length:
	ALTER TABLE outbound_calls_trade
ADD phone_length INT(11) 
AS (LENGTH(phone));

o	Remove all details with length under 10 and over 13:
	DELETE FROM outbound_calls_trade
WHERE phone_length < 10;

	DELETE FROM outbound_calls_trade
WHERE phone_length > 13;

o	Add ‘44’ to length 10:
	UPDATE outbound_calls_trade
SET phone = CONCAT('44',phone)
WHERE phone_length = 10

o	Remove first 0 and add 44 to length 11:
	UPDATE outbound_calls_trade
SET phone  = SUBSTR(phone,2) 
WHERE phone_length = 11;

	UPDATE outbound_calls_trade
SET phone = CONCAT('44',phone)
WHERE phone_length = 10

o	Remove the ‘+’ from length 13:
	UPDATE outbound_calls_trade
SET phone = SUBSTR(phone,2) 
WHERE phone_length = 13;

o	Remove all 12 length with +:
	DELETE FROM outbound_calls_trade
WHERE phone LIKE "+%"

o	Remove the ‘.’ From end of 12 length:
	UPDATE outbound_calls_trade
SET phone = SUBSTR(phone,1,11) 
WHERE phone LIKE “%.”;

o	Remove first 0 and add 44 to length 11:
	UPDATE outbound_calls_trade
SET phone  = SUBSTR(phone,2) 
WHERE phone_length = 11;

	UPDATE outbound_calls_trade
SET phone = CONCAT('44',phone)
WHERE phone_length = 10

jobs_by_location:

o	Create column to show length:
	ALTER TABLE job_location
ADD postcode_length INT(11) 
AS (LENGTH(post_code));


o	Remove all details with length under 6 and over 8:
	DELETE FROM job_location
WHERE postcode_length < 6;

	DELETE FROM job_location
WHERE postcode_length > 8;

o	Remove last characters from 6, 7 & 8 length:
	UPDATE job_location
SET post_code = SUBSTR(post_code,1,2) 
WHERE postcode_length = 6;

	UPDATE job_location
SET post_code = SUBSTR(post_code,1,3) 
WHERE postcode_length = 7;

	UPDATE job_location
SET post_code = SUBSTR(post_code,1,4) 
WHERE postcode_length = 8;







calls_with_trade:
o	identify all whitespace:
	SELECT * 
FROM outbound_calls_trade
WHERE phone like "% %";

o	remove all whitespace:
	UPDATE outbound_calls_trade
SET phone = REPLACE(phone, " ", "")

o	Identify Length of Phone numbers:
	SELECT phone, LENGTH(phone) AS Length
FROM outbound_calls_trade
WHERE length(phone) > 1
ORDER by Length;

o	Create column to show Phone length:
	ALTER TABLE outbound_calls_trade
ADD phone_length INT(11) 
AS (LENGTH(phone));

o	Remove all details with length under 10 and over 13:
	DELETE FROM outbound_calls_trade
WHERE phone_LENGTH < 10;

	DELETE FROM outbound_calls_trade
WHERE phone_LENGTH > 13;

o	Add ‘44’ to length 10:
	UPDATE outbound_calls_trade
SET phone = CONCAT('44',phone)
WHERE phone_length = 10

o	Remove first 0 and add 44 to length 11:
	UPDATE outbound_calls_trade
SET phone  = SUBSTR(phone,2) 
WHERE phone_length = 11;

	UPDATE outbound_calls_trade
SET phone = CONCAT('44',phone)
WHERE phone_length = 10

o	Remove the ‘+’ from length 13:
	UPDATE outbound_calls_trade
SET phone = SUBSTR(phone,2) 
WHERE phone_length = 13;

o	Remove all 12 length with +:
	DELETE FROM outbound_calls_trade
WHERE phone LIKE "+%"


o	Remove the ‘.’ From end of 12 length:
	UPDATE outbound_calls_trade
SET phone = SUBSTR(phone,1,11) 
WHERE phone LIKE “%.”;

o	Remove first 0 and add 44 to length 11:
	UPDATE outbound_calls_trade
SET phone  = SUBSTR(phone,2) 
WHERE phone_length = 11;

	UPDATE outbound_calls_trade
SET phone = CONCAT('44',phone)
WHERE phone_length = 10
