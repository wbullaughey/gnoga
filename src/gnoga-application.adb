------------------------------------------------------------------------------
--                                                                          --
--                   GNOG - The GNU Omnificent GUI for Ada                 --
--                                                                          --
--                     G N O G A . A P P L I C A T I O N                    --
--                                                                          --
--                                 B o d y                                  --
--                                                                          --
--                                                                          --
--                     Copyright (C) 2014 David Botton                      --
--                                                                          --
--  This library is free software;  you can redistribute it and/or modify   --
--  it under terms of the  GNU General Public License  as published by the  --
--  Free Software  Foundation;  either version 3,  or (at your  option) any --
--  later version. This library is distributed in the hope that it will be  --
--  useful, but WITHOUT ANY WARRANTY;  without even the implied warranty of --
--  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.                    --
--                                                                          --
--  As a special exception under Section 7 of GPL version 3, you are        --
--  granted additional permissions described in the GCC Runtime Library     --
--  Exception, version 3.1, as published by the Free Software Foundation.   --
--                                                                          --
--  You should have received a copy of the GNU General Public License and   --
--  a copy of the GCC Runtime Library Exception along with this program;    --
--  see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see   --
--  <http://www.gnu.org/licenses/>.                                         --
--                                                                          --
--  As a special exception, if other files instantiate generics from this   --
--  unit, or you link this unit with other files to produce an executable,  --
--  this  unit  does not  by itself cause  the resulting executable to be   --
--  covered by the GNU General Public License. This exception does not      --
--  however invalidate any other reasons why the executable file  might be  --
--  covered by the  GNU Public License.                                     --
--                                                                          --
-- For more information please go to http://www.gnoga.com                   --
------------------------------------------------------------------------------

with Ada.Strings.Unbounded;
with Ada_Lib.Trace; use Ada_Lib.Trace;
with GNOGA.Ada_Lib;
with GNAT.OS_Lib;

package body Gnoga.Application is
   App_Name : Ada.Strings.Unbounded.Unbounded_String :=
     Ada.Strings.Unbounded.To_Unbounded_String
       ("Gnoga - The GNU Omnificent GUI for Ada");

   HTML_For_On_Close : Ada.Strings.Unbounded.Unbounded_String;
   Trace                         : Boolean renames GNOGA.Ada_Lib.Trace;


   ----------------------
   -- Application_Name --
   ----------------------

   procedure Title (Name : in String) is
   begin
      App_Name := Ada.Strings.Unbounded.To_Unbounded_String (Name);
   end Title;

   function Title return String is
   begin
      return Ada.Strings.Unbounded.To_String (App_Name);
   end Title;

   -------------------
   -- HTML_On_Close --
   -------------------

   procedure HTML_On_Close (HTML : String) is
   begin
      HTML_For_On_Close := Ada.Strings.Unbounded.To_Unbounded_String (HTML);
   end HTML_On_Close;

   function HTML_On_Close return String is
   begin
      return Ada.Strings.Unbounded.To_String (HTML_For_On_Close);
   end HTML_On_Close;

   ------------------
   -- Open_URL_OSX --
   ------------------

   procedure Open_URL_OSX (url : String := "http://127.0.0.1:8080") is
      Args : GNAT.OS_Lib.Argument_List_Access;
      PID  : GNAT.OS_Lib.Process_Id;
   begin
      Args := GNAT.OS_Lib.Argument_String_To_List ("/usr/bin/open " & url);
      PID := GNAT.OS_Lib.Non_Blocking_Spawn
        (Program_Name => Args (Args'First).all,
         Args         => Args (Args'First + 1 .. Args'Last));
   end Open_URL_OSX;

   --------------------
   -- Open_URL_Linux --
   --------------------

   procedure Open_URL_Linux (url : String := "http://127.0.0.1:8080") is
      Args : GNAT.OS_Lib.Argument_List_Access;
      PID  : GNAT.OS_Lib.Process_Id;
   begin
      Args := GNAT.OS_Lib.Argument_String_To_List ("/usr/bin/xdg-open " & url);
      PID := GNAT.OS_Lib.Non_Blocking_Spawn
        (Program_Name => Args (Args'First).all,
         Args         => Args (Args'First + 1 .. Args'Last));
   end Open_URL_Linux;

   ----------------------
   -- Open_URL_Windows --
   ----------------------

   procedure Open_URL_Windows (url : String := "http://127.0.0.1:8080") is
      Args : GNAT.OS_Lib.Argument_List_Access;
      PID  : GNAT.OS_Lib.Process_Id;
   begin
      Args := GNAT.OS_Lib.Argument_String_To_List ("cmd /c start " & url);
      PID := GNAT.OS_Lib.Non_Blocking_Spawn
        (Program_Name => Args (Args'First).all,
         Args         => Args (Args'First + 1 .. Args'Last));
   end Open_URL_Windows;

   --------------
   -- Open_URL --
   --------------

   procedure Open_URL (url : String := "http://127.0.0.1:8080") is
   begin
      Log_In (Trace);
      Open_URL_OSX (url);
      Log_Out (Trace);
   end Open_URL;

end Gnoga.Application;
