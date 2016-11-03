with Ada.Text_IO;
use Ada.Text_IO;

procedure Animals is
   type State is (Start, Ready, Household, Wild);

   Answer             : Character;
   Current_State      : State    := Start;
   Yes                : Boolean;
begin
   Put("Pick one of these animals and keep it in mind: ");
   New_Line;
   Put("1) Cat");
   New_Line;
   Put("2) Elephant");
   New_Line;
   Put("3) Giraffe");
   New_Line;
   Put("4) Dog");
   New_Line;

   Outer:
   loop
      case Current_State is
         when Start =>
            Put("Ready? (y/n) ");
         when Ready =>
            Put("Is it a household pet? (y/n) ");
         when Household =>
            Put("Does it purr?");
         when Wild =>
            Put("Has it a long neck?");
      end case;

      Inner:
      loop
         Get(Answer);
         if Answer = 'Y' or Answer = 'y' then
            Yes := TRUE;
            exit Inner;
         elsif Answer = 'N' or Answer = 'n' then
            Yes := FALSE;
            exit Inner;
         end if;
      end loop Inner;

      case Current_State is
         when Start =>
            if Yes then
               Current_State := Ready;
            end if;
         when Ready =>
            if Yes then
               Current_State := Household;
            else
               Current_State := Wild;
            end if;
         when Household =>
            if Yes then
               Put("It is a cat!");
               exit;
            else
               Put("It is a dog!");
               exit;
            end if;
         when Wild =>
            if Yes then
              Put("It is a giraffe!");
              exit;
            else
               Put("It is an elepant!");
               exit;
            end if;
      end case;



   end loop Outer;
end Animals;
