-- safe and secure systems
-- assignment 2
--
-- by
-- Georg Erfurt  111653
-- Aaron Solbach 112201

with Ada.Integer_Text_IO,
     Ada.Float_Text_IO,
     Ada.Text_IO;
with Cards, Bank_Accounts, Vectors;
use Bank_Accounts, Vectors;


procedure Main is
   pragma Assertion_Policy(Pre => Check);
   pragma Assertion_Policy(Post => Check);
   My_Account : Account_Type;
   My_SecondA : Account_Type;
   Balance    : Cents_Type;
   Balance2   : Cents_Type;
   Balance3   : Cents_Type;
   Balance4   : Cents_Type;
   Vector_A   : constant Vector := (1.0, 1.0, 0.0);
   Vector_B   : constant Vector := (2.0, 1.0, 0.0);
   Vector_C   : Vector;
   Vector_D   : Vector;
   Vector_E   : Vector;


   package IIO renames Ada.Integer_Text_IO;
   package FIO renames Ada.Float_Text_IO;
   package TIO renames Ada.Text_IO;
begin
   Cards;

   Bank_Accounts.Deposit (My_Account, 2147483600);
   Bank_Accounts.Deposit (My_SecondA, 50);
   Balance := Bank_Accounts.Get_Balance(My_Account);
   Balance2 := Bank_Accounts.Get_Balance(My_SecondA);
   IIO.Put (Balance);
   TIO.New_Line;
   IIO.Put (Balance2);
   TIO.New_Line;

   Bank_Accounts.Transfer(My_Account, My_SecondA, 40);
   Balance3 := Bank_Accounts.Get_Balance(My_Account);
   Balance4 := Bank_Accounts.Get_Balance(My_SecondA);
   IIO.Put (Balance3);
   TIO.New_Line;
   IIO.Put (Balance4);
   TIO.New_Line;



   Vector_C := Vector_B - Vector_A;
   FIO.Put (Distance_To_Origin (Vector_C));
   FIO.Put (Distance (Vector_A, Vector_B));
   Vector_D := Vector_B + Vector_A;
   Put (Vector_D);
   FIO.Put (Vector_B * Vector_A);
   Vector_E := Vector_B * 2.0;
   Put (Vector_E);

end Main;
