--------------------------------------------------------------------------------
--  *  Body name dft.adb
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

package body Dft is

	procedure Compute (Input	: in		 Value_Vector;
						    Output	:		out Complex_Vector)
	is
		
		Q		: constant Value_Type := 2.0 * Pi / Value_Type (Input'Length);
		G		: Value_Type;
		Sum	: Complex;
	
   begin

      for K in Output'Range loop
				
         Sum := ( Re => 0.0, Im => 0.0 );
				
         for L in Input'Range loop
            G := Value_Type ((K - 1) * (L - 1)) * Q;
            Sum := Sum + Input (L) * (Cos (G), -Sin (G));
         end loop;
				
         Output (K) := Sum;

      end loop;

   end Compute;

end Dft;
