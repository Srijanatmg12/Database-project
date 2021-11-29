SQL> SELECT
  2      p.FirstName||' '||p.LastName AS "Student Name", adl.AddressType,
  3      ad.CountryCode, ad.State, ad.City, ad.StreetNo, ad.StreetName,
  4      h.HouseNumber AS "House", h.PhoneNumber AS "PhoneNo", h.FaxNumber AS "Fax", h.POBOX
  5  FROM Person p
  6      JOIN AddressList adl ON (adl.PersonID = p.PersonID)
  7      JOIN Address ad ON (ad.AddressID = adl.AddressID)
  8      JOIN House h ON (h.HouseID = adl.HouseID)
  9  WHERE p.Role = 'Instructor' AND REGEXP_LIKE(p.FirstName,'a$');

Student Name                              ADDRESSTYPE          COUNTRYCODE      
----------------------------------------- -------------------- -----------      
STATE                     CITY                        STREETNO                  
------------------------- ------------------------- ----------                  
STREETNAME                     House    PhoneNo        Fax      POBOX           
------------------------- ---------- ---------- ---------- ----------           
Misha Karki                               Shipping Address             987      
Bhaktapur                 Sallaghari                     87651                  
Paschim                       634550   90330025       1887     922245           
                                                                                
Sarnaa Karki                              Business Address           81206      
Silsnag                   Harekrishna                     9123                  
Segnga                         19034    9438525       7327     915245           

Student Name                              ADDRESSTYPE          COUNTRYCODE      
----------------------------------------- -------------------- -----------      
STATE                     CITY                        STREETNO                  
------------------------- ------------------------- ----------                  
STREETNAME                     House    PhoneNo        Fax      POBOX           
------------------------- ---------- ---------- ---------- ----------           
                                                                                
Sara Shrestha                             Business Address            9123      
Banepa                    Sanga                          89230                  
Galli                          34034     501225      98287        895           
                                                                                

SQL> spool off
