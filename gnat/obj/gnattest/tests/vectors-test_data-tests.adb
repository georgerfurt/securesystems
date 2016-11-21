--  This package has been generated automatically by GNATtest.
--  You are allowed to add your code to the bodies of test routines.
--  Such changes will be kept during further regeneration of this file.
--  All code placed outside of test routine bodies will be lost. The
--  code intended to set up and tear down the test environment should be
--  placed into Vectors.Test_Data.

with Ada.Numerics.Generic_Elementary_Functions;
with AUnit.Assertions; use AUnit.Assertions;
with System.Assertions;

package body Vectors.Test_Data.Tests is


--  begin read only
   procedure Test_Plus (Gnattest_T : in out Test);
   procedure Test_Plus_685267 (Gnattest_T : in out Test) renames Test_Plus;
--  id:2.2/685267b08e1c3bf2/Plus/1/0/
   procedure Test_Plus (Gnattest_T : in out Test) is
   --  vectors.ads:13:4:"+"
--  end read only

      procedure Check_Addition (Left, Right : Vector; Complaint : String) is
         Result : Vector;
         Epsilon : Float := 0.0000001;
      begin
         Result := Left + Right;
         AUnit.Assertions.Assert
           (abs (Result.X - (Left.X + Right.X)) < Epsilon and then
            abs (Result.Y - (Left.Y + Right.Y)) < Epsilon and then
            abs (Result.Z - (Left.Z + Right.Z)) < Epsilon,
            Complaint);
      end;

      T : Test renames Gnattest_T;
   begin

      Check_Addition (T.Vec_Zero, T.Vec_Positive, "Addition: ZeroVec + PositiveVec failed.");
      Check_Addition (T.Vec_Zero, T.Vec_Negative, "Addition: ZeroVec + NegativeVec failed.");
      Check_Addition (T.Vec_Negative, T.Vec_Positive, "Addition: NegativeVec + PositiveVec failed.");
      Check_Addition (T.Vec_Positive, T.Vec_Positive, "Addition: PositiveVec + PositiveVec failed.");
      Check_Addition (T.Vec_Negative, T.Vec_Negative, "Addition: NegativeVec + NegativeVec failed.");

--  begin read only
   end Test_Plus;
--  end read only


--  begin read only
   procedure Test_Minus (Gnattest_T : in out Test);
   procedure Test_Minus_2a1ebe (Gnattest_T : in out Test) renames Test_Minus;
--  id:2.2/2a1ebe878fdf8aa3/Minus/1/0/
   procedure Test_Minus (Gnattest_T : in out Test) is
   --  vectors.ads:25:4:"-"
--  end read only

      procedure Check_Substraction (Left, Right : Vector; Complaint : String) is
         Result : Vector;
         Epsilon : Float := 0.0000001;
      begin
         Result := Left - Right;
         AUnit.Assertions.Assert
           (abs (Result.X - (Left.X - Right.X)) < Epsilon and then
            abs (Result.Y - (Left.Y - Right.Y)) < Epsilon and then
            abs (Result.Z - (Left.Z - Right.Z)) < Epsilon,
            Complaint);
      end;

      T : Test renames Gnattest_T;
   begin

      Check_Substraction (T.Vec_Zero, T.Vec_Positive, "Substraction: ZeroVec - PositiveVec failed.");
      Check_Substraction (T.Vec_Zero, T.Vec_Negative, "Substraction: ZeroVec - NegativeVec failed.");
      Check_Substraction (T.Vec_Negative, T.Vec_Positive, "Substraction: NegativeVec - PositiveVec failed.");
      Check_Substraction (T.Vec_Positive, T.Vec_Positive, "Substraction: PositiveVec - PositiveVec failed.");
      Check_Substraction (T.Vec_Negative, T.Vec_Negative, "Substraction: NegativeVec - NegativeVec failed.");

--  begin read only
   end Test_Minus;
--  end read only


--  begin read only
   procedure Test_1_Multiply (Gnattest_T : in out Test);
   procedure Test_Multiply_5b4755 (Gnattest_T : in out Test) renames Test_1_Multiply;
--  id:2.2/5b4755363139e7e9/Multiply/1/0/
   procedure Test_1_Multiply (Gnattest_T : in out Test) is
   --  vectors.ads:37:4:"*"
--  end read only

      procedure Check_Mult_With_Scalar (Vec : Vector; Scalar : Float; Complaint : String) is
         Result : Vector;
         Epsilon : Float := 0.0000001;
      begin
         Result := Vec * Scalar;
         AUnit.Assertions.Assert
           (abs (Result.X - (Vec.X * Scalar)) < Epsilon and then
            abs (Result.Y - (Vec.Y * Scalar)) < Epsilon and then
            abs (Result.Z - (Vec.Z * Scalar)) < Epsilon,
            Complaint);
      end;

      T : Test renames Gnattest_T;
   begin

      Check_Mult_With_Scalar (T.Vec_Positive, T.Float_Zero, "Multiplication with Scalar: PositiveVec * Zero failed.");

--  begin read only
   end Test_1_Multiply;
--  end read only


--  begin read only
   procedure Test_2_Multiply (Gnattest_T : in out Test);
   procedure Test_Multiply_beba9c (Gnattest_T : in out Test) renames Test_2_Multiply;
--  id:2.2/beba9c9c3ce48201/Multiply/0/0/
   procedure Test_2_Multiply (Gnattest_T : in out Test) is
   --  vectors.ads:49:4:"*"
--  end read only

      procedure Check_Scalar_Product (Left, Right : Vector; Complaint : String) is
         Result : Float;
         Epsilon : Float := 0.0000001;
      begin
         Result := Left * Right;
         AUnit.Assertions.Assert
           (abs (Result - (Left.X * Right.X + Left.Y * Right.Y + Left.Z * Right.Z)) < Epsilon,
            Complaint);
      end;

      T : Test renames Gnattest_T;
   begin

      Check_Scalar_Product (T.Vec_Positive, T.Vec_Negative, "Scalarroduct: PositiveVec * PositiveVec failed.");

--  begin read only
   end Test_2_Multiply;
--  end read only


--  begin read only
   procedure Test_Equal (Gnattest_T : in out Test);
   procedure Test_Equal_49fd3e (Gnattest_T : in out Test) renames Test_Equal;
--  id:2.2/49fd3e7b9a097eb1/Equal/1/0/
   procedure Test_Equal (Gnattest_T : in out Test) is
   --  vectors.ads:61:4:"="
--  end read only

      procedure Check_Equal (Left, Right : Vector; Complaint : String) is
         Epsilon : Float := 0.0000001;
      begin
         AUnit.Assertions.Assert
           (abs (Left.X - Right.X) < Epsilon and then
            abs (Left.Y - Right.Y) < Epsilon and then
            abs (Left.Z - Right.Z) < Epsilon,
            Complaint);
      end;

      T : Test renames Gnattest_T;
   begin

      Check_Equal (T.Vec_Positive, T.Vec_Positive, "Equal: PositiveVec * PositiveVec failed.");

--  begin read only
   end Test_Equal;
--  end read only


--  begin read only
   procedure Test_Are_Orthogonal (Gnattest_T : in out Test);
   procedure Test_Are_Orthogonal_b1a358 (Gnattest_T : in out Test) renames Test_Are_Orthogonal;
--  id:2.2/b1a3580adf0a1050/Are_Orthogonal/1/0/
   procedure Test_Are_Orthogonal (Gnattest_T : in out Test) is
   --  vectors.ads:82:4:Are_Orthogonal
--  end read only

      procedure Check_Orthogonal (Left, Right : Vector; Complaint : String) is
         Result : Boolean;
      begin
         Result := Are_Orthogonal (Left, Right);
         AUnit.Assertions.Assert
           (Result = (Left.X * Right.X + Left.Y * Right.Y + Left.Z * Right.Z = 0.0),
            Complaint);
      end;

      T : Test renames Gnattest_T;
   begin

      Check_Orthogonal ((2.0, 1.0, 0.0), (3.0, -6.0, 8.0), "Orthogonal: failed");

--  begin read only
   end Test_Are_Orthogonal;
--  end read only


--  begin read only
   procedure Test_Cross_Product (Gnattest_T : in out Test);
   procedure Test_Cross_Product_e31fc4 (Gnattest_T : in out Test) renames Test_Cross_Product;
--  id:2.2/e31fc4ebb5d479b6/Cross_Product/1/0/
   procedure Test_Cross_Product (Gnattest_T : in out Test) is
   --  vectors.ads:101:4:Cross_Product
--  end read only

      procedure Check_Cross_Product (Left, Right : Vector; Complaint : String) is
         Result : Vector;
         Epsilon : Float := 0.0000001;
      begin
         Result := Cross_Product(Left, Right);
         AUnit.Assertions.Assert
           (abs (Result.X - (Left.Y * Right.Z + Left.Z * Right.Y)) < Epsilon and then
            abs (Result.Y - (Left.Z * Right.X + Left.X * Right.Z)) < Epsilon and then
            abs (Result.Z - (Left.X * Right.Y + Left.Y * Right.X)) < Epsilon,
            Complaint);
      end;

      T : Test renames Gnattest_T;
   begin

      Check_Cross_Product(T.Vec_Positive, T.Vec_Positive, "Cross Product: PositiveVec * PositiveVec failed.");

--  begin read only
   end Test_Cross_Product;
--  end read only


--  begin read only
   procedure Test_Distance (Gnattest_T : in out Test);
   procedure Test_Distance_d6226c (Gnattest_T : in out Test) renames Test_Distance;
--  id:2.2/d6226c858c773ecf/Distance/1/0/
   procedure Test_Distance (Gnattest_T : in out Test) is
   --  vectors.ads:113:4:Distance
--  end read only
      procedure Check_Distance (Left, Right : Vector; Complaint : String) is
         package Math is new Ada.Numerics.Generic_Elementary_Functions (Float);

         Result : Float;
         Epsilon : Float := 0.0000001;
      begin
         Result := Distance(Left, Right);
         AUnit.Assertions.Assert
           (abs (Result - Math.Sqrt ((Left.X - Right.X) * (Left.X - Right.X)
            + (Left.Y - Right.Y) * (Left.Y - Right.Y)
            + (Left.Z - Right.Z) * (Left.Z - Right.Z))) < Epsilon,
            Complaint);
      end Check_Distance;

      T : Test renames Gnattest_T;
   begin

      Check_Distance (T.Vec_Positive, T.Vec_Negative, "Distance: Pos, Neg failed.");

--  begin read only
   end Test_Distance;
--  end read only


--  begin read only
   procedure Test_Distance_To_Origin (Gnattest_T : in out Test);
   procedure Test_Distance_To_Origin_c0eb3b (Gnattest_T : in out Test) renames Test_Distance_To_Origin;
--  id:2.2/c0eb3b364d08d3fb/Distance_To_Origin/1/0/
   procedure Test_Distance_To_Origin (Gnattest_T : in out Test) is
   --  vectors.ads:120:4:Distance_To_Origin
--  end read only
      procedure Check_Distance_To_Origin (Left : Vector; Complaint : String) is
         package Math is new Ada.Numerics.Generic_Elementary_Functions (Float);

         Result : Float;
         Epsilon : Float := 0.0000001;
      begin
         Result := Distance_To_Origin(Left);
         AUnit.Assertions.Assert
           (abs (Result - Math.Sqrt ((Left.X) * (Left.X)
            + (Left.Y) * (Left.Y)
            + (Left.Z * (Left.Z)))) < Epsilon,
            Complaint);
      end Check_Distance_To_Origin;

      T : Test renames Gnattest_T;
   begin

      Check_Distance_To_Origin (T.Vec_Positive, "Distance To Origin: Pos failed.");
      pragma Unreferenced (Gnattest_T);

   --  begin read only
   end Test_Distance_To_Origin;
--  end read only


--  begin read only
   procedure Test_Put (Gnattest_T : in out Test);
   procedure Test_Put_ce4f36 (Gnattest_T : in out Test) renames Test_Put;
--  id:2.2/ce4f3687366e8d71/Put/1/0/
   procedure Test_Put (Gnattest_T : in out Test) is
   --  vectors.ads:130:4:Put
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (True,
         "Test not implemented.");

--  begin read only
   end Test_Put;
--  end read only

end Vectors.Test_Data.Tests;
