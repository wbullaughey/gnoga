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

separate (ZanyBlue.Test.Text.Locales.Suites)
procedure T_0005 (T : in out Test_Case'Class) is

   type Op_Type is (EQ, NEQ);

   procedure Check_Locales (Left, Right : Wide_String;
                            Op          : Op_Type);

   procedure Check_Locales (Left, Right : Wide_String;
                            Op          : Op_Type) is
      Left_Locale  : constant Locale_Type := Make_Locale (Left);
      Right_Locale : constant Locale_Type := Make_Locale (Right);
   begin
      case Op is
      when EQ =>
         WAssert (T, Left_Locale = Right_Locale,
                  "'" & Left & "' should = '" & Right & "'");
      when NEQ =>
         WAssert (T, Left_Locale /= Right_Locale,
                  "'" & Left & "' should /= '" & Right & "'");
      end case;
   end Check_Locales;

begin
   Check_Locales ("",      "",      EQ);
   Check_Locales ("fr",    "",      NEQ);
   Check_Locales ("",      "fr",    NEQ);
   Check_Locales ("fr_FR", "fr",    NEQ);
   Check_Locales ("fr",    "fr_FR", NEQ);
   Check_Locales ("fr",    "fr",    EQ);
   Check_Locales ("fr_FR", "fr_FR", EQ);
end T_0005;
