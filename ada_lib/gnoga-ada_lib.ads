with Ada.Exceptions;
with GNAT.Source_Info;
with Gnoga.Gui.Window;

package Gnoga.Ada_Lib is

   procedure Report_Exception (
      Window                     : in out Gnoga.Gui.Window.Window_Type'class;
      Fault                      : in     Ada.Exceptions.Exception_Occurrence;
      Message                    : in     String;
      Where                      : in     String := GNAT.Source_Info.Source_Location);

   Trace                         : Boolean := False;

end Gnoga.Ada_Lib;
