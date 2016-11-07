package Vectors is
    type Vector is record
        X: Float := 0.0;
        Y: Float := 0.0;
        Z: Float := 0.0;
    end record;
    
   function "+"(Left: Vector; Right: Vector) return Vector
     with Post => ( "+"'Result.X = Left.X + Right.X and then 
           "+"'Result.Y = Left.Y + Right.Y and then
           "+"'Result.Z = Left.Z + Right.Z);
    -- Adds two vectors dimension-wise.
    function "-"(Left: Vector; Right: Vector) return Vector
      with Post => ( "-"'Result.X = Left.X - Right.X and then 
            "-"'Result.Y = Left.Y - Right.Y and then
            "-"'Result.Z = Left.Z - Right.Z);
    -- Subtracts the right vector from the left one dimension-wise.
    function "*"(Left: Vector; Right: Float) return Vector
      with Post => ( "*"'Result.X = Left.X * Right and then 
            "*"'Result.Y = Left.Y * Right and then
            "*"'Result.Z = Left.Z * Right);
    -- Multiplies all dimensions of Left by Right.
    function "*"(Left: Vector; Right: Vector) return Float
      with Post => ( "*"'Result = Left.X * Right.X + Left.Y * Right.Y + Left.Z * Right.Z);
    -- Computes the scalar product.
    function "="(Left: Vector; Right: Vector) return Boolean
      with Post => ( if (Left.X = Right.X
                       and Left.Y = Right.Y
                       and Left.Z = Right.Y) then
                      "="'Result
                     else
                      "="'Result = false);  
    -- Returns True if all dimensions of Left are equal to that of Right;
    -- Returns False otherwise.
    function Are_Orthogonal(Left: Vector; Right: Vector) return Boolean
      with Post => ( if (Left * Right = 0.0) then
                        Are_Orthogonal'Result
                     else
                        Are_Orthogonal'Result = false);
         
    -- Determines if both vectors stand orthogonal to each other or not.
    function Cross_Product(Left: Vector; Right: Vector) return Vector
     with Post => ( Cross_Product'Result.X = Left.Y * Right.Z + Left.Z * Right.Y and then
                Cross_Product'Result.Y = Left.Z * Right.X + Left.X * Right.Z and then
                Cross_Product'Result.Z = Left.X * Right.Y + Left.Y * Right.X);   
    -- Computes the cross product.
    function Distance(Left: Vector; Right: Vector) return Float;
      --with Post => ( Distance'Result = Sqrt (( Left.X - Right.X) * (Left.X - Right.X) + (Left.Y - Right.Y) * (Left.Y - Right.Y) + (Left.Z - Right.Z) * (Left.Z - Right.Z)));
    -- Computes the distance between both vectors.
    function Distance_To_Origin(Item: Vector) return Float;
      --with Post => ( Distance_To_Origin'Result = Math.Sqrt (Item.X * Item.X + Item.Y * Item.Y + Item.Z * Item.Z)); 
    -- Computes the distance to the origin of the coordinate system.
    procedure Put(Item: Vector);
    -- Prints the vector in the format (X, Y, Z).
end Vectors;
