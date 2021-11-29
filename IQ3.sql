SQL> SELECT
  2      p.FirstName||' '||p.LastName AS "Instructor Name", j.salary
  3  FROM Person p
  4      JOIN Instructor i ON (i.PersonID = p.PersonID)
  5      JOIN Job j ON (j.JobID = i.JobID)
  6  WHERE j.salary > 50000 AND REGEXP_LIKE( CONCAT(p.FirstName, p.LastName),'s');

Instructor Name                               SALARY                            
----------------------------------------- ----------                            
Suresha Gandhi                                 60000                            
Sara Shrestha                                  90000                            

SQL> Spool off
