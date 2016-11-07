--  safe and secure systems
--  assignment 2
--
--  by
--  Georg Erfurt  111653
--  Aaron Solbach 112201

with Ada.Integer_Text_IO,
     Ada.Float_Text_IO,
     Ada.Text_IO,
     Cards,
     Bank_Accounts,
     Vectors;
use Bank_Accounts, Vectors;

procedure Main is

   pragma Assertion_Policy (Pre => Check);
   pragma Assertion_Policy (Post => Check);

   package IIO renames Ada.Integer_Text_IO;
   package FIO renames Ada.Float_Text_IO;
   package TIO renames Ada.Text_IO;

   Account_A : Account_Type;
   Account_B : Account_Type;

   Vector_A   : constant Vector := (1.0, 1.0, 0.0);
   Vector_B   : constant Vector := (2.0, 1.0, 0.0);

begin
   --  cards (from John English)
   TIO.Put_Line ("Task 1) Random cards:");
   TIO.New_Line;
   Cards;
   TIO.New_Line;

   --  bank accounts
   TIO.Put_Line ("Task 2) Bank Accounts");
   TIO.New_Line;

   TIO.Put_Line ("Deposit Natural'Last to Account A");
--   Deposit (Account_A, Natural'Last);
   Deposit (Account_A, 1); -- precondition fails, prevents overflow
   TIO.Put ("Account A: ");
   IIO.Put (Get_Balance (Account_A));
   TIO.New_Line (2);

   TIO.Put_Line ("Deposit Natural'First to Account B");
   Deposit (Account_B, Natural'First);
--  Deposit (Account_B, -1); -- compiler error (Cents_Type changed to Natural)
--  Withdraw (Account_B, 1); -- precondition fails, amount < 0;
   TIO.Put ("Account B: ");
   IIO.Put (Get_Balance (Account_B));
   TIO.New_Line (2);

   TIO.Put_Line ("We add our two cents to Account B");
   Deposit (Account_B, 2);
   TIO.Put ("Account B: ");
   IIO.Put (Get_Balance (Account_A));
   TIO.New_Line (2);

   TIO.Put_Line ("Add 800 cents to Account A");
   Deposit (Account_A, 800);
   TIO.Put ("Account A: ");
   IIO.Put (Get_Balance (Account_B));
   TIO.New_Line (2);

   TIO.Put_Line ("Transfer 748 cents from A to B");
--  Transfer(Account_A, Account_B, Get_Balance(Account_A); -- precondition fails, prevents overflow
--  Transfer(Account_B, Account_A, 3; -- precondition fails, not enough cents on B
   Transfer (Account_A, Account_B, 748);
   TIO.Put ("Account A: ");
   IIO.Put (Get_Balance (Account_A));
   TIO.New_Line;
   TIO.Put ("Account B: ");
   IIO.Put (Get_Balance (Account_B));
   TIO.New_Line (2);

   --  vectors (Mini-Project)
   TIO.Put_Line ("Task 3) Vectors");

   TIO.Put_Line ("Vector addition:");
   Put (Vector_A);
   TIO.Put (" + ");
   Put (Vector_B);
   TIO.Put (" = ");
   Put (Vector_A + Vector_B);
   TIO.New_Line (2);

   TIO.Put_Line ("Vector substraction:");
   Put (Vector_A);
   TIO.Put (" - ");
   Put (Vector_B);
   TIO.Put (" = ");
   Put (Vector_A - Vector_B);
   TIO.New_Line (2);

   TIO.Put_Line ("Scalar-Product:");
   Put (Vector_A);
   TIO.Put (" * ");
   Put (Vector_B);
   TIO.Put (" = ");
   FIO.Put (Vector_A * Vector_B, Fore => 0, Aft => 2, Exp => 0);
   TIO.New_Line (2);

   TIO.Put_Line ("Scalar-Multiplication:");
   Put (Vector_A);
   TIO.Put (" * ");
   FIO.Put (Item => 3.0, Fore => 0, Aft => 2, Exp => 0);
   TIO.Put (" = ");
   Put (Vector_A * 3.0);
   TIO.New_Line (2);

   TIO.Put_Line ("Cross-Product:");
   Put (Vector_A);
   TIO.Put (" x ");
   Put (Vector_B);
   TIO.Put (" = ");
   Put (Cross_Product (Vector_A, Vector_B));
   TIO.New_Line (2);

   TIO.Put_Line ("Distance:");
   TIO.Put ("from");
   Put (Vector_A);
   TIO.Put (" to ");
   Put (Vector_B);
   TIO.Put (" = ");
   FIO.Put (Distance (Vector_A, Vector_B), Fore => 0, Aft => 2, Exp => 0);
   TIO.New_Line (2);

   TIO.Put_Line ("Length of vector:");
   Put (Vector_B);
   TIO.Put (" : ");
   FIO.Put (Distance_To_Origin (Vector_B), Fore => 0, Aft => 2, Exp => 0);
   TIO.New_Line (2);

end Main;
