pragma Ada_95;
pragma Warnings (Off);
pragma Source_File_Name (ada_main, Spec_File_Name => "b__test_runner.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__test_runner.adb");
pragma Suppress (Overflow_Check);
with Ada.Exceptions;

package body ada_main is

   E160 : Short_Integer; pragma Import (Ada, E160, "system__os_lib_E");
   E013 : Short_Integer; pragma Import (Ada, E013, "system__soft_links_E");
   E019 : Short_Integer; pragma Import (Ada, E019, "system__exception_table_E");
   E099 : Short_Integer; pragma Import (Ada, E099, "ada__io_exceptions_E");
   E203 : Short_Integer; pragma Import (Ada, E203, "ada__numerics_E");
   E131 : Short_Integer; pragma Import (Ada, E131, "ada__strings_E");
   E133 : Short_Integer; pragma Import (Ada, E133, "ada__strings__maps_E");
   E136 : Short_Integer; pragma Import (Ada, E136, "ada__strings__maps__constants_E");
   E056 : Short_Integer; pragma Import (Ada, E056, "ada__tags_E");
   E098 : Short_Integer; pragma Import (Ada, E098, "ada__streams_E");
   E086 : Short_Integer; pragma Import (Ada, E086, "interfaces__c_E");
   E021 : Short_Integer; pragma Import (Ada, E021, "system__exceptions_E");
   E163 : Short_Integer; pragma Import (Ada, E163, "system__file_control_block_E");
   E158 : Short_Integer; pragma Import (Ada, E158, "system__file_io_E");
   E101 : Short_Integer; pragma Import (Ada, E101, "system__finalization_root_E");
   E096 : Short_Integer; pragma Import (Ada, E096, "ada__finalization_E");
   E103 : Short_Integer; pragma Import (Ada, E103, "system__storage_pools_E");
   E091 : Short_Integer; pragma Import (Ada, E091, "system__finalization_masters_E");
   E146 : Short_Integer; pragma Import (Ada, E146, "system__storage_pools__subpools_E");
   E084 : Short_Integer; pragma Import (Ada, E084, "ada__calendar_E");
   E165 : Short_Integer; pragma Import (Ada, E165, "gnat__directory_operations_E");
   E208 : Short_Integer; pragma Import (Ada, E208, "system__assertions_E");
   E105 : Short_Integer; pragma Import (Ada, E105, "system__pool_global_E");
   E009 : Short_Integer; pragma Import (Ada, E009, "system__secondary_stack_E");
   E138 : Short_Integer; pragma Import (Ada, E138, "ada__strings__unbounded_E");
   E175 : Short_Integer; pragma Import (Ada, E175, "system__regexp_E");
   E126 : Short_Integer; pragma Import (Ada, E126, "gnat__command_line_E");
   E154 : Short_Integer; pragma Import (Ada, E154, "ada__text_io_E");
   E076 : Short_Integer; pragma Import (Ada, E076, "ada_containers__aunit_lists_E");
   E051 : Short_Integer; pragma Import (Ada, E051, "aunit_E");
   E053 : Short_Integer; pragma Import (Ada, E053, "aunit__memory_E");
   E078 : Short_Integer; pragma Import (Ada, E078, "aunit__memory__utils_E");
   E089 : Short_Integer; pragma Import (Ada, E089, "aunit__tests_E");
   E069 : Short_Integer; pragma Import (Ada, E069, "aunit__test_filters_E");
   E082 : Short_Integer; pragma Import (Ada, E082, "aunit__time_measure_E");
   E080 : Short_Integer; pragma Import (Ada, E080, "aunit__test_results_E");
   E073 : Short_Integer; pragma Import (Ada, E073, "aunit__assertions_E");
   E114 : Short_Integer; pragma Import (Ada, E114, "aunit__reporter_E");
   E116 : Short_Integer; pragma Import (Ada, E116, "aunit__reporter__gnattest_E");
   E071 : Short_Integer; pragma Import (Ada, E071, "aunit__simple_test_cases_E");
   E212 : Short_Integer; pragma Import (Ada, E212, "aunit__test_fixtures_E");
   E218 : Short_Integer; pragma Import (Ada, E218, "aunit__test_caller_E");
   E124 : Short_Integer; pragma Import (Ada, E124, "aunit__test_suites_E");
   E122 : Short_Integer; pragma Import (Ada, E122, "aunit__run_E");
   E179 : Short_Integer; pragma Import (Ada, E179, "gnattest_main_suite_E");
   E181 : Short_Integer; pragma Import (Ada, E181, "vectors_E");
   E210 : Short_Integer; pragma Import (Ada, E210, "vectors__test_data_E");
   E214 : Short_Integer; pragma Import (Ada, E214, "vectors__test_data__tests_E");
   E216 : Short_Integer; pragma Import (Ada, E216, "vectors__test_data__tests__suite_E");

   Local_Priority_Specific_Dispatching : constant String := "";
   Local_Interrupt_States : constant String := "";

   Is_Elaborated : Boolean := False;

   procedure finalize_library is
   begin
      declare
         procedure F1;
         pragma Import (Ada, F1, "vectors__test_data__tests__suite__finalize_body");
      begin
         E216 := E216 - 1;
         F1;
      end;
      E214 := E214 - 1;
      declare
         procedure F2;
         pragma Import (Ada, F2, "vectors__test_data__tests__finalize_spec");
      begin
         F2;
      end;
      E210 := E210 - 1;
      declare
         procedure F3;
         pragma Import (Ada, F3, "vectors__test_data__finalize_spec");
      begin
         F3;
      end;
      E124 := E124 - 1;
      declare
         procedure F4;
         pragma Import (Ada, F4, "aunit__test_suites__finalize_spec");
      begin
         F4;
      end;
      E212 := E212 - 1;
      declare
         procedure F5;
         pragma Import (Ada, F5, "aunit__test_fixtures__finalize_spec");
      begin
         F5;
      end;
      E069 := E069 - 1;
      E071 := E071 - 1;
      declare
         procedure F6;
         pragma Import (Ada, F6, "aunit__simple_test_cases__finalize_spec");
      begin
         F6;
      end;
      E116 := E116 - 1;
      declare
         procedure F7;
         pragma Import (Ada, F7, "aunit__reporter__gnattest__finalize_spec");
      begin
         F7;
      end;
      E073 := E073 - 1;
      declare
         procedure F8;
         pragma Import (Ada, F8, "aunit__assertions__finalize_spec");
      begin
         F8;
      end;
      E080 := E080 - 1;
      declare
         procedure F9;
         pragma Import (Ada, F9, "aunit__test_results__finalize_spec");
      begin
         F9;
      end;
      declare
         procedure F10;
         pragma Import (Ada, F10, "aunit__test_filters__finalize_spec");
      begin
         F10;
      end;
      declare
         procedure F11;
         pragma Import (Ada, F11, "aunit__tests__finalize_spec");
      begin
         E089 := E089 - 1;
         F11;
      end;
      E154 := E154 - 1;
      declare
         procedure F12;
         pragma Import (Ada, F12, "ada__text_io__finalize_spec");
      begin
         F12;
      end;
      E175 := E175 - 1;
      declare
         procedure F13;
         pragma Import (Ada, F13, "system__regexp__finalize_spec");
      begin
         F13;
      end;
      E138 := E138 - 1;
      declare
         procedure F14;
         pragma Import (Ada, F14, "ada__strings__unbounded__finalize_spec");
      begin
         F14;
      end;
      declare
         procedure F15;
         pragma Import (Ada, F15, "system__file_io__finalize_body");
      begin
         E158 := E158 - 1;
         F15;
      end;
      E091 := E091 - 1;
      E146 := E146 - 1;
      E105 := E105 - 1;
      declare
         procedure F16;
         pragma Import (Ada, F16, "system__pool_global__finalize_spec");
      begin
         F16;
      end;
      declare
         procedure F17;
         pragma Import (Ada, F17, "system__storage_pools__subpools__finalize_spec");
      begin
         F17;
      end;
      declare
         procedure F18;
         pragma Import (Ada, F18, "system__finalization_masters__finalize_spec");
      begin
         F18;
      end;
      declare
         procedure Reraise_Library_Exception_If_Any;
            pragma Import (Ada, Reraise_Library_Exception_If_Any, "__gnat_reraise_library_exception_if_any");
      begin
         Reraise_Library_Exception_If_Any;
      end;
   end finalize_library;

   procedure adafinal is
      procedure s_stalib_adafinal;
      pragma Import (C, s_stalib_adafinal, "system__standard_library__adafinal");

      procedure Runtime_Finalize;
      pragma Import (C, Runtime_Finalize, "__gnat_runtime_finalize");

   begin
      if not Is_Elaborated then
         return;
      end if;
      Is_Elaborated := False;
      Runtime_Finalize;
      s_stalib_adafinal;
   end adafinal;

   type No_Param_Proc is access procedure;

   procedure adainit is
      Main_Priority : Integer;
      pragma Import (C, Main_Priority, "__gl_main_priority");
      Time_Slice_Value : Integer;
      pragma Import (C, Time_Slice_Value, "__gl_time_slice_val");
      WC_Encoding : Character;
      pragma Import (C, WC_Encoding, "__gl_wc_encoding");
      Locking_Policy : Character;
      pragma Import (C, Locking_Policy, "__gl_locking_policy");
      Queuing_Policy : Character;
      pragma Import (C, Queuing_Policy, "__gl_queuing_policy");
      Task_Dispatching_Policy : Character;
      pragma Import (C, Task_Dispatching_Policy, "__gl_task_dispatching_policy");
      Priority_Specific_Dispatching : System.Address;
      pragma Import (C, Priority_Specific_Dispatching, "__gl_priority_specific_dispatching");
      Num_Specific_Dispatching : Integer;
      pragma Import (C, Num_Specific_Dispatching, "__gl_num_specific_dispatching");
      Main_CPU : Integer;
      pragma Import (C, Main_CPU, "__gl_main_cpu");
      Interrupt_States : System.Address;
      pragma Import (C, Interrupt_States, "__gl_interrupt_states");
      Num_Interrupt_States : Integer;
      pragma Import (C, Num_Interrupt_States, "__gl_num_interrupt_states");
      Unreserve_All_Interrupts : Integer;
      pragma Import (C, Unreserve_All_Interrupts, "__gl_unreserve_all_interrupts");
      Exception_Tracebacks : Integer;
      pragma Import (C, Exception_Tracebacks, "__gl_exception_tracebacks");
      Detect_Blocking : Integer;
      pragma Import (C, Detect_Blocking, "__gl_detect_blocking");
      Default_Stack_Size : Integer;
      pragma Import (C, Default_Stack_Size, "__gl_default_stack_size");
      Leap_Seconds_Support : Integer;
      pragma Import (C, Leap_Seconds_Support, "__gl_leap_seconds_support");
      Bind_Env_Addr : System.Address;
      pragma Import (C, Bind_Env_Addr, "__gl_bind_env_addr");

      procedure Runtime_Initialize (Install_Handler : Integer);
      pragma Import (C, Runtime_Initialize, "__gnat_runtime_initialize");

      Finalize_Library_Objects : No_Param_Proc;
      pragma Import (C, Finalize_Library_Objects, "__gnat_finalize_library_objects");
   begin
      if Is_Elaborated then
         return;
      end if;
      Is_Elaborated := True;
      Main_Priority := -1;
      Time_Slice_Value := -1;
      WC_Encoding := 'b';
      Locking_Policy := ' ';
      Queuing_Policy := ' ';
      Task_Dispatching_Policy := ' ';
      Priority_Specific_Dispatching :=
        Local_Priority_Specific_Dispatching'Address;
      Num_Specific_Dispatching := 0;
      Main_CPU := -1;
      Interrupt_States := Local_Interrupt_States'Address;
      Num_Interrupt_States := 0;
      Unreserve_All_Interrupts := 0;
      Exception_Tracebacks := 1;
      Detect_Blocking := 0;
      Default_Stack_Size := -1;
      Leap_Seconds_Support := 0;

      Runtime_Initialize (1);

      Finalize_Library_Objects := finalize_library'access;

      System.Soft_Links'Elab_Spec;
      System.Exception_Table'Elab_Body;
      E019 := E019 + 1;
      Ada.Io_Exceptions'Elab_Spec;
      E099 := E099 + 1;
      Ada.Numerics'Elab_Spec;
      E203 := E203 + 1;
      Ada.Strings'Elab_Spec;
      E131 := E131 + 1;
      Ada.Strings.Maps'Elab_Spec;
      Ada.Strings.Maps.Constants'Elab_Spec;
      E136 := E136 + 1;
      Ada.Tags'Elab_Spec;
      Ada.Streams'Elab_Spec;
      E098 := E098 + 1;
      Interfaces.C'Elab_Spec;
      System.Exceptions'Elab_Spec;
      E021 := E021 + 1;
      System.File_Control_Block'Elab_Spec;
      E163 := E163 + 1;
      System.Finalization_Root'Elab_Spec;
      E101 := E101 + 1;
      Ada.Finalization'Elab_Spec;
      E096 := E096 + 1;
      System.Storage_Pools'Elab_Spec;
      E103 := E103 + 1;
      System.Finalization_Masters'Elab_Spec;
      System.Storage_Pools.Subpools'Elab_Spec;
      Ada.Calendar'Elab_Spec;
      Ada.Calendar'Elab_Body;
      E084 := E084 + 1;
      Gnat.Directory_Operations'Elab_Spec;
      System.Assertions'Elab_Spec;
      E208 := E208 + 1;
      System.Pool_Global'Elab_Spec;
      E105 := E105 + 1;
      E146 := E146 + 1;
      System.Finalization_Masters'Elab_Body;
      E091 := E091 + 1;
      System.File_Io'Elab_Body;
      E158 := E158 + 1;
      E086 := E086 + 1;
      Ada.Tags'Elab_Body;
      E056 := E056 + 1;
      E133 := E133 + 1;
      System.Soft_Links'Elab_Body;
      E013 := E013 + 1;
      System.Os_Lib'Elab_Body;
      E160 := E160 + 1;
      System.Secondary_Stack'Elab_Body;
      E009 := E009 + 1;
      Gnat.Directory_Operations'Elab_Body;
      E165 := E165 + 1;
      Ada.Strings.Unbounded'Elab_Spec;
      E138 := E138 + 1;
      System.Regexp'Elab_Spec;
      E175 := E175 + 1;
      Gnat.Command_Line'Elab_Spec;
      Ada.Text_Io'Elab_Spec;
      Ada.Text_Io'Elab_Body;
      E154 := E154 + 1;
      Gnat.Command_Line'Elab_Body;
      E126 := E126 + 1;
      E053 := E053 + 1;
      E051 := E051 + 1;
      E078 := E078 + 1;
      E076 := E076 + 1;
      Aunit.Tests'Elab_Spec;
      E089 := E089 + 1;
      Aunit.Test_Filters'Elab_Spec;
      Aunit.Time_Measure'Elab_Spec;
      E082 := E082 + 1;
      Aunit.Test_Results'Elab_Spec;
      E080 := E080 + 1;
      Aunit.Assertions'Elab_Spec;
      Aunit.Assertions'Elab_Body;
      E073 := E073 + 1;
      Aunit.Reporter'Elab_Spec;
      E114 := E114 + 1;
      Aunit.Reporter.Gnattest'Elab_Spec;
      E116 := E116 + 1;
      Aunit.Simple_Test_Cases'Elab_Spec;
      E071 := E071 + 1;
      E069 := E069 + 1;
      Aunit.Test_Fixtures'Elab_Spec;
      E212 := E212 + 1;
      E218 := E218 + 1;
      Aunit.Test_Suites'Elab_Spec;
      E124 := E124 + 1;
      E122 := E122 + 1;
      E181 := E181 + 1;
      Vectors.Test_Data'Elab_Spec;
      E210 := E210 + 1;
      Vectors.Test_Data.Tests'Elab_Spec;
      E214 := E214 + 1;
      Vectors.Test_Data.Tests.Suite'Elab_Body;
      E216 := E216 + 1;
      Gnattest_Main_Suite'Elab_Body;
      E179 := E179 + 1;
   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_test_runner");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer
   is
      procedure Initialize (Addr : System.Address);
      pragma Import (C, Initialize, "__gnat_initialize");

      procedure Finalize;
      pragma Import (C, Finalize, "__gnat_finalize");
      SEH : aliased array (1 .. 2) of Integer;

      Ensure_Reference : aliased System.Address := Ada_Main_Program_Name'Address;
      pragma Volatile (Ensure_Reference);

   begin
      gnat_argc := argc;
      gnat_argv := argv;
      gnat_envp := envp;

      Initialize (SEH'Address);
      adainit;
      Ada_Main_Program;
      adafinal;
      Finalize;
      return (gnat_exit_status);
   end;

--  BEGIN Object file/option list
   --   /Users/georgerfurt/securesystems/gnat/obj/gnattest/harness/gnattest_generated.o
   --   /Users/georgerfurt/securesystems/gnat/obj/gnattest/harness/test_runner.o
   --   /Users/georgerfurt/securesystems/gnat/obj/vectors.o
   --   /Users/georgerfurt/securesystems/gnat/obj/gnattest/harness/vectors-test_data.o
   --   /Users/georgerfurt/securesystems/gnat/obj/gnattest/harness/vectors-test_data-tests.o
   --   /Users/georgerfurt/securesystems/gnat/obj/gnattest/harness/vectors-test_data-tests-suite.o
   --   /Users/georgerfurt/securesystems/gnat/obj/gnattest/harness/gnattest_main_suite.o
   --   -L/Users/georgerfurt/securesystems/gnat/obj/gnattest/harness/
   --   -L/Users/georgerfurt/securesystems/gnat/obj/gnattest/harness/
   --   -L/users/georgerfurt/downloads/x86_64-darwin/adagpl-2016/gnatgpl/gnat-gpl-2016-x86_64-darwin-bin/lib/aunit/
   --   -L/Users/georgerfurt/securesystems/gnat/obj/
   --   -L/users/georgerfurt/downloads/x86_64-darwin/adagpl-2016/gnatgpl/gnat-gpl-2016-x86_64-darwin-bin/lib/gcc/x86_64-apple-darwin14.5.0/4.9.4/adalib/
   --   -static
   --   -lgnat
--  END Object file/option list   

end ada_main;
