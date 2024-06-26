package body GNOGA.Ada_Lib is

   ----------------------------------------------------------------
   procedure Report_Exception (
      Window                     : in out Gnoga.Gui.Window.Window_Type'class;
      Fault                      : in     Ada.Exceptions.Exception_Occurrence;
      Message                    : in     String;
      Where                      : in     String := GNAT.Source_Info.Source_Location) is
   ----------------------------------------------------------------

      Error_Message              : constant String :=
                                    Ada.Exceptions.Exception_Message (Fault) &
                                    ". " & Message & (if Trace then
                                          " raised at " & Where
                                       else
                                          "");
   begin
      Window.Alert (Error_Message);
   end Report_Exception;

end GNOGA.Ada_Lib;


