SQL> SELECT
  2      m.ModuleName, COUNT(m.ModuleID) as "No. of Instructor"
  3  FROM Module m
  4      INNER JOIN Modulelist ml ON (ml.ModuleID = m.ModuleID)
  5      JOIN Person p ON (p.PersonID = ml.PersonID)
  6  WHERE p.Role = 'Instructor'
  7  GROUP BY m.ModuleName
  8  HAVING COUNT(m.ModuleID) > 1;

MODULENAME                                                                      
--------------------------------------------------------------------------------
No. of Instructor                                                               
-----------------                                                               
Networking                                                                      
                2                                                               
                                                                                

SQL> Spool off
