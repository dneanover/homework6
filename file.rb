require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'homework.sqlite3'
)

class Person < ActiveRecord::Base

end



#Each class is a table
#Each instance of that class is a row
#person class, corinne is an instance



# A Gist. For each of the questions below, add the following information to your gist:
# The original question text
# Your final SQL query (which you must have run and validated on the included database)
# The number of results returned (if more than one)
# The specific datum returned for each field (if one row returned)
# Submit your homework via the class assignments Google Form.



# Find all time entries.
# Find the developer who joined most recently.
# Find the number of projects for each client.
# Find all time entries, and show each one's client name next to it.
# Find all developers in the "Ohio sheep" group.
# Find the total number of hours worked for each client.
# Find the client for whom Mrs. Lupe Schowalter (the developer) has worked the greatest number of hours.
# List all client names with their project names (multiple rows for one client is fine). Make sure that clients still show up even if they have no projects.
# Find all developers who have written no comments.
# Unless otherwise specified, return all columns in the requested table (e.g. developers).
