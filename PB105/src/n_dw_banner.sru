$PBExportHeader$n_dw_banner.sru
forward
global type n_dw_banner from nonvisualobject
end type
end forward

global type n_dw_banner from nonvisualobject
end type
global n_dw_banner n_dw_banner

type variables
Protected:

datawindow	idw_requestor

Private:

Constant String cis_compute_prefix = "c_cuebanner_"
Boolean	ib_italic

end variables

forward prototypes
public function integer of_register (string as_column, string as_prompt)
public subroutine of_setitalic (boolean ab_switch)
public subroutine of_setrequestor (datawindow adw_requestor)
end prototypes

public function integer of_register (string as_column, string as_prompt);string ls_compute, ls_x, ls_y, ls_height, ls_width, ls_fontFace, ls_fontHeight
string ls_backColor, ls_band, ls_error, ls_modify, ls_border

ls_compute = cis_compute_prefix + as_column

ls_height = idw_requestor.describe ( as_column + ".height" )
ls_width = idw_requestor.describe ( as_column + ".width" )
ls_x = idw_requestor.describe ( as_column + ".x" )
ls_y = idw_requestor.describe ( as_column + ".y" )
ls_backColor = idw_requestor.describe ( as_column + ".background.color" )
ls_band = idw_requestor.describe ( as_column + ".band" )
ls_fontFace = idw_requestor.describe ( as_column + ".font.face" )
ls_fontHeight = idw_requestor.describe ( as_column + ".font.height" )
ls_border = idw_requestor.describe ( as_column + ".border" )

ls_modify = "create compute (band=" + ls_band + &
				" name= " + ls_compute + &
				" expression='~"" + as_prompt + "~"'" + &
				" height='" + ls_height + "'" + &
				" width='" + ls_width + "'" + &
				" x='" + ls_x + "'" + &
				" y='" + ls_y + "'" + &
				" background.color='" + ls_backColor + "'" + &
				" font.face ='" + ls_fontFace + "'" + &
				" font.height ='" + ls_fontHeight + "'" + &				
				" color='8421504'" + &
				" border='" + ls_border + "'" + &
				" visible='1~tif(len(" + as_column + ")>0,0,1)'"
				
if ib_italic then
	ls_modify += " font.italic='1'"
end if

ls_modify += ")"

ls_error = idw_requestor.modify ( ls_modify )
if len(ls_error) > 0 then
	messageBox ( "error", ls_error )
end if

return 1
end function

public subroutine of_setitalic (boolean ab_switch);ib_italic = ab_switch
end subroutine

public subroutine of_setrequestor (datawindow adw_requestor);idw_requestor = adw_requestor
end subroutine

on n_dw_banner.create
call super::create
TriggerEvent( this, "constructor" )
end on

on n_dw_banner.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

