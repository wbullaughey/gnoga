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

with Ada.Characters.Latin_1;
with Ada.Characters.Conversions;
with ZanyBlue.Text.Locales;
with ZanyBlue.Text.Catalogs;

separate (ZanyBlue.Test.Text.Properties_Parser.Suites)
procedure T_0008 (T : in out Test_Case'Class) is

   use Ada.Characters.Latin_1;
   use Ada.Characters.Conversions;
   use ZanyBlue.Text.Locales;
   use ZanyBlue.Text.Catalogs;

   Test_Name : constant Wide_String := "t_0008";
   File_Name : constant Wide_String := Test_In_Name (Test_Area, Test_Name);
   Facility  : constant Wide_String := "myfac";
   Key       : constant Wide_String := "a" & To_Wide_Character (LF) & "b";
   Locale    : constant Locale_Type := Make_Locale ("en_US");
   Catalog   : constant Catalog_Type := Create;
   Handler   : Catalog_Handler_Type;

begin
   Handler.Set_Catalog (Catalog);
   Parse (Handler, File_Name, Facility, Locale);
   Check_Value (T, Get_Text (Catalog, Facility, Key, Locale),
                   "abc",
                "Expected value 'abc' for funky key");
   WAssert (T, Handler.Get_N_Messages = 1, "No message parsed");
end T_0008;
