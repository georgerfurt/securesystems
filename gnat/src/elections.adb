package body Elections is
    type Party is (None, A, B, C, D);
    type Votes_Array is array(Party) of Natural;

    Zero_Votes_Distribution: constant Votes_Array := (others => 0);
    Votes_Distribution: Votes_Array := Zero_Votes_Distribution;
    Num_Votes_Made: Natural := 0;
    Num_Total_Voters: Natural := 0;

   -- Resets the number of made votes and votes for all parties to 0, and
   -- sets the number of total Voters to the given.
<<<<<<< HEAD
   procedure Initialize (Num_Voters: Natural) with
     Post => (Num_Votes_Made = 0 and then
                Votes_Distribution = Zero_Votes_Distribution);

   procedure Vote_For (Vote: Party) with
     Post => (Votes_Distribution(Party) = Votes_Distribution(Party)'Old +1 and then
                  Votes_Distribution(Party) = Votes_Distribution(Party)'Old);

   function All_Voters_Voted return Boolean with
     Post => ((Num_Votes_Made = Num_Total_Voters and then All_Voters_Voted'Result) or
                  (Num_Votes_Made < Num_Total_Voters and then not All_Voters_Voted'Result));

   -- Returns Party with most votes assigned.
   -- Returns None if multiple parties share the highest votes.
   function Find_Winner return Party;
=======
   procedure Initialize(Num_Voters: Natural) is
   begin
      Num_Total_Voters := Num_Voters;
      Num_Votes_Made := 0;
      Votes_Distribution := Zero_Votes_Distribution;
   end;

   procedure Vote_For(Vote: Party) is
   begin
      Num_Votes_Made+=1;
      Votes_Distribution(Vote) := Votes_Distribution(Vote)+1;
   end;

   function All_Voters_Voted return Boolean is
   begin
      return Num_Votes_Made = Num_Total_Voters;
   end;

   -- Returns Party with most votes assigned.
   -- Returns None if multiple parties share the highest votes.
   function Find_Winner return Party is
   begin
      Maximum : Element_Type := Votes_Distribution (Votes_Distribution'First);
      Winner : Party := Votes_Distribution(Votes_Distribution'First);

      for I in Votes_Distribution'First + 1 .. Votes_Distribution'Last loop
      if Votes_Distribution(I) > Maximum then
            Maximum := Votes_Distribution (I);
            Winner := I;
         elsif Votes_Distribution(I) = Maximum then
            Winner := none;

      end if;
      end loop;

      return Winner;

   end;
>>>>>>> 5f9ac48c068ad143af7d866bbbbbe115c1166d62

end Elections;
