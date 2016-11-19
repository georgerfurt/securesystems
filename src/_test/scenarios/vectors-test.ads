with AUnit,
     AUnit.TestCases;

use AUnit,
    AUnit.TestCases

package Vectors_Tests is

   type TC is new Test_Cases.Test_Case with null record;

   -- Register routines to be run
   procedure Register_Tests (T : in out TC);

   -- Provide name identifying test case
   function Name (T: TC) return AUnit.Message_String;

   -- Test Routinges:
   procedure Test_Addition (T : in out Test_Cases.Test_Case'Class);

--     overriding procedure Set_Up_Case (T : in out TC);
--
--     overriding procedure Set_Up (T : in out TC);
--     overriding procedure Tear_Down (T : in out TC);
--
--     overriding procedure Tear_Down_Case (T : in out TC);

end Vectors.Test;
