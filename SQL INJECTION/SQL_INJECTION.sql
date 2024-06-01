# SQL Injection
# SQL injection is a technique where attackers inject malicious code into SQL statements, potentially compromising your database.

# It's a common method used by hackers to gain unauthorized access to data or perform destructive actions.

# SQL injection typically happens when user input, like a username or user ID, is not properly validated and is directly incorporated into SQL queries.

# Consider this example where a SELECT statement is constructed by concatenating a user-provided value (txtUserId):

txtUserId = getRequestString("UserId")
txtSQL = "SELECT * FROM Users WHERE UserId = " + txtUserId

# Similarly, user-provided values for username and password are concatenated into a SQL query:

uName = getRequestString("username")
uPass = getRequestString("userpassword")

sql = 'SELECT * FROM Users WHERE Name ="' + uName + '" AND Pass ="' + uPass + '"'

# SQL Injection Examples

# Simple SQL Injection:
simple_sql_injection = "' OR '1'='1"

# Explanation:
# This input is typically injected into a WHERE clause of an SQL query to bypass authentication or retrieve all records from a database table.
# The injected SQL statement ' OR '1'='1 always evaluates to true, effectively bypassing any authentication checks.

# Union-Based SQL Injection:
union_based_sql_injection = "' UNION SELECT username, password FROM users --"

# Explanation:
# This input is used to retrieve sensitive information from the database, such as usernames and passwords, by injecting a UNION SELECT statement into an SQL query.
# The double dash -- is a comment in SQL, which is used to comment out the rest of the original query.

# Error-Based SQL Injection:
error_based_sql_injection = "' AND 1=CONVERT(int, (SELECT @@version)) --"

# Explanation:
# This input is used to extract database information through error messages.
# By injecting an invalid SQL statement, an attacker can trigger an error message that reveals details about the database, such as its version.

# Blind SQL Injection (Time-Based):
blind_sql_injection = "' OR SLEEP(5) --"

# Explanation:
# This input is used to perform time-based blind SQL injection attacks.
# By injecting SQL code that causes a delay (e.g., SLEEP(5)), an attacker can infer information about the database based on the response time of the application.

# Second-Order SQL Injection:
second_order_sql_injection = "'); INSERT INTO users (username, password) VALUES ('hacker', 'password'); --"

# Explanation:
# This input is used to inject malicious SQL code that is stored in the database and executed later by the application.
# In this example, the attacker injects an additional SQL statement to insert a new user into the database.
