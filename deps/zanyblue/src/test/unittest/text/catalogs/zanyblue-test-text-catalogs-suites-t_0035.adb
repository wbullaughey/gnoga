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

separate (ZanyBlue.Test.Text.Catalogs.Suites)
procedure T_0035 (T : in out Test_Case'Class) is

   Facility     : constant Wide_String := "xmpl";
   File_Name    : constant Wide_String := Test_Src_Directory (Test_Area)
                                   & "/strings.properties";
   L_en_US      : constant Locale_Type := Make_Locale ("en_US");
   Catalog      : Catalog_Type;
   Count        : Natural;

   procedure Check (Key : Wide_String; Message : Wide_String);

   procedure Check (Key : Wide_String; Message : Wide_String) is
   begin
      Check_Value (T, Get_Text (Catalog, Facility, Key, L_en_US), Message);
   end Check;

begin
   Catalog := Create;
   Count := Load_File (Catalog, File_Name, Facility, L_en_US);
   WAssert (T, Count = 23, "Expected 23 messages");
   Check ("reboot.msg",
          "Before you can use this program you must restart Windows");
   Check ("reboot.title",
          "Restart");
   Check ("reboot.button.now",
          "Restart now");
   Check ("reboot.button.later",
          "Restart later");
   Check ("license.title",
          "License Agreement");
   Check ("license.question",
          "Do you accept the license agreement:");
   Check ("license.button.accept",
          "Accept");
   Check ("license.button.exit",
          "Exit");
end T_0035;
