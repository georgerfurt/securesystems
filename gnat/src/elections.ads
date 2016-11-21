package Elections is
    type Party is (None, A, B, C, D);
    type Votes_Array is array(Party) of Natural;

    Zero_Votes_Distribution: constant Votes_Array := (others => 0);
    Votes_Distribution: Votes_Array := Zero_Votes_Distribution;
    Num_Votes_Made: Natural := 0;
    Num_Total_Voters: Natural := 0;
   Incer: Integer := 1;
   -- Resets the number of made votes and votes for all parties to 0, and
   -- sets the number of total Voters to the given.
   procedure Initialize (Num_Voters: Natural) with
     Post => (Num_Votes_Made = 0 and then
                Votes_Distribution = Zero_Votes_Distribution);

   procedure Vote_For (Vote: Party);-- with
   --  Post => (Votes_Distribution(Party) = Votes_Distribution(Party)'Old + Incer);

   function All_Voters_Voted return Boolean with
     Post => ((Num_Votes_Made = Num_Total_Voters and then All_Voters_Voted'Result) or
                  (Num_Votes_Made < Num_Total_Voters and then not All_Voters_Voted'Result));

   -- Returns Party with most votes assigned.
   -- Returns None if multiple parties share the highest votes.
   function Find_Winner return Party;

end Elections;
