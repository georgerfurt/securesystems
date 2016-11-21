pragma Ada_95;
pragma Warnings (Off);
with System;
package ada_main is

   gnat_argc : Integer;
   gnat_argv : System.Address;
   gnat_envp : System.Address;

   pragma Import (C, gnat_argc);
   pragma Import (C, gnat_argv);
   pragma Import (C, gnat_envp);

   gnat_exit_status : Integer;
   pragma Import (C, gnat_exit_status);

   GNAT_Version : constant String :=
                    "GNAT Version: GPL 2016 (20160515-49)" & ASCII.NUL;
   pragma Export (C, GNAT_Version, "__gnat_version");

   Ada_Main_Program_Name : constant String := "_ada_test_runner" & ASCII.NUL;
   pragma Export (C, Ada_Main_Program_Name, "__gnat_ada_main_program_name");

   procedure adainit;
   pragma Export (C, adainit, "adainit");

   procedure adafinal;
   pragma Export (C, adafinal, "adafinal");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer;
   pragma Export (C, main, "main");

   type Version_32 is mod 2 ** 32;
   u00001 : constant Version_32 := 16#6615d04e#;
   pragma Export (C, u00001, "test_runnerB");
   u00002 : constant Version_32 := 16#b6df930e#;
   pragma Export (C, u00002, "system__standard_libraryB");
   u00003 : constant Version_32 := 16#337e9ce1#;
   pragma Export (C, u00003, "system__standard_libraryS");
   u00004 : constant Version_32 := 16#3ffc8e18#;
   pragma Export (C, u00004, "adaS");
   u00005 : constant Version_32 := 16#451bdd8a#;
   pragma Export (C, u00005, "ada__command_lineB");
   u00006 : constant Version_32 := 16#d59e21a4#;
   pragma Export (C, u00006, "ada__command_lineS");
   u00007 : constant Version_32 := 16#c3282aa7#;
   pragma Export (C, u00007, "systemS");
   u00008 : constant Version_32 := 16#0f0cb66d#;
   pragma Export (C, u00008, "system__secondary_stackB");
   u00009 : constant Version_32 := 16#6849e5ce#;
   pragma Export (C, u00009, "system__secondary_stackS");
   u00010 : constant Version_32 := 16#b01dad17#;
   pragma Export (C, u00010, "system__parametersB");
   u00011 : constant Version_32 := 16#bd0227d8#;
   pragma Export (C, u00011, "system__parametersS");
   u00012 : constant Version_32 := 16#5f84b5ab#;
   pragma Export (C, u00012, "system__soft_linksB");
   u00013 : constant Version_32 := 16#5dacf2f2#;
   pragma Export (C, u00013, "system__soft_linksS");
   u00014 : constant Version_32 := 16#472fa979#;
   pragma Export (C, u00014, "ada__exceptionsB");
   u00015 : constant Version_32 := 16#a2017425#;
   pragma Export (C, u00015, "ada__exceptionsS");
   u00016 : constant Version_32 := 16#e947e6a9#;
   pragma Export (C, u00016, "ada__exceptions__last_chance_handlerB");
   u00017 : constant Version_32 := 16#41e5552e#;
   pragma Export (C, u00017, "ada__exceptions__last_chance_handlerS");
   u00018 : constant Version_32 := 16#87a448ff#;
   pragma Export (C, u00018, "system__exception_tableB");
   u00019 : constant Version_32 := 16#9e8643e5#;
   pragma Export (C, u00019, "system__exception_tableS");
   u00020 : constant Version_32 := 16#ce4af020#;
   pragma Export (C, u00020, "system__exceptionsB");
   u00021 : constant Version_32 := 16#ab4b4751#;
   pragma Export (C, u00021, "system__exceptionsS");
   u00022 : constant Version_32 := 16#4c9e814d#;
   pragma Export (C, u00022, "system__exceptions__machineS");
   u00023 : constant Version_32 := 16#aa0563fc#;
   pragma Export (C, u00023, "system__exceptions_debugB");
   u00024 : constant Version_32 := 16#bda2d363#;
   pragma Export (C, u00024, "system__exceptions_debugS");
   u00025 : constant Version_32 := 16#6c2f8802#;
   pragma Export (C, u00025, "system__img_intB");
   u00026 : constant Version_32 := 16#c1f3ca65#;
   pragma Export (C, u00026, "system__img_intS");
   u00027 : constant Version_32 := 16#39a03df9#;
   pragma Export (C, u00027, "system__storage_elementsB");
   u00028 : constant Version_32 := 16#eeeb60a3#;
   pragma Export (C, u00028, "system__storage_elementsS");
   u00029 : constant Version_32 := 16#39df8c17#;
   pragma Export (C, u00029, "system__tracebackB");
   u00030 : constant Version_32 := 16#9d0af463#;
   pragma Export (C, u00030, "system__tracebackS");
   u00031 : constant Version_32 := 16#9ed49525#;
   pragma Export (C, u00031, "system__traceback_entriesB");
   u00032 : constant Version_32 := 16#c373dcd7#;
   pragma Export (C, u00032, "system__traceback_entriesS");
   u00033 : constant Version_32 := 16#6fd210f2#;
   pragma Export (C, u00033, "system__traceback__symbolicB");
   u00034 : constant Version_32 := 16#dd19f67a#;
   pragma Export (C, u00034, "system__traceback__symbolicS");
   u00035 : constant Version_32 := 16#701f9d88#;
   pragma Export (C, u00035, "ada__exceptions__tracebackB");
   u00036 : constant Version_32 := 16#20245e75#;
   pragma Export (C, u00036, "ada__exceptions__tracebackS");
   u00037 : constant Version_32 := 16#57a37a42#;
   pragma Export (C, u00037, "system__address_imageB");
   u00038 : constant Version_32 := 16#62c4b79d#;
   pragma Export (C, u00038, "system__address_imageS");
   u00039 : constant Version_32 := 16#8c33a517#;
   pragma Export (C, u00039, "system__wch_conB");
   u00040 : constant Version_32 := 16#d8550875#;
   pragma Export (C, u00040, "system__wch_conS");
   u00041 : constant Version_32 := 16#9721e840#;
   pragma Export (C, u00041, "system__wch_stwB");
   u00042 : constant Version_32 := 16#f5442474#;
   pragma Export (C, u00042, "system__wch_stwS");
   u00043 : constant Version_32 := 16#a831679c#;
   pragma Export (C, u00043, "system__wch_cnvB");
   u00044 : constant Version_32 := 16#d7e2b286#;
   pragma Export (C, u00044, "system__wch_cnvS");
   u00045 : constant Version_32 := 16#5ab55268#;
   pragma Export (C, u00045, "interfacesS");
   u00046 : constant Version_32 := 16#ece6fdb6#;
   pragma Export (C, u00046, "system__wch_jisB");
   u00047 : constant Version_32 := 16#5792aba7#;
   pragma Export (C, u00047, "system__wch_jisS");
   u00048 : constant Version_32 := 16#41837d1e#;
   pragma Export (C, u00048, "system__stack_checkingB");
   u00049 : constant Version_32 := 16#4d97414f#;
   pragma Export (C, u00049, "system__stack_checkingS");
   u00050 : constant Version_32 := 16#fa79b673#;
   pragma Export (C, u00050, "aunitB");
   u00051 : constant Version_32 := 16#76cdf7c6#;
   pragma Export (C, u00051, "aunitS");
   u00052 : constant Version_32 := 16#b6c145a2#;
   pragma Export (C, u00052, "aunit__memoryB");
   u00053 : constant Version_32 := 16#15d48c27#;
   pragma Export (C, u00053, "aunit__memoryS");
   u00054 : constant Version_32 := 16#e99cd447#;
   pragma Export (C, u00054, "aunit__optionsS");
   u00055 : constant Version_32 := 16#920eada5#;
   pragma Export (C, u00055, "ada__tagsB");
   u00056 : constant Version_32 := 16#13ca27f3#;
   pragma Export (C, u00056, "ada__tagsS");
   u00057 : constant Version_32 := 16#c3335bfd#;
   pragma Export (C, u00057, "system__htableB");
   u00058 : constant Version_32 := 16#47ea994d#;
   pragma Export (C, u00058, "system__htableS");
   u00059 : constant Version_32 := 16#089f5cd0#;
   pragma Export (C, u00059, "system__string_hashB");
   u00060 : constant Version_32 := 16#e5b4f233#;
   pragma Export (C, u00060, "system__string_hashS");
   u00061 : constant Version_32 := 16#f7ae5624#;
   pragma Export (C, u00061, "system__unsigned_typesS");
   u00062 : constant Version_32 := 16#afdbf393#;
   pragma Export (C, u00062, "system__val_lluB");
   u00063 : constant Version_32 := 16#8d5c0156#;
   pragma Export (C, u00063, "system__val_lluS");
   u00064 : constant Version_32 := 16#27b600b2#;
   pragma Export (C, u00064, "system__val_utilB");
   u00065 : constant Version_32 := 16#6f889c59#;
   pragma Export (C, u00065, "system__val_utilS");
   u00066 : constant Version_32 := 16#d1060688#;
   pragma Export (C, u00066, "system__case_utilB");
   u00067 : constant Version_32 := 16#e7214370#;
   pragma Export (C, u00067, "system__case_utilS");
   u00068 : constant Version_32 := 16#e9d6512d#;
   pragma Export (C, u00068, "aunit__test_filtersB");
   u00069 : constant Version_32 := 16#9a67cba8#;
   pragma Export (C, u00069, "aunit__test_filtersS");
   u00070 : constant Version_32 := 16#6e9501f4#;
   pragma Export (C, u00070, "aunit__simple_test_casesB");
   u00071 : constant Version_32 := 16#f9679d50#;
   pragma Export (C, u00071, "aunit__simple_test_casesS");
   u00072 : constant Version_32 := 16#8872fb1a#;
   pragma Export (C, u00072, "aunit__assertionsB");
   u00073 : constant Version_32 := 16#3b7b7e5b#;
   pragma Export (C, u00073, "aunit__assertionsS");
   u00074 : constant Version_32 := 16#11329e00#;
   pragma Export (C, u00074, "ada_containersS");
   u00075 : constant Version_32 := 16#d6b91878#;
   pragma Export (C, u00075, "ada_containers__aunit_listsB");
   u00076 : constant Version_32 := 16#c8d9569a#;
   pragma Export (C, u00076, "ada_containers__aunit_listsS");
   u00077 : constant Version_32 := 16#9b1c7ff2#;
   pragma Export (C, u00077, "aunit__memory__utilsB");
   u00078 : constant Version_32 := 16#fb2f6c57#;
   pragma Export (C, u00078, "aunit__memory__utilsS");
   u00079 : constant Version_32 := 16#01adf261#;
   pragma Export (C, u00079, "aunit__test_resultsB");
   u00080 : constant Version_32 := 16#1087836e#;
   pragma Export (C, u00080, "aunit__test_resultsS");
   u00081 : constant Version_32 := 16#9df5edcf#;
   pragma Export (C, u00081, "aunit__time_measureB");
   u00082 : constant Version_32 := 16#f32b0de9#;
   pragma Export (C, u00082, "aunit__time_measureS");
   u00083 : constant Version_32 := 16#c5dcd3d2#;
   pragma Export (C, u00083, "ada__calendarB");
   u00084 : constant Version_32 := 16#12a38fcc#;
   pragma Export (C, u00084, "ada__calendarS");
   u00085 : constant Version_32 := 16#769e25e6#;
   pragma Export (C, u00085, "interfaces__cB");
   u00086 : constant Version_32 := 16#70be4e8c#;
   pragma Export (C, u00086, "interfaces__cS");
   u00087 : constant Version_32 := 16#a6535153#;
   pragma Export (C, u00087, "system__os_primitivesB");
   u00088 : constant Version_32 := 16#49a73bd1#;
   pragma Export (C, u00088, "system__os_primitivesS");
   u00089 : constant Version_32 := 16#6b6cea8f#;
   pragma Export (C, u00089, "aunit__testsS");
   u00090 : constant Version_32 := 16#6abe5dbe#;
   pragma Export (C, u00090, "system__finalization_mastersB");
   u00091 : constant Version_32 := 16#98d4136d#;
   pragma Export (C, u00091, "system__finalization_mastersS");
   u00092 : constant Version_32 := 16#7268f812#;
   pragma Export (C, u00092, "system__img_boolB");
   u00093 : constant Version_32 := 16#36f15b4c#;
   pragma Export (C, u00093, "system__img_boolS");
   u00094 : constant Version_32 := 16#d7aac20c#;
   pragma Export (C, u00094, "system__ioB");
   u00095 : constant Version_32 := 16#5d6adde8#;
   pragma Export (C, u00095, "system__ioS");
   u00096 : constant Version_32 := 16#cf417de3#;
   pragma Export (C, u00096, "ada__finalizationS");
   u00097 : constant Version_32 := 16#10558b11#;
   pragma Export (C, u00097, "ada__streamsB");
   u00098 : constant Version_32 := 16#2e6701ab#;
   pragma Export (C, u00098, "ada__streamsS");
   u00099 : constant Version_32 := 16#db5c917c#;
   pragma Export (C, u00099, "ada__io_exceptionsS");
   u00100 : constant Version_32 := 16#95817ed8#;
   pragma Export (C, u00100, "system__finalization_rootB");
   u00101 : constant Version_32 := 16#8cda5937#;
   pragma Export (C, u00101, "system__finalization_rootS");
   u00102 : constant Version_32 := 16#6d4d969a#;
   pragma Export (C, u00102, "system__storage_poolsB");
   u00103 : constant Version_32 := 16#e0c5b40a#;
   pragma Export (C, u00103, "system__storage_poolsS");
   u00104 : constant Version_32 := 16#5a895de2#;
   pragma Export (C, u00104, "system__pool_globalB");
   u00105 : constant Version_32 := 16#7141203e#;
   pragma Export (C, u00105, "system__pool_globalS");
   u00106 : constant Version_32 := 16#a6359005#;
   pragma Export (C, u00106, "system__memoryB");
   u00107 : constant Version_32 := 16#9a554c93#;
   pragma Export (C, u00107, "system__memoryS");
   u00108 : constant Version_32 := 16#b3b9fca9#;
   pragma Export (C, u00108, "system__crtlS");
   u00109 : constant Version_32 := 16#fd2ad2f1#;
   pragma Export (C, u00109, "gnatS");
   u00110 : constant Version_32 := 16#d43725a0#;
   pragma Export (C, u00110, "gnat__source_infoS");
   u00111 : constant Version_32 := 16#acb182ec#;
   pragma Export (C, u00111, "gnat__tracebackB");
   u00112 : constant Version_32 := 16#e98c4925#;
   pragma Export (C, u00112, "gnat__tracebackS");
   u00113 : constant Version_32 := 16#85b06f15#;
   pragma Export (C, u00113, "gnat__traceback__symbolicS");
   u00114 : constant Version_32 := 16#17d955ab#;
   pragma Export (C, u00114, "aunit__reporterS");
   u00115 : constant Version_32 := 16#1c0d4e63#;
   pragma Export (C, u00115, "aunit__reporter__gnattestB");
   u00116 : constant Version_32 := 16#9cd34a09#;
   pragma Export (C, u00116, "aunit__reporter__gnattestS");
   u00117 : constant Version_32 := 16#b48102f5#;
   pragma Export (C, u00117, "gnat__ioB");
   u00118 : constant Version_32 := 16#6227e843#;
   pragma Export (C, u00118, "gnat__ioS");
   u00119 : constant Version_32 := 16#b602a99c#;
   pragma Export (C, u00119, "system__exn_intB");
   u00120 : constant Version_32 := 16#81a436fb#;
   pragma Export (C, u00120, "system__exn_intS");
   u00121 : constant Version_32 := 16#e11af2d7#;
   pragma Export (C, u00121, "aunit__runB");
   u00122 : constant Version_32 := 16#4b2a8016#;
   pragma Export (C, u00122, "aunit__runS");
   u00123 : constant Version_32 := 16#d01edb9b#;
   pragma Export (C, u00123, "aunit__test_suitesB");
   u00124 : constant Version_32 := 16#f3c7e671#;
   pragma Export (C, u00124, "aunit__test_suitesS");
   u00125 : constant Version_32 := 16#539386eb#;
   pragma Export (C, u00125, "gnat__command_lineB");
   u00126 : constant Version_32 := 16#687dd21e#;
   pragma Export (C, u00126, "gnat__command_lineS");
   u00127 : constant Version_32 := 16#12c24a43#;
   pragma Export (C, u00127, "ada__charactersS");
   u00128 : constant Version_32 := 16#8f637df8#;
   pragma Export (C, u00128, "ada__characters__handlingB");
   u00129 : constant Version_32 := 16#3b3f6154#;
   pragma Export (C, u00129, "ada__characters__handlingS");
   u00130 : constant Version_32 := 16#4b7bb96a#;
   pragma Export (C, u00130, "ada__characters__latin_1S");
   u00131 : constant Version_32 := 16#af50e98f#;
   pragma Export (C, u00131, "ada__stringsS");
   u00132 : constant Version_32 := 16#e2ea8656#;
   pragma Export (C, u00132, "ada__strings__mapsB");
   u00133 : constant Version_32 := 16#1e526bec#;
   pragma Export (C, u00133, "ada__strings__mapsS");
   u00134 : constant Version_32 := 16#a4e2d63b#;
   pragma Export (C, u00134, "system__bit_opsB");
   u00135 : constant Version_32 := 16#0765e3a3#;
   pragma Export (C, u00135, "system__bit_opsS");
   u00136 : constant Version_32 := 16#92f05f13#;
   pragma Export (C, u00136, "ada__strings__maps__constantsS");
   u00137 : constant Version_32 := 16#5130abd7#;
   pragma Export (C, u00137, "ada__strings__unboundedB");
   u00138 : constant Version_32 := 16#4c956ffe#;
   pragma Export (C, u00138, "ada__strings__unboundedS");
   u00139 : constant Version_32 := 16#e5c7cf31#;
   pragma Export (C, u00139, "ada__strings__searchB");
   u00140 : constant Version_32 := 16#c1ab8667#;
   pragma Export (C, u00140, "ada__strings__searchS");
   u00141 : constant Version_32 := 16#5b9edcc4#;
   pragma Export (C, u00141, "system__compare_array_unsigned_8B");
   u00142 : constant Version_32 := 16#6a2b5b2a#;
   pragma Export (C, u00142, "system__compare_array_unsigned_8S");
   u00143 : constant Version_32 := 16#5f72f755#;
   pragma Export (C, u00143, "system__address_operationsB");
   u00144 : constant Version_32 := 16#d0249494#;
   pragma Export (C, u00144, "system__address_operationsS");
   u00145 : constant Version_32 := 16#6a86c9a5#;
   pragma Export (C, u00145, "system__storage_pools__subpoolsB");
   u00146 : constant Version_32 := 16#cc5a1856#;
   pragma Export (C, u00146, "system__storage_pools__subpoolsS");
   u00147 : constant Version_32 := 16#9aad1ff1#;
   pragma Export (C, u00147, "system__storage_pools__subpools__finalizationB");
   u00148 : constant Version_32 := 16#fe2f4b3a#;
   pragma Export (C, u00148, "system__storage_pools__subpools__finalizationS");
   u00149 : constant Version_32 := 16#020a3f4d#;
   pragma Export (C, u00149, "system__atomic_countersB");
   u00150 : constant Version_32 := 16#7774072a#;
   pragma Export (C, u00150, "system__atomic_countersS");
   u00151 : constant Version_32 := 16#f4e1c091#;
   pragma Export (C, u00151, "system__stream_attributesB");
   u00152 : constant Version_32 := 16#8bc30a4e#;
   pragma Export (C, u00152, "system__stream_attributesS");
   u00153 : constant Version_32 := 16#d5bfa9f3#;
   pragma Export (C, u00153, "ada__text_ioB");
   u00154 : constant Version_32 := 16#2d7da68a#;
   pragma Export (C, u00154, "ada__text_ioS");
   u00155 : constant Version_32 := 16#84a27f0d#;
   pragma Export (C, u00155, "interfaces__c_streamsB");
   u00156 : constant Version_32 := 16#b1330297#;
   pragma Export (C, u00156, "interfaces__c_streamsS");
   u00157 : constant Version_32 := 16#b29d05bd#;
   pragma Export (C, u00157, "system__file_ioB");
   u00158 : constant Version_32 := 16#6459cbc2#;
   pragma Export (C, u00158, "system__file_ioS");
   u00159 : constant Version_32 := 16#7358ec0a#;
   pragma Export (C, u00159, "system__os_libB");
   u00160 : constant Version_32 := 16#bf5ce13f#;
   pragma Export (C, u00160, "system__os_libS");
   u00161 : constant Version_32 := 16#1a817b8e#;
   pragma Export (C, u00161, "system__stringsB");
   u00162 : constant Version_32 := 16#bd973bc1#;
   pragma Export (C, u00162, "system__stringsS");
   u00163 : constant Version_32 := 16#3eb7b00f#;
   pragma Export (C, u00163, "system__file_control_blockS");
   u00164 : constant Version_32 := 16#6ce04563#;
   pragma Export (C, u00164, "gnat__directory_operationsB");
   u00165 : constant Version_32 := 16#42b5cd24#;
   pragma Export (C, u00165, "gnat__directory_operationsS");
   u00166 : constant Version_32 := 16#e5480ede#;
   pragma Export (C, u00166, "ada__strings__fixedB");
   u00167 : constant Version_32 := 16#a86b22b3#;
   pragma Export (C, u00167, "ada__strings__fixedS");
   u00168 : constant Version_32 := 16#c024395a#;
   pragma Export (C, u00168, "gnat__os_libS");
   u00169 : constant Version_32 := 16#d763507a#;
   pragma Export (C, u00169, "system__val_intB");
   u00170 : constant Version_32 := 16#8b8d0098#;
   pragma Export (C, u00170, "system__val_intS");
   u00171 : constant Version_32 := 16#1d9142a4#;
   pragma Export (C, u00171, "system__val_unsB");
   u00172 : constant Version_32 := 16#e706bb1f#;
   pragma Export (C, u00172, "system__val_unsS");
   u00173 : constant Version_32 := 16#084c16d0#;
   pragma Export (C, u00173, "gnat__regexpS");
   u00174 : constant Version_32 := 16#933fac2f#;
   pragma Export (C, u00174, "system__regexpB");
   u00175 : constant Version_32 := 16#e01a8d6b#;
   pragma Export (C, u00175, "system__regexpS");
   u00176 : constant Version_32 := 16#b4645806#;
   pragma Export (C, u00176, "gnat__stringsS");
   u00177 : constant Version_32 := 16#33489ddc#;
   pragma Export (C, u00177, "gnattest_generatedS");
   u00178 : constant Version_32 := 16#79aa9fe9#;
   pragma Export (C, u00178, "gnattest_main_suiteB");
   u00179 : constant Version_32 := 16#eea1e993#;
   pragma Export (C, u00179, "gnattest_main_suiteS");
   u00180 : constant Version_32 := 16#c80d70ed#;
   pragma Export (C, u00180, "vectorsB");
   u00181 : constant Version_32 := 16#4315d79c#;
   pragma Export (C, u00181, "vectorsS");
   u00182 : constant Version_32 := 16#e18a47a0#;
   pragma Export (C, u00182, "ada__float_text_ioB");
   u00183 : constant Version_32 := 16#e61b3c6c#;
   pragma Export (C, u00183, "ada__float_text_ioS");
   u00184 : constant Version_32 := 16#d5f9759f#;
   pragma Export (C, u00184, "ada__text_io__float_auxB");
   u00185 : constant Version_32 := 16#f854caf5#;
   pragma Export (C, u00185, "ada__text_io__float_auxS");
   u00186 : constant Version_32 := 16#181dc502#;
   pragma Export (C, u00186, "ada__text_io__generic_auxB");
   u00187 : constant Version_32 := 16#a6c327d3#;
   pragma Export (C, u00187, "ada__text_io__generic_auxS");
   u00188 : constant Version_32 := 16#8aa4f090#;
   pragma Export (C, u00188, "system__img_realB");
   u00189 : constant Version_32 := 16#04807b45#;
   pragma Export (C, u00189, "system__img_realS");
   u00190 : constant Version_32 := 16#c7bf9154#;
   pragma Export (C, u00190, "system__fat_llfS");
   u00191 : constant Version_32 := 16#1b28662b#;
   pragma Export (C, u00191, "system__float_controlB");
   u00192 : constant Version_32 := 16#23d4699b#;
   pragma Export (C, u00192, "system__float_controlS");
   u00193 : constant Version_32 := 16#3e932977#;
   pragma Export (C, u00193, "system__img_lluB");
   u00194 : constant Version_32 := 16#be6756e7#;
   pragma Export (C, u00194, "system__img_lluS");
   u00195 : constant Version_32 := 16#ec78c2bf#;
   pragma Export (C, u00195, "system__img_unsB");
   u00196 : constant Version_32 := 16#685a6ad3#;
   pragma Export (C, u00196, "system__img_unsS");
   u00197 : constant Version_32 := 16#93584cd0#;
   pragma Export (C, u00197, "system__powten_tableS");
   u00198 : constant Version_32 := 16#faa9a7b2#;
   pragma Export (C, u00198, "system__val_realB");
   u00199 : constant Version_32 := 16#3d015db6#;
   pragma Export (C, u00199, "system__val_realS");
   u00200 : constant Version_32 := 16#6c05c057#;
   pragma Export (C, u00200, "system__exn_llfB");
   u00201 : constant Version_32 := 16#7f56917b#;
   pragma Export (C, u00201, "system__exn_llfS");
   u00202 : constant Version_32 := 16#9b5d36b3#;
   pragma Export (C, u00202, "system__fat_fltS");
   u00203 : constant Version_32 := 16#84ad4a42#;
   pragma Export (C, u00203, "ada__numericsS");
   u00204 : constant Version_32 := 16#3e0cf54d#;
   pragma Export (C, u00204, "ada__numerics__auxB");
   u00205 : constant Version_32 := 16#9f6e24ed#;
   pragma Export (C, u00205, "ada__numerics__auxS");
   u00206 : constant Version_32 := 16#cc935169#;
   pragma Export (C, u00206, "system__machine_codeS");
   u00207 : constant Version_32 := 16#52f1910f#;
   pragma Export (C, u00207, "system__assertionsB");
   u00208 : constant Version_32 := 16#0ea50633#;
   pragma Export (C, u00208, "system__assertionsS");
   u00209 : constant Version_32 := 16#59a5928d#;
   pragma Export (C, u00209, "vectors__test_dataB");
   u00210 : constant Version_32 := 16#112a3b9a#;
   pragma Export (C, u00210, "vectors__test_dataS");
   u00211 : constant Version_32 := 16#269b1972#;
   pragma Export (C, u00211, "aunit__test_fixturesB");
   u00212 : constant Version_32 := 16#3b99f1a5#;
   pragma Export (C, u00212, "aunit__test_fixturesS");
   u00213 : constant Version_32 := 16#c6ffce99#;
   pragma Export (C, u00213, "vectors__test_data__testsB");
   u00214 : constant Version_32 := 16#4cd937cb#;
   pragma Export (C, u00214, "vectors__test_data__testsS");
   u00215 : constant Version_32 := 16#6484f005#;
   pragma Export (C, u00215, "vectors__test_data__tests__suiteB");
   u00216 : constant Version_32 := 16#55317479#;
   pragma Export (C, u00216, "vectors__test_data__tests__suiteS");
   u00217 : constant Version_32 := 16#8f189ee8#;
   pragma Export (C, u00217, "aunit__test_callerB");
   u00218 : constant Version_32 := 16#581d22b8#;
   pragma Export (C, u00218, "aunit__test_callerS");
   --  BEGIN ELABORATION ORDER
   --  ada%s
   --  ada.characters%s
   --  ada.characters.handling%s
   --  ada.characters.latin_1%s
   --  ada.command_line%s
   --  gnat%s
   --  gnat.io%s
   --  gnat.io%b
   --  gnat.source_info%s
   --  interfaces%s
   --  system%s
   --  system.address_operations%s
   --  system.address_operations%b
   --  system.atomic_counters%s
   --  system.atomic_counters%b
   --  system.case_util%s
   --  system.case_util%b
   --  system.exn_int%s
   --  system.exn_int%b
   --  system.exn_llf%s
   --  system.exn_llf%b
   --  system.float_control%s
   --  system.float_control%b
   --  system.htable%s
   --  system.img_bool%s
   --  system.img_bool%b
   --  system.img_int%s
   --  system.img_int%b
   --  system.img_real%s
   --  system.io%s
   --  system.io%b
   --  system.machine_code%s
   --  system.os_primitives%s
   --  system.os_primitives%b
   --  system.parameters%s
   --  system.parameters%b
   --  system.crtl%s
   --  interfaces.c_streams%s
   --  interfaces.c_streams%b
   --  system.powten_table%s
   --  system.standard_library%s
   --  system.exceptions_debug%s
   --  system.exceptions_debug%b
   --  system.storage_elements%s
   --  system.storage_elements%b
   --  system.stack_checking%s
   --  system.stack_checking%b
   --  system.string_hash%s
   --  system.string_hash%b
   --  system.htable%b
   --  system.strings%s
   --  system.strings%b
   --  gnat.strings%s
   --  system.os_lib%s
   --  gnat.os_lib%s
   --  system.traceback_entries%s
   --  system.traceback_entries%b
   --  ada.exceptions%s
   --  system.soft_links%s
   --  system.unsigned_types%s
   --  system.fat_flt%s
   --  system.fat_llf%s
   --  system.img_llu%s
   --  system.img_llu%b
   --  system.img_uns%s
   --  system.img_uns%b
   --  system.img_real%b
   --  system.val_int%s
   --  system.val_llu%s
   --  system.val_real%s
   --  system.val_uns%s
   --  system.val_util%s
   --  system.val_util%b
   --  system.val_uns%b
   --  system.val_real%b
   --  system.val_llu%b
   --  system.val_int%b
   --  system.wch_con%s
   --  system.wch_con%b
   --  system.wch_cnv%s
   --  system.wch_jis%s
   --  system.wch_jis%b
   --  system.wch_cnv%b
   --  system.wch_stw%s
   --  system.wch_stw%b
   --  ada.exceptions.last_chance_handler%s
   --  ada.exceptions.last_chance_handler%b
   --  ada.exceptions.traceback%s
   --  system.address_image%s
   --  system.bit_ops%s
   --  system.bit_ops%b
   --  system.compare_array_unsigned_8%s
   --  system.compare_array_unsigned_8%b
   --  system.exception_table%s
   --  system.exception_table%b
   --  ada.io_exceptions%s
   --  ada.numerics%s
   --  ada.numerics.aux%s
   --  ada.numerics.aux%b
   --  ada.strings%s
   --  ada.strings.maps%s
   --  ada.strings.fixed%s
   --  ada.strings.maps.constants%s
   --  ada.strings.search%s
   --  ada.strings.search%b
   --  ada.tags%s
   --  ada.streams%s
   --  ada.streams%b
   --  interfaces.c%s
   --  system.exceptions%s
   --  system.exceptions%b
   --  system.exceptions.machine%s
   --  system.file_control_block%s
   --  system.file_io%s
   --  system.finalization_root%s
   --  system.finalization_root%b
   --  ada.finalization%s
   --  system.storage_pools%s
   --  system.storage_pools%b
   --  system.finalization_masters%s
   --  system.storage_pools.subpools%s
   --  system.storage_pools.subpools.finalization%s
   --  system.storage_pools.subpools.finalization%b
   --  system.stream_attributes%s
   --  system.stream_attributes%b
   --  ada.calendar%s
   --  ada.calendar%b
   --  gnat.directory_operations%s
   --  system.assertions%s
   --  system.assertions%b
   --  system.memory%s
   --  system.memory%b
   --  system.standard_library%b
   --  system.pool_global%s
   --  system.pool_global%b
   --  system.secondary_stack%s
   --  system.storage_pools.subpools%b
   --  system.finalization_masters%b
   --  system.file_io%b
   --  interfaces.c%b
   --  ada.tags%b
   --  ada.strings.fixed%b
   --  ada.strings.maps%b
   --  system.soft_links%b
   --  system.os_lib%b
   --  ada.command_line%b
   --  ada.characters.handling%b
   --  system.secondary_stack%b
   --  gnat.directory_operations%b
   --  system.address_image%b
   --  ada.exceptions.traceback%b
   --  ada.strings.unbounded%s
   --  ada.strings.unbounded%b
   --  system.regexp%s
   --  system.regexp%b
   --  gnat.regexp%s
   --  gnat.command_line%s
   --  system.traceback%s
   --  system.traceback%b
   --  gnat.traceback%s
   --  gnat.traceback%b
   --  system.traceback.symbolic%s
   --  system.traceback.symbolic%b
   --  ada.exceptions%b
   --  ada.text_io%s
   --  ada.text_io%b
   --  gnat.command_line%b
   --  ada.text_io.float_aux%s
   --  ada.float_text_io%s
   --  ada.float_text_io%b
   --  ada.text_io.generic_aux%s
   --  ada.text_io.generic_aux%b
   --  ada.text_io.float_aux%b
   --  gnat.traceback.symbolic%s
   --  ada_containers%s
   --  ada_containers.aunit_lists%s
   --  aunit%s
   --  aunit.memory%s
   --  aunit.memory%b
   --  aunit%b
   --  aunit.memory.utils%s
   --  aunit.memory.utils%b
   --  ada_containers.aunit_lists%b
   --  aunit.tests%s
   --  aunit.test_filters%s
   --  aunit.options%s
   --  aunit.time_measure%s
   --  aunit.time_measure%b
   --  aunit.test_results%s
   --  aunit.test_results%b
   --  aunit.assertions%s
   --  aunit.assertions%b
   --  aunit.reporter%s
   --  aunit.reporter.gnattest%s
   --  aunit.reporter.gnattest%b
   --  aunit.simple_test_cases%s
   --  aunit.simple_test_cases%b
   --  aunit.test_filters%b
   --  aunit.test_fixtures%s
   --  aunit.test_fixtures%b
   --  aunit.test_caller%s
   --  aunit.test_caller%b
   --  aunit.test_suites%s
   --  aunit.test_suites%b
   --  aunit.run%s
   --  aunit.run%b
   --  gnattest_generated%s
   --  gnattest_main_suite%s
   --  test_runner%b
   --  vectors%s
   --  vectors%b
   --  vectors.test_data%s
   --  vectors.test_data%b
   --  vectors.test_data.tests%s
   --  vectors.test_data.tests%b
   --  vectors.test_data.tests.suite%s
   --  vectors.test_data.tests.suite%b
   --  gnattest_main_suite%b
   --  END ELABORATION ORDER


end ada_main;
