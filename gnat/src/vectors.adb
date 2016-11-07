with Ada.Text_IO,
     Ada.Float_Text_IO;

package body Vectors is

   --  Adds two vectors dimension-wise.
   function "+" (Left : Vector; Right : Vector) return Vector is
      Sum : Vector;
   begin
      Sum.X := Left.X + Right.X;
      Sum.Y := Left.Y + Right.Y;
      Sum.Z := Left.Z + Right.Z;

      return Sum;
   end "+";

   --  Subtracts the right vector from the left one dimension-wise.
   function "-" (Left : Vector; Right : Vector) return Vector is
      Difference : Vector;
   begin
      Difference.X := Left.X - Right.X;
      Difference.Y := Left.Y - Right.Y;
      Difference.Z := Left.Z - Right.Z;

      return Difference;
   end "-";

   --  Multiplies all dimensions of Left by Right.
   function "*" (Left : Vector; Right : Float) return Vector is
      Product : Vector;
   begin
      Product.X := Left.X * Right;
      Product.Y := Left.Y * Right;
      Product.Z := Left.Z * Right;

      return Product;
   end "*";

   --  Computes the scalar product.
   function "*" (Left : Vector; Right : Vector) return Float is
   begin
      return Left.X * Right.X + Left.Y * Right.Y + Left.Z * Right.Z;
   end "*";

   --  Returns True if all dimensions of Left are equal to that of Right;
   --  Returns False otherwise.
   overriding function "=" (Left : Vector; Right : Vector) return Boolean is
   begin
      if Left.X = Right.X
        and then Left.Y = Right.Y
        and then Left.Z = Right.Y
      then
         return True;
      else
         return False;
      end if;
   end "=";

   --  Determines if both vectors stand orthogonal to each other or not.
   function Are_Orthogonal (Left : Vector; Right : Vector) return Boolean is
   begin
      if Left * Right = 0.0 then
         return True;
      else
         return False;
      end if;
   end Are_Orthogonal;

   --  Computes the cross product.
   function Cross_Product (Left : Vector; Right : Vector) return Vector is
      Product : Vector;
   begin
      Product.X := Left.Y * Right.Z + Left.Z * Right.Y;
      Product.Y := Left.Z * Right.X + Left.X * Right.Z;
      Product.Z := Left.X * Right.Y + Left.Y * Right.X;

      return Product;
   end Cross_Product;

   --  Computes the distance between both vectors.
   function Distance (Left : Vector; Right : Vector) return Float is
   begin
      return Distance_To_Origin (Right - Left);
   end Distance;

   --  Computes the distance to the origin of the coordinate system.
   function Distance_To_Origin (Item : Vector) return Float is
      package Math is new Ada.Numerics.Generic_Elementary_Functions (Float);
   begin
      return Math.Sqrt (Item.X * Item.X + Item.Y * Item.Y + Item.Z * Item.Z);
   end Distance_To_Origin;

   --  Prints the vector in the format (X, Y, Z).
   procedure Put (Item : Vector) is
   begin
      Ada.Text_IO.Put ("(");
      Ada.Float_Text_IO.Put (Item => Item.X, Fore => 0, Aft => 2, Exp => 0);
      Ada.Text_IO.Put (", ");
      Ada.Float_Text_IO.Put (Item => Item.Y, Fore => 0, Aft => 2, Exp => 0);
      Ada.Text_IO.Put (", ");
      Ada.Float_Text_IO.Put (Item => Item.Z, Fore => 0, Aft => 2, Exp => 0);
      Ada.Text_IO.Put (")");
   end Put;

end Vectors;
