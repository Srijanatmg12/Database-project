SQL> SELECT
  2      p.FirstName||' '||p.LastName AS "Student Name", sp.SpecificationName
  3  FROM Person p
  4      JOIN ModuleList ml ON (ml.PersonID = p.PersonID)
  5      JOIN Specification sp ON (sp.SpecificationID = sp.SpecificationID)
  6  WHERE p.Role = 'Student' AND sp.SpecificationName = 'Networking';

Student Name                                                                    
-----------------------------------------                                       
SPECIFICATIONNAME                                                               
--------------------------------------------------------------------------------
Sulav Adhikari                                                                  
Networking                                                                      
                                                                                
Sulav Adhikari                                                                  
Networking                                                                      
                                                                                
Nisha Wosti                                                                     
Networking                                                                      
                                                                                

Student Name                                                                    
-----------------------------------------                                       
SPECIFICATIONNAME                                                               
--------------------------------------------------------------------------------
Nisha Wosti                                                                     
Networking                                                                      
                                                                                
Suresha Gandhi                                                                  
Networking                                                                      
                                                                                
Suresha Gandhi                                                                  
Networking                                                                      
                                                                                

6 rows selected.

SQL> spool off
