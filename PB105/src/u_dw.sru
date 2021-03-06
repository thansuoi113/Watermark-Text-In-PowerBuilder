$PBExportHeader$u_dw.sru
forward
global type u_dw from datawindow
end type
end forward

global type u_dw from datawindow
integer width = 686
integer height = 400
string title = "none"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type
global u_dw u_dw

type variables
Public:
n_dw_banner	inv_cuebanner

end variables
forward prototypes
public subroutine of_setcuebanner (boolean ab_switch)
end prototypes

public subroutine of_setcuebanner (boolean ab_switch);//====================================================================
// Function: u_dw.of_setcuebanner()
//--------------------------------------------------------------------
// Description:
//--------------------------------------------------------------------
// Arguments:
// 	value	boolean	ab_switch	
//--------------------------------------------------------------------
// Returns:  (none)
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/11/01
//--------------------------------------------------------------------
// Usage: u_dw.of_setcuebanner ( boolean ab_switch )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

If ab_switch Then
	If Not IsValid ( inv_cuebanner ) Then
		inv_cuebanner = Create n_dw_banner
		inv_cuebanner.of_setRequestor ( This )
	End If
Else
	If IsValid ( inv_cuebanner ) Then
		Destroy inv_cuebanner
	End If
End If



end subroutine

on u_dw.create
end on

on u_dw.destroy
end on

