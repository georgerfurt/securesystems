Context
	with Ada.Numerics.Elementary_Functions; 
	with Ada.Text_IO;
	with Vectors;
	use Ada.Numerics.Elementary_Functions; 
	use Ada.Text_IO;
	use Vectors;

***** Test Add
Define L: constant Vector := (2.0, 3.0, 4.0);
	R: constant Vector := (5.0, 6.0, 7.0);
	Actual: Vector;
	Expected: constant Vector := (L.X + R.X, L.Y + R.Y, L.Z + R.Z);
Test    Actual := L + R;
Pass	abs(Actual.X - Expected.X) < 0.000001 and then abs(Actual.Y - Expected.Y) < 0.000001 and then abs(Actual.Z - Expected.Z) < 0.000001

***** Test Substract
Define L: constant Vector := (10.0, 12.0, 8.0);
	R: constant Vector := (5.0, 6.0, 7.0);
	Actual: Vector;
	Expected: constant Vector := (L.X - R.X, L.Y - R.Y, L.Z - R.Z);
Test    Actual := L - R;
Pass	abs(Actual.X - Expected.X) < 0.000001 and then abs(Actual.Y - Expected.Y) < 0.000001 and then abs(Actual.Z - Expected.Z) < 0.000001

***** Test Multiply
Define L: constant Vector := (10.0, 12.0, 8.0);
	R: constant Vector := (5.0, 6.0, 7.0);
	Actual: Vector;
	Expected: constant Vector := (L.X * R.X, L.Y * R.Y, L.Z * R.Z);
Test    Actual := L - R;
Pass	abs(Actual.X - Expected.X) < 0.000001 and then abs(Actual.Y - Expected.Y) < 0.000001 and then abs(Actual.Z - Expected.Z) < 0.000001