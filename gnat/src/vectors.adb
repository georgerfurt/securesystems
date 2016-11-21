with Ada.Text_IO,
     Ada.Float_Text_IO;
package body Vectors is

   -- Adds two vectors dimension-wise.
   function "+" (Left : Vector; Right : Vector) return Vector is
      Sum : Vector;
   begin
      Sum := (Left.X + Right.X, Left.Y + Right.Y, Left.Z + Right.Z);

      return Sum;
   end;

   -- Subtracts the right vector from the left one dimension-wise.
   function "-" (Left : Vector; Right : Vector) return Vector is
      Difference : Vector;
   begin
      Difference := (Left.X - Right.X, Left.Y - Right.Y, Left.Z - Right.Z);

      return Difference;
   end;

   -- Multiplies all dimensions of Left by Right.
   function "*" (Left : Vector; Right : Float) return Vector is
      Product : Vector;
   begin
      Product := (Left.X * Right, Left.Y * Right, Left.Z * Right);

      return Product;
   end;

   -- Computes the scalar product.
   function "*" (Left : Vector; Right : Vector) return Float is
   begin
      return Left.X * Right.X + Left.Y * Right.Y + Left.Z * Right.Z;
   end;

   -- Returns True if all dimensions of Left are equal to that of Right;
   -- Returns False otherwise.
   function "="(Left : Vector; Right : Vector) return Boolean is
   begin
      return (abs (Left.X - Right.X) < Epsilon
          and then abs (Left.Y - Right.Y) < Epsilon
          and then abs (Left.Z - Right.Z) < Epsilon);
   end;

   -- Determines if both vectors stand orthogonal to each other or not.
   function Are_Orthogonal (Left : Vector; Right : Vector) return Boolean is
   begin
      if abs (Left * Right) < Epsilon then
         return true;
      else
         return false;
      end if;
   end;

   -- Computes the cross product.
   function Cross_Product (Left : Vector; Right : Vector) return Vector is
      Product : Vector;
   begin
      Product := (Left.Y * Right.Z - Left.Z * Right.Y,
                  Left.Z * Right.X - Left.X * Right.Z,
                  Left.X * Right.Y - Left.Y * Right.X);

      return Product;
   end;

   -- Computes the distance between both vectors.
   function Distance (Left : Vector; Right : Vector) return Float is
   begin
      return Distance_To_Origin (Right - Left);
   end;

   -- Computes the distance to the origin of the coordinate system.
   function Distance_To_Origin (Item : Vector) return Float is
      package Math is new Ada.Numerics.Generic_Elementary_Functions (Float);
   begin
      return Math.Sqrt (Item.X * Item.X + Item.Y * Item.Y + Item.Z * Item.Z);
   end;

   -- Prints the vector in the format (X, Y, Z).
   procedure Put (Item : Vector) is
   begin
      Ada.Text_IO.Put ("(");
      Ada.Float_Text_IO.Put (Item.X);
      Ada.Text_IO.Put (", ");
      Ada.Float_Text_IO.Put (Item.X);
      Ada.Text_IO.Put (", ");
      Ada.Float_Text_IO.Put (Item.Z);
      Ada.Text_IO.Put (")");
   end;

end Vectors;
