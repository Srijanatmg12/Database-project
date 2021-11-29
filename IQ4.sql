SQL> SELECT
  2      UNIQUE(m.ModuleName), m.CreditHour, sp.SpecificationName
  3  FROM module m
  4      JOIN ModuleList ml ON (ml.ModuleID = m.ModuleID)
  5      JOIN Specification sp ON (sp.SpecificationID = sp.SpecificationID)
  6  WHERE sp.SpecificationName = 'Multimedia';

no rows selected

SQL> Spool off
