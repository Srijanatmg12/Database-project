SQL> SELECT
  2      UNIQUE(sp.SpecificationName),so.DegreeType, c.CourseName
  3  FROM Specification sp
  4      JOIN ModuleList ml ON (sp.SpecificationID = sp.SpecificationID)
  5      JOIN Course c ON (c.CourseID = c.CourseID)
  6  WHERE c.CourseName = 'Information Technology'AND so.DegreeType = 'Under-Graduate';
WHERE c.CourseName = 'Information Technology'AND so.DegreeType = 'Under-Graduate'
                                                 *
ERROR at line 6:
ORA-00904: "SO"."DEGREETYPE": invalid identifier 


SQL> spool off
