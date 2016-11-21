--  This package is intended to set up and tear down  the test environment.
--  Once created by GNATtest, this package will never be overwritten
--  automatically. Contents of this package can be modified in any way
--  except for sections surrounded by a 'read only' marker.

package body Vectors.Test_Data is

   procedure Set_Up (Gnattest_T : in out Test) is
      pragma Unreferenced (Gnattest_T);
   begin
      Gnattest_T.Float_First   := Float'First;
      Gnattest_T.Float_Last    := Float'Last;
      Gnattest_T.Float_Zero    := 0.0;
      Gnattest_T.Float_TenFife := 10.5;
      Gnattest_T.Vec_First    := (Float'First, Float'First, Float'First);
      Gnattest_T.Vec_Last     := (Float'Last, Float'Last, Float'Last);
      Gnattest_T.Vec_Zero     := (0.0, 0.0, 0.0);
      Gnattest_T.Vec_Positive := (3.1, 5.2, 7.3);
      Gnattest_T.Vec_Negative := (-3.1, -5.2, -7.3);
   end Set_Up;

   procedure Tear_Down (Gnattest_T : in out Test) is
      pragma Unreferenced (Gnattest_T);
   begin
      null;
   end Tear_Down;

end Vectors.Test_Data;
