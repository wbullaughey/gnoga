--                                                                    --
--  package                         Copyright (c)  Dmitry A. Kazakov  --
--     Strings_Edit.Base64                         Luebeck            --
--  Interface                                      Autumn, 2014       --
--                                                                    --
--                                Last revision :  10:03 22 Nov 2014  --
--                                                                    --
--  This  library  is  free software; you can redistribute it and/or  --
--  modify it under the terms of the GNU General Public  License  as  --
--  published by the Free Software Foundation; either version  2  of  --
--  the License, or (at your option) any later version. This library  --
--  is distributed in the hope that it will be useful,  but  WITHOUT  --
--  ANY   WARRANTY;   without   even   the   implied   warranty   of  --
--  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU  --
--  General  Public  License  for  more  details.  You  should  have  --
--  received  a  copy  of  the GNU General Public License along with  --
--  this library; if not, write to  the  Free  Software  Foundation,  --
--  Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.    --
--                                                                    --
--  As a special exception, if other files instantiate generics from  --
--  this unit, or you link this unit with other files to produce  an  --
--  executable, this unit does not by  itself  cause  the  resulting  --
--  executable to be covered by the GNU General Public License. This  --
--  exception  does not however invalidate any other reasons why the  --
--  executable file might be covered by the GNU Public License.       --
--____________________________________________________________________--
--
--  This package  provides  Base64  encoding and decoding  as defined in
--  RFC 4648.
--
package Strings_Edit.Base64 is
--
-- From_Base64 -- Decode Base64 to plain string
--
--    Text - To convert
--
-- Returns :
--
--    Equivalent string
--
-- Exceptions :
--
--    Data_Error - Syntax error
--
   function From_Base64 (Text : String) return String;
--
-- To_Base64 -- Encode plain string as Base64
--
--    Text - To convert
--
-- Returns :
--
--    Base64 string
--
   function To_Base64 (Text : String) return String;

end Strings_Edit.Base64;
