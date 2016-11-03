with Ada.Text_IO, Ada.Integer_Text_IO;
use  Ada.Text_IO, Ada.Integer_Text_IO;

procedure Calculator is
   First, Second : Integer;
   Operator      : Character;
   Continue      : Character;
   Done          : Boolean;
begin

   Outer:
   loop

      Put ("Enter an expression: ");

      Get (First);
      Get (Operator);
      Get (Second);

      case Operator is
      when '+' =>
         Put (First + Second, Width => 1);
      when '-' =>
         Put (First - Second, Width => 1);
      when '*' =>
         Put (First * Second, Width => 1);
      when '/' =>
         Put (First / Second, Width => 1);
      when others => Put ("Invalid operator '");
         Put (Operator);
         Put ("'");
      end case;
      New_Line;

      Put ("Do you want to evaluate another expression? (y/n) ");

      Inner:
      loop
         Get (Continue);
         if Continue = 'Y' or Continue = 'y' then
               Done := FALSE;
               exit Inner;
         elsif Continue = 'N' or Continue = 'n' then
               Done := TRUE;
               exit Inner;
         end if;
      end loop Inner;

      exit Outer when Done;
   end loop Outer;

end Calculator;

