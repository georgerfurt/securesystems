with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure Box_Dimensions is
   X, Y, Z : Integer;
begin
   Put ("Enter the three edges of a box in cm: ");

   Get (X);
   Get (Y);
   Get (Z);

   Put ("The volume of the box is: ");
   Put (X*Y*Z);
   Put ("cm^3");
   New_Line;

   Put ("The surface of the box is: ");
   Put (2*X*Y + 2*X*Z + 2*Y*Z);
   Put ("cm^2");
   New_Line;

end Box_Dimensions;
