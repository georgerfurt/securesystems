-- safe and secure systems
-- assignment 2
--
-- by
-- Georg Erfurt  111653
-- Aaron Solbach 112201

with Ada.Integer_Text_IO,
     Ada.Float_Text_IO,
     Ada.Text_IO,
     Ada.Assertions;
with Cards, Bank_Accounts, Vectors;
use Bank_Accounts, Vectors;


procedure Main is
   pragma Assertion_Policy(Pre => Check);
   pragma Assertion_Policy(Post => Check);
   My_Account : Account_Type;
   Balance    : Cents_Type;
   Vector_A   : constant Vector := (1.0, 1.0, 0.0);
   Vector_B   : constant Vector := (2.0, 1.0, 0.0);
   Vector_C   : Vector;

   package IIO renames Ada.Integer_Text_IO;
   package FIO renames Ada.Float_Text_IO;
   package TIO renames Ada.Text_IO;
begin
   Cards;

   Bank_Accounts.Deposit (My_Account, 2147483600);
-- Bank_Accounts.Deposit (My_Account, 50);
   Balance := Bank_Accounts.Get_Balance(My_Account);
   IIO.Put (Balance);
   TIO.New_Line;

   Vector_C := Vector_B - Vector_A;
   FIO.Put (Distance_To_Origin (Vector_C));
   FIO.Put (Distance (Vector_A, Vector_B));
end Main;
