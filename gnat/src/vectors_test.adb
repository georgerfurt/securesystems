-- * This file has been automatically generated using `testgen'.
-- * Modifications should be made in the corresponding script file.

  -- Test Driver Source

  -- File:       /users/georgerfurt/securesystems/gnat/src/vectors_test.adb
  -- Script:     /users/georgerfurt/securesystems/gnat/src/vectors_test.ts


with Ada.Command_Line, Ada.Exceptions;
use type Ada.Command_Line.Exit_Status;

with Ada.Numerics.Elementary_Functions; 
with Ada.Text_IO;
with Vectors;
use Ada.Numerics.Elementary_Functions; 
use Ada.Text_IO;
use Vectors;

procedure vectors_test is

  package Driver_Internals is
    -- Global Data
    Program_Terminate     : exception;
    Fail_Result           : Boolean := False;
    Unexpected_Error      : Boolean := False;
    Status                : Ada.Command_Line.Exit_Status := 0;
    -- Data of last Test Case
    Test_Case_Passed      : Boolean := False;
    -- Access Routines
    procedure Set_Path (Path : in String);
    function Path_Was (Path : in String) return Boolean;
    function Taken_Path return String;
    function Passed return Boolean;
    function Failed return Boolean;
  end Driver_Internals;

  package body Driver_Internals is
    -- Data of last Test Case
    Test_Case_Path        : String (1.. 256);
    Test_Case_Path_Length : Natural := 0;
    -- Access Routines
    procedure Set_Path (Path : in String) is
      begin
        Test_Case_Path (Test_Case_Path'First..Path'Length) := Path;
        Test_Case_Path_Length := Path'Length;
      end Set_Path;
    function Path_Was (Path : in String) return Boolean is
      begin
        return Test_Case_Path_Length = Path'Length
            and then Test_Case_Path (1..Path'Length) = Path;
      end Path_Was;
    function Taken_Path return String is
      begin return Test_Case_Path (1..Test_Case_Path_Length); end Taken_Path;
    function Passed return Boolean is
      begin return Test_Case_Passed; end Passed;
    function Failed return Boolean is
      begin return not Test_Case_Passed; end Failed;
  end Driver_Internals;

begin  -- unit main block

  -- Test Case (1)   Test Add
  declare
    L: constant Vector := (2.0, 3.0, 4.0);
    R: constant Vector := (5.0, 6.0, 7.0);
    Actual: Vector;
    Expected: constant Vector := (L.X + R.X, L.Y + R.Y, L.Z + R.Z);
  begin  -- test case
    begin  -- test part
      Actual := L + R;
      Driver_Internals.Set_Path ("=>");
    exception
      when E: others =>
        Driver_Internals.Set_Path (Ada.Exceptions.Exception_Name (E));
    end;  -- test part
    begin  -- result part
      if Driver_Internals.Path_Was ("=>") then
        if abs(Actual.X - Expected.X) < 0.000001 and then abs(Actual.Y - Expected.Y) < 0.000001 and then abs(Actual.Z - Expected.Z) < 0.000001
        then
          Driver_Internals.Test_Case_Passed := True;
          Put_Line ("(1)  pass.");
        else
          Driver_Internals.Test_Case_Passed := False;
          Driver_Internals.Fail_Result := True;
          Put_Line ("(1)  Test Add");
          Put_Line ("           Script name:'vectors_test.ts'; Line:9 ");
          Put_Line ("      ...FAIL.");
          Put_Line ("         (" & "path `=>' was taken, but predicate is FALSE" & ")");
        end if;
      else
        Driver_Internals.Test_Case_Passed := False;
        Driver_Internals.Fail_Result := True;
        Put_Line ("(1)  Test Add");
        Put_Line ("           Script name:'vectors_test.ts'; Line:9 ");
        Put_Line ("      ...FAIL.");
        Put_Line ("         (" & "path `" & Driver_Internals.Taken_Path & "' when `=>' was expected" & ")");
      end if;
    exception
      when Driver_Internals.Program_Terminate =>
        raise;
      when E: others =>
        Driver_Internals.Unexpected_Error := True;
        Put_Line ("ERROR: exception " & Ada.Exceptions.Exception_Name (E) & " raised in result part of test case 1.");
        raise Driver_Internals.Program_Terminate;
    end;  -- result part
  end;  -- test case

  -- Test Case (2)   Test Substract
  declare
    L: constant Vector := (10.0, 12.0, 8.0);
    R: constant Vector := (5.0, 6.0, 7.0);
    Actual: Vector;
    Expected: constant Vector := (L.X - R.X, L.Y - R.Y, L.Z - R.Z);
  begin  -- test case
    begin  -- test part
      Actual := L - R;
      Driver_Internals.Set_Path ("=>");
    exception
      when E: others =>
        Driver_Internals.Set_Path (Ada.Exceptions.Exception_Name (E));
    end;  -- test part
    begin  -- result part
      if Driver_Internals.Path_Was ("=>") then
        if abs(Actual.X - Expected.X) < 0.000001 and then abs(Actual.Y - Expected.Y) < 0.000001 and then abs(Actual.Z - Expected.Z) < 0.000001
        then
          Driver_Internals.Test_Case_Passed := True;
          Put_Line ("(2)  pass.");
        else
          Driver_Internals.Test_Case_Passed := False;
          Driver_Internals.Fail_Result := True;
          Put_Line ("(2)  Test Substract");
          Put_Line ("           Script name:'vectors_test.ts'; Line:17 ");
          Put_Line ("      ...FAIL.");
          Put_Line ("         (" & "path `=>' was taken, but predicate is FALSE" & ")");
        end if;
      else
        Driver_Internals.Test_Case_Passed := False;
        Driver_Internals.Fail_Result := True;
        Put_Line ("(2)  Test Substract");
        Put_Line ("           Script name:'vectors_test.ts'; Line:17 ");
        Put_Line ("      ...FAIL.");
        Put_Line ("         (" & "path `" & Driver_Internals.Taken_Path & "' when `=>' was expected" & ")");
      end if;
    exception
      when Driver_Internals.Program_Terminate =>
        raise;
      when E: others =>
        Driver_Internals.Unexpected_Error := True;
        Put_Line ("ERROR: exception " & Ada.Exceptions.Exception_Name (E) & " raised in result part of test case 2.");
        raise Driver_Internals.Program_Terminate;
    end;  -- result part
  end;  -- test case

  -- Test Case (3)   Test Multiply
  declare
    L: constant Vector := (10.0, 12.0, 8.0);
    R: float := 3.0;
    Actual: Vector;
    Expected: constant Vector := (L.X * R, L.Y * R, L.Z * R);
  begin  -- test case
    begin  -- test part
      Actual := L * R;
      Driver_Internals.Set_Path ("=>");
    exception
      when E: others =>
        Driver_Internals.Set_Path (Ada.Exceptions.Exception_Name (E));
    end;  -- test part
    begin  -- result part
      if Driver_Internals.Path_Was ("=>") then
        if abs(Actual.X - Expected.X) < 0.000001 and then abs(Actual.Y - Expected.Y) < 0.000001 and then abs(Actual.Z - Expected.Z) < 0.000001
        then
          Driver_Internals.Test_Case_Passed := True;
          Put_Line ("(3)  pass.");
        else
          Driver_Internals.Test_Case_Passed := False;
          Driver_Internals.Fail_Result := True;
          Put_Line ("(3)  Test Multiply");
          Put_Line ("           Script name:'vectors_test.ts'; Line:25 ");
          Put_Line ("      ...FAIL.");
          Put_Line ("         (" & "path `=>' was taken, but predicate is FALSE" & ")");
        end if;
      else
        Driver_Internals.Test_Case_Passed := False;
        Driver_Internals.Fail_Result := True;
        Put_Line ("(3)  Test Multiply");
        Put_Line ("           Script name:'vectors_test.ts'; Line:25 ");
        Put_Line ("      ...FAIL.");
        Put_Line ("         (" & "path `" & Driver_Internals.Taken_Path & "' when `=>' was expected" & ")");
      end if;
    exception
      when Driver_Internals.Program_Terminate =>
        raise;
      when E: others =>
        Driver_Internals.Unexpected_Error := True;
        Put_Line ("ERROR: exception " & Ada.Exceptions.Exception_Name (E) & " raised in result part of test case 3.");
        raise Driver_Internals.Program_Terminate;
    end;  -- result part
  end;  -- test case

  -- Test Case (4)   Test Scalar
  declare
    L: constant Vector := (10.0, 12.0, 8.0);
    R: constant Vector := (5.0, 6.0, 7.0);
    Actual: Float;
    Expected: Float := (L.X * R.X + L.Y * R.Y + L.Z * R.Z);
  begin  -- test case
    begin  -- test part
      Actual := L * R;
      Driver_Internals.Set_Path ("=>");
    exception
      when E: others =>
        Driver_Internals.Set_Path (Ada.Exceptions.Exception_Name (E));
    end;  -- test part
    begin  -- result part
      if Driver_Internals.Path_Was ("=>") then
        if abs(Actual - Expected) < 0.000001
        then
          Driver_Internals.Test_Case_Passed := True;
          Put_Line ("(4)  pass.");
        else
          Driver_Internals.Test_Case_Passed := False;
          Driver_Internals.Fail_Result := True;
          Put_Line ("(4)  Test Scalar");
          Put_Line ("           Script name:'vectors_test.ts'; Line:33 ");
          Put_Line ("      ...FAIL.");
          Put_Line ("         (" & "path `=>' was taken, but predicate is FALSE" & ")");
        end if;
      else
        Driver_Internals.Test_Case_Passed := False;
        Driver_Internals.Fail_Result := True;
        Put_Line ("(4)  Test Scalar");
        Put_Line ("           Script name:'vectors_test.ts'; Line:33 ");
        Put_Line ("      ...FAIL.");
        Put_Line ("         (" & "path `" & Driver_Internals.Taken_Path & "' when `=>' was expected" & ")");
      end if;
    exception
      when Driver_Internals.Program_Terminate =>
        raise;
      when E: others =>
        Driver_Internals.Unexpected_Error := True;
        Put_Line ("ERROR: exception " & Ada.Exceptions.Exception_Name (E) & " raised in result part of test case 4.");
        raise Driver_Internals.Program_Terminate;
    end;  -- result part
  end;  -- test case

  -- Test Case (5)   Test Equality
  declare
    L: constant Vector := (2.0, 1.0, 0.0);
    R: constant Vector := (2.0, 1.0, 0.0);
    Actual: Boolean;
    Expected: Boolean := true;
  begin  -- test case
    begin  -- test part
      Actual := L = R;
      Driver_Internals.Set_Path ("=>");
    exception
      when E: others =>
        Driver_Internals.Set_Path (Ada.Exceptions.Exception_Name (E));
    end;  -- test part
    begin  -- result part
      if Driver_Internals.Path_Was ("=>") then
        if Actual = Expected
        then
          Driver_Internals.Test_Case_Passed := True;
          Put_Line ("(5)  pass.");
        else
          Driver_Internals.Test_Case_Passed := False;
          Driver_Internals.Fail_Result := True;
          Put_Line ("(5)  Test Equality");
          Put_Line ("           Script name:'vectors_test.ts'; Line:41 ");
          Put_Line ("      ...FAIL.");
          Put_Line ("         (" & "path `=>' was taken, but predicate is FALSE" & ")");
        end if;
      else
        Driver_Internals.Test_Case_Passed := False;
        Driver_Internals.Fail_Result := True;
        Put_Line ("(5)  Test Equality");
        Put_Line ("           Script name:'vectors_test.ts'; Line:41 ");
        Put_Line ("      ...FAIL.");
        Put_Line ("         (" & "path `" & Driver_Internals.Taken_Path & "' when `=>' was expected" & ")");
      end if;
    exception
      when Driver_Internals.Program_Terminate =>
        raise;
      when E: others =>
        Driver_Internals.Unexpected_Error := True;
        Put_Line ("ERROR: exception " & Ada.Exceptions.Exception_Name (E) & " raised in result part of test case 5.");
        raise Driver_Internals.Program_Terminate;
    end;  -- result part
  end;  -- test case

  -- Test Case (6)   Test Orthogonal
  declare
    L: constant Vector := (2.0, 1.0, 0.0);
    R: constant Vector := (3.0, -6.0, 8.0);
    Actual: Boolean;
    Expected: Boolean := true;
  begin  -- test case
    begin  -- test part
      Actual := Are_Orthogonal(L,R);
      Driver_Internals.Set_Path ("=>");
    exception
      when E: others =>
        Driver_Internals.Set_Path (Ada.Exceptions.Exception_Name (E));
    end;  -- test part
    begin  -- result part
      if Driver_Internals.Path_Was ("=>") then
        if Actual = Expected
        then
          Driver_Internals.Test_Case_Passed := True;
          Put_Line ("(6)  pass.");
        else
          Driver_Internals.Test_Case_Passed := False;
          Driver_Internals.Fail_Result := True;
          Put_Line ("(6)  Test Orthogonal");
          Put_Line ("           Script name:'vectors_test.ts'; Line:49 ");
          Put_Line ("      ...FAIL.");
          Put_Line ("         (" & "path `=>' was taken, but predicate is FALSE" & ")");
        end if;
      else
        Driver_Internals.Test_Case_Passed := False;
        Driver_Internals.Fail_Result := True;
        Put_Line ("(6)  Test Orthogonal");
        Put_Line ("           Script name:'vectors_test.ts'; Line:49 ");
        Put_Line ("      ...FAIL.");
        Put_Line ("         (" & "path `" & Driver_Internals.Taken_Path & "' when `=>' was expected" & ")");
      end if;
    exception
      when Driver_Internals.Program_Terminate =>
        raise;
      when E: others =>
        Driver_Internals.Unexpected_Error := True;
        Put_Line ("ERROR: exception " & Ada.Exceptions.Exception_Name (E) & " raised in result part of test case 6.");
        raise Driver_Internals.Program_Terminate;
    end;  -- result part
  end;  -- test case

  -- Test Case (7)   Test CrossProduct
  declare
    L: constant Vector := (10.0, 12.0, 8.0);
    R: constant Vector := (5.0, 6.0, 7.0);
    Actual: Vector;
    Expected: constant Vector := (L.Y * R.Z + L.Z * R.Y, L.Z * R.X + L.X * R.Z, L.X * R.Y + L.Y * R.X);
  begin  -- test case
    begin  -- test part
      Actual := Cross_Product(L,R);
      Driver_Internals.Set_Path ("=>");
    exception
      when E: others =>
        Driver_Internals.Set_Path (Ada.Exceptions.Exception_Name (E));
    end;  -- test part
    begin  -- result part
      if Driver_Internals.Path_Was ("=>") then
        if abs(Actual.X - Expected.X) < 0.000001 and then abs(Actual.Y - Expected.Y) < 0.000001 and then abs(Actual.Z - Expected.Z) < 0.000001
        then
          Driver_Internals.Test_Case_Passed := True;
          Put_Line ("(7)  pass.");
        else
          Driver_Internals.Test_Case_Passed := False;
          Driver_Internals.Fail_Result := True;
          Put_Line ("(7)  Test CrossProduct");
          Put_Line ("           Script name:'vectors_test.ts'; Line:57 ");
          Put_Line ("      ...FAIL.");
          Put_Line ("         (" & "path `=>' was taken, but predicate is FALSE" & ")");
        end if;
      else
        Driver_Internals.Test_Case_Passed := False;
        Driver_Internals.Fail_Result := True;
        Put_Line ("(7)  Test CrossProduct");
        Put_Line ("           Script name:'vectors_test.ts'; Line:57 ");
        Put_Line ("      ...FAIL.");
        Put_Line ("         (" & "path `" & Driver_Internals.Taken_Path & "' when `=>' was expected" & ")");
      end if;
    exception
      when Driver_Internals.Program_Terminate =>
        raise;
      when E: others =>
        Driver_Internals.Unexpected_Error := True;
        Put_Line ("ERROR: exception " & Ada.Exceptions.Exception_Name (E) & " raised in result part of test case 7.");
        raise Driver_Internals.Program_Terminate;
    end;  -- result part
  end;  -- test case

  -- Test Case (8)   Test Distance
  declare
    L: constant Vector := (1.0, 1.0, 0.0);
    R: constant Vector := (2.0, 1.0, 0.0);
    Actual: Float;
    Expected: Float := 1.0;
  begin  -- test case
    begin  -- test part
      Actual := Distance(L, R);
      Driver_Internals.Set_Path ("=>");
    exception
      when E: others =>
        Driver_Internals.Set_Path (Ada.Exceptions.Exception_Name (E));
    end;  -- test part
    begin  -- result part
      if Driver_Internals.Path_Was ("=>") then
        if abs(Actual - Expected) < 0.000001
        then
          Driver_Internals.Test_Case_Passed := True;
          Put_Line ("(8)  pass.");
        else
          Driver_Internals.Test_Case_Passed := False;
          Driver_Internals.Fail_Result := True;
          Put_Line ("(8)  Test Distance");
          Put_Line ("           Script name:'vectors_test.ts'; Line:65 ");
          Put_Line ("      ...FAIL.");
          Put_Line ("         (" & "path `=>' was taken, but predicate is FALSE" & ")");
        end if;
      else
        Driver_Internals.Test_Case_Passed := False;
        Driver_Internals.Fail_Result := True;
        Put_Line ("(8)  Test Distance");
        Put_Line ("           Script name:'vectors_test.ts'; Line:65 ");
        Put_Line ("      ...FAIL.");
        Put_Line ("         (" & "path `" & Driver_Internals.Taken_Path & "' when `=>' was expected" & ")");
      end if;
    exception
      when Driver_Internals.Program_Terminate =>
        raise;
      when E: others =>
        Driver_Internals.Unexpected_Error := True;
        Put_Line ("ERROR: exception " & Ada.Exceptions.Exception_Name (E) & " raised in result part of test case 8.");
        raise Driver_Internals.Program_Terminate;
    end;  -- result part
  end;  -- test case

  -- Test Case (9)   Test Distance_To_Origin
  declare
    R: constant Vector := (2.0, 1.0, 0.0);
    Actual: Float;
    Expected: Float := 2.23607;
  begin  -- test case
    begin  -- test part
      Actual := Distance_To_Origin(R);
      Driver_Internals.Set_Path ("=>");
    exception
      when E: others =>
        Driver_Internals.Set_Path (Ada.Exceptions.Exception_Name (E));
    end;  -- test part
    begin  -- result part
      if Driver_Internals.Path_Was ("=>") then
        if abs(Actual - Expected) < 0.001
        then
          Driver_Internals.Test_Case_Passed := True;
          Put_Line ("(9)  pass.");
        else
          Driver_Internals.Test_Case_Passed := False;
          Driver_Internals.Fail_Result := True;
          Put_Line ("(9)  Test Distance_To_Origin");
          Put_Line ("           Script name:'vectors_test.ts'; Line:74 ");
          Put_Line ("      ...FAIL.");
          Put_Line ("         (" & "path `=>' was taken, but predicate is FALSE" & ")");
        end if;
      else
        Driver_Internals.Test_Case_Passed := False;
        Driver_Internals.Fail_Result := True;
        Put_Line ("(9)  Test Distance_To_Origin");
        Put_Line ("           Script name:'vectors_test.ts'; Line:74 ");
        Put_Line ("      ...FAIL.");
        Put_Line ("         (" & "path `" & Driver_Internals.Taken_Path & "' when `=>' was expected" & ")");
      end if;
    exception
      when Driver_Internals.Program_Terminate =>
        raise;
      when E: others =>
        Driver_Internals.Unexpected_Error := True;
        Put_Line ("ERROR: exception " & Ada.Exceptions.Exception_Name (E) & " raised in result part of test case 9.");
        raise Driver_Internals.Program_Terminate;
    end;  -- result part
  end;  -- test case

  --  End of test cases
  New_Line;
  Put ("Script name 'vectors_test.ts'");
  Put ("; total test result: ");
  if Driver_Internals.Fail_Result then
    Put ("FAIL");
    Driver_Internals.Status := 1;
  else
    Put ("pass");
    Driver_Internals.Status := 0;
  end if;
  Put_Line (".");
  New_Line;
  Ada.Command_Line.Set_Exit_Status (Driver_Internals.Status);

exception
  when Driver_Internals.Program_Terminate =>
    New_Line;
    Put ("Total test result: ");
    if Driver_Internals.Fail_Result then
      Put ("FAIL");
      Driver_Internals.Status := 1;
    else
      Put ("UNDEFINED");
      Driver_Internals.Status := -1;
    end if;
    if Driver_Internals.Unexpected_Error then
      Put_Line (",");
      Put_Line ("        there were one or more errors outside of test cases.");
      Driver_Internals.Status := -1;
    else
      Put_Line (".");
    end if;
    New_Line;
    Ada.Command_Line.Set_Exit_Status (Driver_Internals.Status);
  when E: others =>
    New_Line;
    Put_Line ("Unexpected exception " & Ada.Exceptions.Exception_Name (E) & " propagating out of driver.");
    Put_Line ("Results are undefined.");
    Driver_Internals.Status := -1;
    Ada.Command_Line.Set_Exit_Status (Driver_Internals.Status);

end vectors_test;
