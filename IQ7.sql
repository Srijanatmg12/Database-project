SQL> SELECT
  2      p.FirstName||' '||p.LastName AS "Instructor Name", m.ModuleName, h.FaxNumber
  3  FROM Person p
  4      JOIN ModuleList ml ON (ml.PersonID = p.PersonID)
  5      JOIN Module m ON (m.ModuleID = ml.ModuleID)
  6      JOIN AddressList adl ON (adl.PersonID = p.PersonID)
  7      JOIN Address ad ON (ad.AddressID = adl.AddressID)
  8      JOIN House h ON (h.HouseID = adl.HouseID)
  9  WHERE p.Role = 'Instructor' AND m.ModuleName = 'Database';

no rows selected

SQL> spool off
