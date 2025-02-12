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

with ZanyBlue.Text.Locales;

package body ZanyBlue.Test.Text.Locales.Day_Periods.Suites is

   use Ahven.Framework;
   use ZanyBlue.Text;
   use ZanyBlue.Text.Locales;

   procedure Check_Day_Period
      (T      : in out Test_Case'Class;
       Period : Day_Period_Type;
       Expect : Wide_String;
       Locale : Locale_Type);

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
   procedure T_0017 (T : in out Test_Case'Class);
   procedure T_0018 (T : in out Test_Case'Class);

   procedure Check_Day_Period
      (T      : in out Test_Case'Class;
       Period : Day_Period_Type;
       Expect : Wide_String;
       Locale : Locale_Type)
   is
   begin
      Check_Value (T, Day_Period_Name (Locale, Period), Expect,
                   Locale_Name (Locale) & " day period: " &
                   Day_Period_Type'Wide_Image (Period));
   end Check_Day_Period;

   overriding
   procedure Initialize (T : in out Test) is
   begin
      Set_Name (T, "ZanyBlue.Text.Locales.Day_Periods");
      Add_Test_Routine (T, T_0001'Access, "T_0001, en AM/Noon/PM names");
      Add_Test_Routine (T, T_0002'Access, "T_0002, de AM/Noon/PM names");
      Add_Test_Routine (T, T_0003'Access, "T_0003, fr AM/Noon/PM names");
      Add_Test_Routine (T, T_0004'Access, "T_0004, ja AM/Noon/PM names");
      Add_Test_Routine (T, T_0005'Access, "T_0005, zh AM/Noon/PM names");
      Add_Test_Routine (T, T_0006'Access, "T_0006, ar AM/Noon/PM names");
      Add_Test_Routine (T, T_0007'Access, "T_0007, en extended day periods");
      Add_Test_Routine (T, T_0008'Access, "T_0008, de extended day periods");
      Add_Test_Routine (T, T_0009'Access, "T_0009, fr extended day periods");
      Add_Test_Routine (T, T_0010'Access, "T_0010, ja extended day periods");
      Add_Test_Routine (T, T_0011'Access, "T_0011, zh extended day periods");
      Add_Test_Routine (T, T_0012'Access, "T_0012, ar extended day periods");
      Add_Test_Routine (T, T_0013'Access, "T_0013, en day period from time");
      Add_Test_Routine (T, T_0014'Access, "T_0014, de day period from time");
      Add_Test_Routine (T, T_0015'Access, "T_0015, fr day period from time");
      Add_Test_Routine (T, T_0016'Access, "T_0016, ja day period from time");
      Add_Test_Routine (T, T_0017'Access, "T_0017, zh day period from time");
      Add_Test_Routine (T, T_0018'Access, "T_0018, ar day period from time");
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
   procedure T_0017 (T : in out Test_Case'Class) is separate;
   procedure T_0018 (T : in out Test_Case'Class) is separate;

end ZanyBlue.Test.Text.Locales.Day_Periods.Suites;
