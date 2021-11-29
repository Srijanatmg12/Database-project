SQL> SELECT
  2      p.FirstName||' '||p.LastName AS "Student Name", adl.AddressType,
  3      ad.CountryCode, ad.State, ad.City, ad.StreetNo, ad.StreetName,
  4      h.HouseNumber AS "House", h.PhoneNumber AS "PhoneNo", h.FaxNumber AS "Fax", h.POBOX
  5  FROM Person p
  6      JOIN AddressList adl ON (adl.PersonID = p.PersonID)
  7      JOIN Address ad ON (ad.AddressID = adl.AddressID)
  8      JOIN House h ON (h.HouseID = adl.HouseID)
  9  WHERE p.Role = 'Student';

Student Name                              ADDRESSTYPE          COUNTRYCODE      
----------------------------------------- -------------------- -----------      
STATE                     CITY                        STREETNO                  
------------------------- ------------------------- ----------                  
STREETNAME                     House    PhoneNo        Fax      POBOX           
------------------------- ---------- ---------- ---------- ----------           
Sulav Adhikari                            Home Address                4001      
Kathmandu                 Balaju                            90                  
Calcut                           234   98012309        877      12423           
                                                                                
Nisha Wosti                               Billing Address            67210      
Sanepa                    Salisna                       908765                  
Derqa                         102222  902029225         70    1235245           

Student Name                              ADDRESSTYPE          COUNTRYCODE      
----------------------------------------- -------------------- -----------      
STATE                     CITY                        STREETNO                  
------------------------- ------------------------- ----------                  
STREETNAME                     House    PhoneNo        Fax      POBOX           
------------------------- ---------- ---------- ---------- ----------           
                                                                                
Suresha Gandhi                            Home Address                6541      
Chahare                   Sosong                         12709                  
Engas                        1209734  902038525       -135    9815245           
                                                                                

SQL> Spool off
