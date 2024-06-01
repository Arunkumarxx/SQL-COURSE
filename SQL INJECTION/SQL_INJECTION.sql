# SQL Injection
# SQL injection is a code injection technique that might destroy your database.

# SQL injection is one of the most common web hacking techniques.

# SQL injection is the placement of malicious code in SQL statements, via web page input.

# SQL in Web Pages
# SQL injection usually occurs when you ask a user for input, like their username/userid,
# and instead of a name/id,
# the user gives you an SQL statement that you will unknowingly run on your database.

# Look at the following example which creates a SELECT statement by
#  adding a variable (txtUserId) to a select string. The variable is fetched from user input (getRequestString):


txtUserId = getRequestString("UserId");
txtSQL = "SELECT * FROM Users WHERE UserId = " + txtUserId;


uName = getRequestString("username");
uPass = getRequestString("userpassword");

sql = 'SELECT * FROM Users WHERE Name ="' + uName + '" AND Pass ="' + uPass + '"'

SELECT * FROM Users; DROP TABLE Suppliers