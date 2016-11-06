-- task 5.4 from "Ada 95: The Craft of Object-Oriented Programming" by John English
with Ada.Numerics.Discrete_Random, Ada.Text_IO;
use  Ada.Text_IO;

procedure Cards is

   type Card_Suit is (Club, Diamonds, Hearts, Spades);
   type Card_Value is (Ace, Two, Three, Four, Fife, Six, Seven, Eight, Nine,
                       Ten, Jack, Queen, King);

   package Random_Suit is new Ada.Numerics.Discrete_Random (Card_Suit);
   package Random_Value is new Ada.Numerics.Discrete_Random (Card_Value);

   Suit_Gen                  : Random_Suit.Generator;
   Value_Gen                 : Random_Value.Generator;

   Suit_A, Suit_B, Suit_C    : Card_Suit;
   Value_A, Value_B, Value_C : Card_Value;

begin
   Random_Suit.Reset (Suit_Gen);
   Random_Value.Reset (Value_Gen);

   -- draw first card
   Suit_A := Random_Suit.Random (Suit_Gen);
   Value_A := Random_Value.Random (Value_Gen);

   -- draw second card
   loop
      Suit_B := Random_Suit.Random (Suit_Gen);
      Value_B := Random_Value.Random (Value_Gen);

      if Suit_B /= Suit_A or Value_B /= Value_A then
         exit;
      end if;
   end loop;

   -- draw third card
   loop
      Suit_C := Random_Suit.Random (Suit_Gen);
      Value_C := Random_Value.Random (Value_Gen);

      if (Suit_C /= Suit_A or Value_C /= Value_A)
        and (Suit_C /= Suit_B or Value_C /= Value_A) then
            exit;
         end if;
   end loop;

   -- print cards
   Put_Line (Suit_A'Image & " " & Value_A'Image);
   Put_Line (Suit_B'Image & " " & Value_B'Image);
   Put_Line (Suit_C'Image & " " & Value_C'Image);

end Cards;
