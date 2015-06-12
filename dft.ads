--------------------------------------------------------------------------------
--  *  Spec name dft.ads
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
with Ada.Text_IO;
with Ada.Numerics;
with Ada.Numerics.Generic_Elementary_Functions;
with Ada.Numerics.Generic_Complex_Types;
use Ada.Numerics;

package Dft is

	type Value_Type is new Float;
	type Value_Vector is array ( Positive range <> ) of Value_Type;
	
	package T_IO renames Ada.Text_IO;
	package F_IO is new Ada.Text_IO.Float_IO ( Value_Type );
	package Complex_Functions is new Ada.Numerics.Generic_Elementary_Functions ( Value_Type );
	package Complex_Types is new Ada.Numerics.Generic_Complex_Types ( Value_Type );
	
	use Complex_Functions;
	use Complex_Types;
	
	type Complex_Vector is array ( Positive range <> ) of Complex;
	
	procedure Compute ( Input	: in		 Value_Vector;
						     Output	:		out Complex_Vector);
			
end Dft;
