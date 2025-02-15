--
--  ZanyBlue, an Ada library and framework for finite element analysis.
--
--  Copyright (c) 2012, 2016, Michael Rohan <mrohan@zanyblue.com>
--  All rights reserved.
--
--  Redistribution and use in source and binary forms, with or without
--  modification, are permitted provided that the following conditions
--  are met:
--
--    * Redistributions of source code must retain the above copyright
--      notice, this list of conditions and the following disclaimer.
--
--    * Redistributions in binary form must reproduce the above copyright
--      notice, this list of conditions and the following disclaimer in the
--      documentation and/or other materials provided with the distribution.
--
--    * Neither the name of ZanyBlue nor the names of its contributors may
--      be used to endorse or promote products derived from this software
--      without specific prior written permission.
--
--  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
--  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
--  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
--  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
--  HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
--  SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED
--  TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
--  PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
--  LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
--  NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
--  SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
--

with ZanyBlue.Text.Properties_Parser;

package body ZanyBlue.Test.Text.Properties_Parser.Suites is

   use Ahven.Framework;
   use ZanyBlue.Text.Properties_Parser;

   Test_Area : constant Wide_String := "text/properties_parser";

   procedure T_0001 (T : in out Test_Case'Class);
   procedure T_0002 (T : in out Test_Case'Class);
   procedure T_0003 (T : in out Test_Case'Class);
   procedure T_0004 (T : in out Test_Case'Class);
   procedure T_0005 (T : in out Test_Case'Class);
   procedure T_0006 (T : in out Test_Case'Class);
   procedure T_0007 (T : in out Test_Case'Class);
   procedure T_0008 (T : in out Test_Case'Class);
   procedure T_0009 (T : in out Test_Case'Class);
   procedure T_0010 (T : in out Test_Case'Class);
   procedure T_0011 (T : in out Test_Case'Class);
   procedure T_0012 (T : in out Test_Case'Class);
   procedure T_0013 (T : in out Test_Case'Class);
   procedure T_0014 (T : in out Test_Case'Class);
   procedure T_0015 (T : in out Test_Case'Class);
   procedure T_0016 (T : in out Test_Case'Class);

   overriding
   procedure Initialize (T : in out Test) is
   begin
      Set_Name (T, "ZanyBlue.Text.Properties_Parser");
      Add_Test_Routine (T, T_0001'Access, "T_0001, Empty file");
      Add_Test_Routine (T, T_0002'Access, "T_0002, Non-existent file");
      Add_Test_Routine (T, T_0003'Access, "T_0003, Syntax errors");
      Add_Test_Routine (T, T_0004'Access, "T_0004, Reporting syntax info");
      Add_Test_Routine (T, T_0005'Access, "T_0005, Handle escaped keys");
      Add_Test_Routine (T, T_0006'Access, "T_0006, Handle comments");
      Add_Test_Routine (T, T_0007'Access, "T_0007, Handle \r in key");
      Add_Test_Routine (T, T_0008'Access, "T_0008, Handle \n in key");
      Add_Test_Routine (T, T_0009'Access, "T_0009, Handle spaces around =");
      Add_Test_Routine (T, T_0010'Access, "T_0010, Handle spaces around :");
      Add_Test_Routine (T, T_0011'Access, "T_0011, Handle escaped eoln");
      Add_Test_Routine (T, T_0012'Access,
                        "T_0012, Exception for duplicate keys");
      Add_Test_Routine (T, T_0013'Access, "T_0013, Handle keys with spaces");
      Add_Test_Routine (T, T_0014'Access,
                        "T_0014, Values with escaped spaces");
      Add_Test_Routine (T, T_0015'Access, "T_0015, Handle \r in value");
      Add_Test_Routine (T, T_0016'Access, "T_0016, Handle \n in value");
   end Initialize;

   function Suite return Test_Suite is
   begin
      return S : Test_Suite do
         Add_Test (S, new Test);
      end return;
   end Suite;

   procedure T_0001 (T : in out Test_Case'Class) is separate;
   procedure T_0002 (T : in out Test_Case'Class) is separate;
   procedure T_0003 (T : in out Test_Case'Class) is separate;
   procedure T_0004 (T : in out Test_Case'Class) is separate;
   procedure T_0005 (T : in out Test_Case'Class) is separate;
   procedure T_0006 (T : in out Test_Case'Class) is separate;
   procedure T_0007 (T : in out Test_Case'Class) is separate;
   procedure T_0008 (T : in out Test_Case'Class) is separate;
   procedure T_0009 (T : in out Test_Case'Class) is separate;
   procedure T_0010 (T : in out Test_Case'Class) is separate;
   procedure T_0011 (T : in out Test_Case'Class) is separate;
   procedure T_0012 (T : in out Test_Case'Class) is separate;
   procedure T_0013 (T : in out Test_Case'Class) is separate;
   procedure T_0014 (T : in out Test_Case'Class) is separate;
   procedure T_0015 (T : in out Test_Case'Class) is separate;
   procedure T_0016 (T : in out Test_Case'Class) is separate;

end ZanyBlue.Test.Text.Properties_Parser.Suites;
