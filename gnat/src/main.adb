--  safe and secure systems
--  assignment 2
--
--  by
--  Georg Erfurt  111653
--  Aaron Solbach 112201

with Ada.Float_Text_IO,
     Ada.Text_IO,
     Vectors;
use Vectors;

procedure Main is

   pragma Assertion_Policy (Pre => Check);
   pragma Assertion_Policy (Post => Check);

   package FIO renames Ada.Float_Text_IO;
   package TIO renames Ada.Text_IO;


   Vector_A   : constant Vector := (1.0, 1.0, 0.0);
   Vector_B   : constant Vector := (2.0, 1.0, 0.0);

begin
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
