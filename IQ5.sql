SQL> SELECT
  2      p.FirstName||' '||p.LastName AS "Head of Module", j.JobType, h.PhoneNumber
  3  FROM Person p
  4      JOIN Instructor i ON (i.PersonID = p.PersonID)
  5      JOIN Job j ON (j.JobID = i.JobID)
  6      JOIN AddressList adl ON (adl.PersonID = p.PersonID)
  7      JOIN Address ad ON (ad.AddressID = adl.AddressID)
  8      JOIN House h ON (h.HouseID = adl.HouseID)
  9  WHERE j.JobID = 'B07';

Head of Module                                                                  
-----------------------------------------                                       
JOBTYPE                                                                         
--------------------------------------------------------------------------------
PHONENUMBER                                                                     
-----------                                                                     
Sara Shrestha                                                                   
FullTime                                                                        
     501225                                                                     
                                                                                

SQL> spool off
