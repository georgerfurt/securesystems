Context
	with Ada.Text_IO; use Ada.Text_IO;
	with Elections; use Elections;

***** Test Init
Define Voters : constant Natural := 10;
Test    Initialize (Voters);
Pass	Elections.Votes_Distribution = Elections.Zero_Votes_Distribution and then
		Elections.Num_Total_Voters = Voters and then
		Elections.Num_Votes_Made = 0

***** Test Vote
Define 	Voted_Party : constant Party := C;
Test    Elections.Num_Total_Voters := 3;
		Vote_For (Voted_Party);
Pass	Elections.Votes_Distribution(None) = 0 and then
		Elections.Votes_Distribution(A) = 0 and then
		Elections.Votes_Distribution(B) = 0 and then
		Elections.Votes_Distribution(C) = 1 and then
		Elections.Votes_Distribution(D) = 0 

***** Test All_Voters_Voted false
Define 	Voted_Party : constant Party := C;
		Actual : Boolean;
		Expected: constant Boolean := False;
Test    Elections.Num_Total_Voters := 3;
		Elections.Num_Votes_Made := 2;
		Actual := All_Voters_Voted;
Pass	Actual = Expected 

***** Test All_Voters_Voted true
Define 	Voted_Party : constant Party := C;
		Actual : Boolean;
		Expected: constant Boolean := True;
Test    Elections.Num_Total_Voters := 3;
		Elections.Num_Votes_Made := 3;
		Actual := All_Voters_Voted;
Pass	Actual = Expected 

***** Test Find Winner unique
Define 	Actual : Party;
		Expected: constant Party := C;
Test    Elections.Num_Total_Voters := 5;
		Elections.Num_Votes_Made := 5;
		Elections.Votes_Distribution(A) := 1;
		Elections.Votes_Distribution(B) := 1;
		Elections.Votes_Distribution(C) := 2;
		Elections.Votes_Distribution(D) := 1;
		Actual := Find_Winner;
Pass	Actual = Expected 

***** Test Find Winner none
Define 	Actual : Party;
		Expected: constant Party := None;
Test    Elections.Num_Total_Voters := 5;		
		Elections.Num_Votes_Made := 5;
		Elections.Votes_Distribution(A) := 0;
		Elections.Votes_Distribution(B) := 2;
		Elections.Votes_Distribution(C) := 2;
		Elections.Votes_Distribution(D) := 1;
		Actual := Find_Winner;
Pass	Actual = Expected 
