--------------------------------------------------------------------------------
--  *  Prog name dfttest.adb
--  *  Project name dfttest
--  *
--  *  Version 1.0
--  *  Last update 11/9/08
--  *
--  *  Created by Adrian Hoe on 11/9/08.
--  *  Copyright (c) 2008 AdaStar Informatics http://adastarinformatics.com
--  *  All rights reserved.
--  *
--------------------------------------------------------------------------------
with Ada.Text_IO; With Ada.Float_Text_IO;
with Dft;

use  Ada.Text_IO, Ada.Float_Text_IO;
use  Dft;

procedure dfttest is
   Data   : Value_Vector ( 1 .. 8 );
   Result : Complex_Vector ( Data'Range );
begin
   Data := ( 0.0, 1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0 );
   Dft.Compute ( Data, Result );
   for I in Result'Range loop
      Put ( Float ( Dft.Complex_Types.Modulus ( Result ( I ) ) ) , exp => 0 );
      New_Line;
   end loop;
end dfttest;
