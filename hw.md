**Question**: *Find all time entries*
**SQL Query**:
  SELECT id
  FROM time_entries
**# of Results Returned:** 500
**Datum:**

**Question**: *Find the developer who joined most recently*
**SQL Query**:
SELECT name, joined_on, max(joined_on)
FROM developers
**# of Results Returned:** : 1
**Datum:**: "Dr. Danielle McLaughlin"	"2015-07-10"	"2015-07-10"

**Question**: *Find the number of projects for each client*
**SQL Query**:
SELECT clients.name ,count(clients.name)
FROM clients
  LEFT JOIN projects
  ON clients.id = projects.client_id
GROUP BY clients.name
ORDER BY count(clients.name) DESC
**# of Results Returned:** : 12
**Datum:**:
"Ortiz, Gislason and Rutherford"	"6"
"Carter, Farrell and Goodwin"	"3"
"Eichmann, Altenwerth and Morar"	"3"
"Goodwin Group"	"3"
"Jast LLC"	"3"
"Kuhic-Bartoletti"	"3"
"Mohr Inc"	"3"
"West Group"	"3"
"Zieme-Ortiz"	"3"
"Abbott-Stroman"	"1"
"Dev Bootcamp"	"1"
"The Iron Yard"	"1"

**Question**: *Find all time entries, and show each one's client name next to it*
**SQL Query**:
SELECT time_entries.id, clients.name
FROM clients
LEFT JOIN projects ON clients.id = projects.client_id
JOIN time_entries ON projects.id = time_entries.project_id

**# of Results Returned:** :
**Datum:**:

**Question**: *Find all developers in the "Ohio sheep" group*
**SQL Query**:
SELECT developers.name, groups.name
FROM developers
JOIN group_assignments ON developers.id = group_assignments.developer_id
JOIN groups ON groups.id = group_assignments.group_id
WHERE groups.name = "Ohio sheep"
**# of Results Returned:** :3
**Datum:**:
"Bruce Wisoky Jr."	"Ohio sheep"
"Eli Wunsch MD"	"Ohio sheep"
"Reyes Vandervort IV"	"Ohio sheep"

**Question**: *Find the total number of hours worked for each client*
**SQL Query**:
SELECT clients.name ,count(time_entries.duration)
FROM clients
	LEFT JOIN projects ON clients.id = projects.client_id
	JOIN time_entries ON projects.id= time_entries.project_id
GROUP BY clients.name
ORDER BY count(time_entries.duration) DESC
**# of Results Returned:** : 9
**Datum:**:


**Question**: *Find the client for whom Mrs. Lupe Schowalter (the developer) has worked the greatest number of hours*
**SQL Query**:
SELECT clients.name, sum(time_entries.duration)
FROM clients
JOIN projects ON projects.client_id = clients.id
JOIN project_assignments ON projects.id = project_assignments.project_id
JOIN time_entries ON time_entries.project_id = project_assignments.id
JOIN developers ON time_entries.developer_id = developers.id
WHERE developers.id=28
GROUP BY clients.name
ORDER BY sum(time_entries.duration) DESC
**# of Results Returned:** :3
**Datum:**:
"West Group"	"17"
"Mohr Inc"	"12"
"Jast LLC"	"3"


**Question**: *List all client names with their project names (multiple rows for one client is fine).  Make sure that clients still show up even if they have no projects*
**SQL Query**:
SELECT clients.name, projects.name
FROM clients
LEFT JOIN projects ON projects.client_id = clients.id
**# of Results Returned:** :33
**Datum:**:

**Question**: *Find all developers who have written no comments*
**SQL Query**:
SELECT developers.name, comments.id
FROM developers
LEFT JOIN comments ON developers.id= comments.developer_id
WHERE comments.developer_id IS NULL

**# of Results Returned:** :13
**Datum:**:
