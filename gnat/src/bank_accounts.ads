package Bank_Accounts is
   subtype Cents_Type is Natural;
   --  changed from Integer to Natural: replaces checking for positive values

   type Account_Type is record
      Balance : Cents_Type := 0;
   end record;

   --  Returns the current Balance from Account.
   function Get_Balance (Account : Account_Type) return Cents_Type;

   --  Deposits Amount at the given Account.
   procedure Deposit (Account : in out Account_Type; Amount : Cents_Type)
     with Pre  => (Amount <= Natural'Last - Account.Balance),
          Post => (Account.Balance = Account'Old.Balance + Amount);
   --  PRE
   --  deposit not more than can be stored
   --  POST
   --  new account valaue is old amount plus amount to deposit

   --  Withdraws Amount from the given Account.
   procedure Withdraw (Account : in out Account_Type; Amount : Cents_Type)
     with Pre  => (Amount <= Account.Balance),
          Post => (Account.Balance = Account'Old.Balance - Amount);
   --  PRE
   --  withdraw not more than stored
   --  POST
   --  new account valaue is old amount minus amount to withdraw

   --  Transfers Amount from Account From to Account To.
   procedure Transfer (From   : in out Account_Type;
                       To     : in out Account_Type;
                       Amount : Cents_Type)
     with Pre  => (Amount < From.Balance
                   and then Amount < Natural'Last - To.Balance
                   and then From /= To),

          Post => (From.Balance = From'Old.Balance - Amount
                   and then To.Balance = To'Old.Balance + Amount);
   --  PRE
   --  transfer not more than stored
   --  transfer not more than can be stored on "To"-Account
   --  Accounts should not be the same
   --  POST
   --  correct amount substracted from "From"-Account
   --  correct amount added to "To"-Account

end Bank_Accounts;
