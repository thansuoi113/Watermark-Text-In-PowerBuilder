$PBExportHeader$u_sle.sru
forward
global type u_sle from singlelineedit
end type
end forward

global type u_sle from singlelineedit
integer width = 402
integer height = 112
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "none"
borderstyle borderstyle = stylelowered!
end type
global u_sle u_sle

type variables
Public:
String	#prompt

Private:
Long 		EM_SETCUEBANNER = 5377


end variables
on u_sle.create
end on

on u_sle.destroy
end on

event constructor;If Len ( #prompt ) > 0 Then
	Send ( Handle ( This ), EM_SETCUEBANNER, 1, #prompt )
End If


end event

