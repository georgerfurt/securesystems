-- safe and secure systems
-- assignment 2
--
-- by
-- Georg Erfurt  111653
-- Aaron Solbach 112201

with Ada.Integer_Text_IO, Cards, Bank_Accounts;
use Ada.Integer_Text_IO, Bank_Accounts;

procedure Main is
   My_Account : Account_Type;
   Balance : Cents_Type;
begin
   Cards;
   Bank_Accounts.Deposit (My_Account, 2147483600);
   Bank_Accounts.Deposit (My_Account, 50);
   Balance := Bank_Accounts.Get_Balance(My_Account);
   Put (Balance);
   Put (Natural'Last);
end Main;
