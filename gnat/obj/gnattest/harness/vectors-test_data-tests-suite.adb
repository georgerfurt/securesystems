--  This package has been generated automatically by GNATtest.
--  Do not edit any part of it, see GNATtest documentation for more details.

--  begin read only
with AUnit.Test_Caller;
with Gnattest_Generated;

package body Vectors.Test_Data.Tests.Suite is

   package Runner_1 is new AUnit.Test_Caller
     (GNATtest_Generated.GNATtest_Standard.Vectors.Test_Data.Tests.Test);

   Result : aliased AUnit.Test_Suites.Test_Suite;

   Case_1_1_Test_Plus_685267 : aliased Runner_1.Test_Case;
   Case_2_1_Test_Minus_2a1ebe : aliased Runner_1.Test_Case;
   Case_3_1_Test_Multiply_5b4755 : aliased Runner_1.Test_Case;
   Case_4_1_Test_Multiply_beba9c : aliased Runner_1.Test_Case;
   Case_5_1_Test_Equal_49fd3e : aliased Runner_1.Test_Case;
   Case_6_1_Test_Are_Orthogonal_b1a358 : aliased Runner_1.Test_Case;
   Case_7_1_Test_Cross_Product_e31fc4 : aliased Runner_1.Test_Case;
   Case_8_1_Test_Distance_d6226c : aliased Runner_1.Test_Case;
   Case_9_1_Test_Distance_To_Origin_c0eb3b : aliased Runner_1.Test_Case;
   Case_10_1_Test_Put_ce4f36 : aliased Runner_1.Test_Case;

   function Suite return AUnit.Test_Suites.Access_Test_Suite is
   begin

      Runner_1.Create
        (Case_1_1_Test_Plus_685267,
         "vectors.ads:14:4:",
         Test_Plus_685267'Access);
      Runner_1.Create
        (Case_2_1_Test_Minus_2a1ebe,
         "vectors.ads:26:4:",
         Test_Minus_2a1ebe'Access);
      Runner_1.Create
        (Case_3_1_Test_Multiply_5b4755,
         "vectors.ads:38:4:",
         Test_Multiply_5b4755'Access);
      Runner_1.Create
        (Case_4_1_Test_Multiply_beba9c,
         "vectors.ads:47:4:",
         Test_Multiply_beba9c'Access);
      Runner_1.Create
        (Case_5_1_Test_Equal_49fd3e,
         "vectors.ads:56:4:",
         Test_Equal_49fd3e'Access);
      Runner_1.Create
        (Case_6_1_Test_Are_Orthogonal_b1a358,
         "vectors.ads:77:4:",
         Test_Are_Orthogonal_b1a358'Access);
      Runner_1.Create
        (Case_7_1_Test_Cross_Product_e31fc4,
         "vectors.ads:84:4:",
         Test_Cross_Product_e31fc4'Access);
      Runner_1.Create
        (Case_8_1_Test_Distance_d6226c,
         "vectors.ads:96:4:",
         Test_Distance_d6226c'Access);
      Runner_1.Create
        (Case_9_1_Test_Distance_To_Origin_c0eb3b,
         "vectors.ads:103:4:",
         Test_Distance_To_Origin_c0eb3b'Access);
      Runner_1.Create
        (Case_10_1_Test_Put_ce4f36,
         "vectors.ads:113:4:",
         Test_Put_ce4f36'Access);

      Result.Add_Test (Case_1_1_Test_Plus_685267'Access);
      Result.Add_Test (Case_2_1_Test_Minus_2a1ebe'Access);
      Result.Add_Test (Case_3_1_Test_Multiply_5b4755'Access);
      Result.Add_Test (Case_4_1_Test_Multiply_beba9c'Access);
      Result.Add_Test (Case_5_1_Test_Equal_49fd3e'Access);
      Result.Add_Test (Case_6_1_Test_Are_Orthogonal_b1a358'Access);
      Result.Add_Test (Case_7_1_Test_Cross_Product_e31fc4'Access);
      Result.Add_Test (Case_8_1_Test_Distance_d6226c'Access);
      Result.Add_Test (Case_9_1_Test_Distance_To_Origin_c0eb3b'Access);
      Result.Add_Test (Case_10_1_Test_Put_ce4f36'Access);

      return Result'Access;

   end Suite;

end Vectors.Test_Data.Tests.Suite;
--  end read only
