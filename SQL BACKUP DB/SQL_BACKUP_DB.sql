# The SQL BACKUP DATABASE Statement
# The BACKUP DATABASE statement is used in SQL Server
# to create a full back up of an existing SQL database.

# Syntax
# BACKUP DATABASE databasename
# TO DISK = 'filepath';

# The SQL BACKUP WITH DIFFERENTIAL Statement
# A differential back up only backs up the parts of
# the database that have changed since the last full
# database backup.

# Syntax
# BACKUP DATABASE databasename
# TO DISK = 'filepath'
# WITH DIFFERENTIAL;

BACKUP DATABASE databasename
TO DISK = 'D:\backu.sql'
WITH DIFFERENTIAL;