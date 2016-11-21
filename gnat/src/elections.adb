package body Elections is


   -- Resets the number of made votes and votes for all parties to 0, and
   -- sets the number of total Voters to the given.
   procedure Initialize(Num_Voters: Natural) is
   begin
      Num_Total_Voters := Num_Voters;
      Num_Votes_Made := 0;
      Votes_Distribution := Zero_Votes_Distribution;
   end Initialize;

   procedure Vote_For(Vote: Party) is
   begin
      Num_Votes_Made := Num_Votes_Made+1;
      Votes_Distribution(Vote) := Votes_Distribution(Vote)+1;
   end Vote_For;

   function All_Voters_Voted return Boolean is
   begin
      return Num_Votes_Made = Num_Total_Voters;
   end All_Voters_Voted;

   -- Returns Party with most votes assigned.
   -- Returns None if multiple parties share the highest votes.
   function Find_Winner return Party is
   Maximum : Natural := Votes_Distribution (Votes_Distribution'First);
   Winner : Party := Votes_Distribution'First;
   begin
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

end Elections;
