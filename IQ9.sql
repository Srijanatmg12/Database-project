SQL> SELECT
  2      UNIQUE(m.ModuleName), rm.RoomName, rm.BuildingName, rm.RoomType
  3  FROM module m
  4      JOIN Modulelist ml ON (ml.ModuleID = ml.ModuleID)
  5      JOIN Room rm ON (ml.RoomID = rm.RoomID)
  6  WHERE rm.RoomName = 'Southern';
    UNIQUE(m.ModuleName), rm.RoomName, rm.BuildingName, rm.RoomType
                                       *
ERROR at line 2:
ORA-00904: "RM"."BUILDINGNAME": invalid identifier 


SQL> spool off
