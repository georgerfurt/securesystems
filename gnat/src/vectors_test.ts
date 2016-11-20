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
	R: float := 3.0;
	Actual: Vector;
	Expected: constant Vector := (L.X * R, L.Y * R, L.Z * R);
Test    Actual := L * R;
Pass	abs(Actual.X - Expected.X) < 0.000001 and then abs(Actual.Y - Expected.Y) < 0.000001 and then abs(Actual.Z - Expected.Z) < 0.000001

***** Test Scalar
Define L: constant Vector := (10.0, 12.0, 8.0);
	R: constant Vector := (5.0, 6.0, 7.0);
	Actual: Float;
	Expected: Float := (L.X * R.X + L.Y * R.Y + L.Z * R.Z);
Test    Actual := L * R;
Pass	abs(Actual - Expected) < 0.000001

***** Test Equality
Define L: constant Vector := (2.0, 1.0, 0.0);
	R: constant Vector := (2.0, 1.0, 0.0);
	Actual: Boolean;
	Expected: Boolean := true;
Test    Actual := L = R;
Pass	Actual = Expected

***** Test Orthogonal
Define L: constant Vector := (2.0, 1.0, 0.0);
	R: constant Vector := (3.0, -6.0, 8.0);
	Actual: Boolean;
	Expected: Boolean := true;
Test    Actual := Are_Orthogonal(L,R);
Pass	Actual = Expected

***** Test CrossProduct
Define L: constant Vector := (10.0, 12.0, 8.0);
	R: constant Vector := (5.0, 6.0, 7.0);
	Actual: Vector;
	Expected: constant Vector := (L.Y * R.Z + L.Z * R.Y, L.Z * R.X + L.X * R.Z, L.X * R.Y + L.Y * R.X);
Test    Actual := Cross_Product(L,R);
Pass	abs(Actual.X - Expected.X) < 0.000001 and then abs(Actual.Y - Expected.Y) < 0.000001 and then abs(Actual.Z - Expected.Z) < 0.000001

***** Test Distance
Define L: constant Vector := (1.0, 1.0, 0.0);
	R: constant Vector := (2.0, 1.0, 0.0);
	Actual: Float;
	Expected: Float := 1.0;
Test    Actual := Distance(L, R);
Pass	abs(Actual - Expected) < 0.000001


***** Test Distance_To_Origin
Define 	R: constant Vector := (2.0, 1.0, 0.0);
	Actual: Float;
	Expected: Float := 2.23607;
Test    Actual := Distance_To_Origin(R);
Pass	abs(Actual - Expected) < 0.001












