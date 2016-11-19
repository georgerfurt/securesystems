with AUnit.Assertions;

use AUnit.Assertions;

package Vectors_Tests is

   -- Register routines to be run
   procedure Register_Tests (T : in out TC) is
      use AUnit.Test_Cases.Registration;
   begin
      -- Repeat for each test routine:
      Register_Routine (T, Test_Simple_Add'Access, "Test Addition");
   end Register_Tests;

   -- Provide name identifying test case
   function Name (T: TC) return AUnit.Message_String is
   begin
      return Format ("A test.");
   end Name;

   -- Test Routinges:
   procedure Test_Addition (T : in out Test_Cases.Test_Case'Class) is
      X, Y : Some_Currency;
   begin
      X := 12; Y := 14;
      Assert (X + Y = 26, "Addition is incorrect");
   end Test_Simple_Add;

end Vectors.Test;
