package body Bank_Accounts is

   function Get_Balance (Account : in Account_Type) return Cents_Type is
   begin
      -- Returns the current Balance from Account.

      return Account.Balance;

   end Get_Balance;

   procedure Deposit(Account: in out Account_Type; Amount: Cents_Type) is
   begin
      -- Deposits Amount at the given Account.
      -- not negative

      Account.Balance := Account.Balance + Amount;

   end Deposit;

   procedure Withdraw(Account: in out Account_Type; Amount: Cents_Type) is
   begin
      Account.Balance := Account.Balance - Amount;
   end Withdraw;

   procedure Transfer(From: in out Account_Type;
                      To: in out Account_Type;
                      Amount: in Cents_Type) is
   begin
      -- Transfers Amount from Account From to Account To.

      From.Balance := From.Balance - Amount;
      To.Balance := To.Balance + Amount;

   end;

end Bank_Accounts;

-- CHECK OVERFLOW
