package Bank_Accounts is
   subtype Cents_Type is Natural; 
   -- changed from Integer to Natural: replaces checking for positive values
    
   type Account_Type is record
      Balance: Cents_Type := 0;
   end record;
   
   -- Returns the current Balance from Account.    
   function Get_Balance(Account: Account_Type) return Cents_Type;

   -- Deposits Amount at the given Account.   
   procedure Deposit(Account: in out Account_Type; Amount: Cents_Type)
     with Pre => (Amount < Natural'Last - Account.Balance),
     -- deposit not more than can be stored
        Post => (Account.Balance = Account'Old.Balance + Amount);
     -- New Account valaue is old amount + amount to deposit
   
      
   -- Withdraws Amount from the given Account.   
   procedure Withdraw(Account: in out Account_Type; Amount: Cents_Type)
     with Pre => (Amount <= Account.Balance),
     -- withdraw not more than stored
        Post => (Account.Balance = Account'Old.Balance - Amount);
     -- New Account valaue is old amount - amount to withdraw

 

   -- Transfers Amount from Account From to Account To.   
   procedure Transfer(From: in out Account_Type; 
                      To: in out Account_Type; 
                      Amount: in Cents_Type)
     with Pre => (Amount < From.Balance
     -- transfer not more than stored
                  and then Amount < Natural'Last - To.Balance
     -- transfer not more than can be stored on "To"-Account
                  and then From /= To),
     -- Accounts should not be the same
   Post => (From.Balance = From'Old.Balance - Amount and then
     -- correct amount substracted from "From"-Account
            To.Balance = To'Old.Balance + Amount);
     -- correct amount added to "To"-Account
end Bank_Accounts;
