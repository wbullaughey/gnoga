package body Ada_Lib.GNOGA is

   Window_Lock       : Window_Lock_Package.Window_Lock_Type (
                        Window_Lock_Description'access);
                        -- used to save pointer to main window

   package body Window_Lock is

      -------------------------------------------------------------
      function Get_Window (
         Lock     : in     Window_Lock_Type
      ) return Standard.Gnoga.Gui.Window.Pointer_To_Window_Class) is
      -------------------------------------------------------------

      begin
         return Lock.Window;
      end Get_Window;

      -------------------------------------------------------------
      procedure Set_Window (
         Lock     : in out Window_Lock_Type;
         Window   : in     Standard.Gnoga.Gui.Window.Pointer_To_Window_Class) is
      -------------------------------------------------------------

      begin
         Lock.Window := Lock
      end Set_Window;

   end Window_Lock;

   end Window_Lock;

   ----------------------------------------------------------------
   procedure Clear_Window is
   ----------------------------------------------------------------

   begin
      Window_Lock.Window := Null;
   end Clear_Window;

   ----------------------------------------------------------------
   function Get_Window
   return Gnoga.Gui.Window.Pointer_To_Window_Class is
   ----------------------------------------------------------------

   begin
      return Window_Lock.Window;
   end Get_Window;

   ----------------------------------------------------------------
   function Has_Window
   return Boolean is
   ----------------------------------------------------------------

   begin
      return Window_Lock.Window /= Null;
   end Has_Window;

   ----------------------------------------------------------------
   procedure Set_Window
      Window   : in     Standard.Gnoga.Gui.Window.Pointer_To_Window_Class) is
   ----------------------------------------------------------------

   begin
      Window_Lock.Set_Window (Window);
   end Set_Window;

end Ada_Lib.GNOGA;
