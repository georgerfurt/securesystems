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
     with Pre => (Amount < Natural'Last - Account.Balance);
     -- deposit not more than can be stored
      
   -- Withdraws Amount from the given Account.   
   procedure Withdraw(Account: in out Account_Type; Amount: Cents_Type)
     with Pre => (Amount <= Account.Balance); 
     -- withdraw not more than stored
 

   -- Transfers Amount from Account From to Account To.   
   procedure Transfer(From: in out Account_Type; 
                      To: in out Account_Type; 
                      Amount: in Cents_Type)
     with Pre => (Amount < From.Balance
     -- transfer not more than stored
              and Amount < Natural'Last - To.Balance);
     -- transfer not more than can be stored on "To"-Account
  
end Bank_Accounts;
