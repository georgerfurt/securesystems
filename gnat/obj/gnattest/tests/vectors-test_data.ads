--  This package is intended to set up and tear down  the test environment.
--  Once created by GNATtest, this package will never be overwritten
--  automatically. Contents of this package can be modified in any way
--  except for sections surrounded by a 'read only' marker.

with AUnit.Test_Fixtures;

package Vectors.Test_Data is

--  begin read only
   type Test is new AUnit.Test_Fixtures.Test_Fixture
--  end read only
   with record
      Float_First   : Float;
      Float_Last    : Float;
      Float_Zero    : Float;
      Float_TenFife : Float;
      Vec_Last     : Vector;
      Vec_First    : Vector;
      Vec_Zero     : Vector;
      Vec_Positive : Vector;
      Vec_Negative : Vector;
   end record;

   procedure Set_Up (Gnattest_T : in out Test);
   procedure Tear_Down (Gnattest_T : in out Test);

end Vectors.Test_Data;
