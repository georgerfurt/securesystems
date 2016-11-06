-- task 5.4 from "Ada 95: The Craft of Object-Oriented Programming" by John English
with Ada.Numerics.Discrete_Random, Ada.Text_IO;
use  Ada.Text_IO;

procedure Card is

   type Suit is (Club, Diamonds, Hearts, Spades);
--     Club     : constant Suit := 0;
--     Diamonds : constant Suit := 1;
--     Hearts   : constant Suit := 2;
--     Spades   : constant Suit := 3;

   type Card_Value is (Ace, Two, Three, Four, Fife, Six, Seven, Eight, Nine,
                       Ten, Jack, Queen, King);
--     Ace   : constant Card_Value := 0;
--     Two   : constant Card_Value := 1;
--     Three : constant Card_Value := 2;
--     Four  : constant Card_Value := 3;
--     Fife  : constant Card_Value := 4;
--     Six   : constant Card_Value := 5;
--     Seven : constant Card_Value := 6;
--     Eight : constant Card_Value := 7;
--     Nine  : constant Card_Value := 8;
--     Ten   : constant Card_Value := 9;
--     Jack  : constant Card_Value := 10;
--     Queen : constant Card_Value := 11;
--     King  : constant Card_Value := 12;

   package Random_Suit is new Ada.Numerics.Discrete_Random (Suit);
   Suit_Gen : Random_Suit.Generator;

   package Random_Card_Value is new Ada.Numerics.Discrete_Random (Card_Value);
   Card_Value_Gen : Random_Card_Value.Generator;

   Current_Suit       : Suit;
   Current_Card_Value : Card_Value;
begin
   Random_Suit.Reset (Suit_Gen);
   Random_Card_Value.Reset (Card_Value_Gen);
   for N in 1..3 loop
      Current_Suit := Random_Suit.Random (Suit_Gen);
      Current_Card_Value := Random_Card_Value.Random (Card_Value_Gen);
      Put_Line (Suit'Image (Current_Suit) & " " & Card_Value'Image
                (Current_Card_Value));
   end loop;
end Card;
