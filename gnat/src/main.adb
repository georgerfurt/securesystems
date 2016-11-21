--  safe and secure systems
--  assignment 3
--
--  by
--  Georg Erfurt  111653
--  Aaron Solbach 112201
--
--  Under obj/gnattest you can find the aunint tests for the vectors package

procedure Main is

   pragma Assertion_Policy(Pre => Check);
   pragma Assertion_Policy(Post => Check);

begin
  null;
end Main;
