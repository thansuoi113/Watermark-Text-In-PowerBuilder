$PBExportHeader$w_main.srw
forward
global type w_main from window
end type
type dw_2 from u_dw within w_main
end type
type dw_1 from u_dw within w_main
end type
type sle_password from u_sle within w_main
end type
type sle_user from u_sle within w_main
end type
type gb_1 from groupbox within w_main
end type
type gb_2 from groupbox within w_main
end type
type gb_3 from groupbox within w_main
end type
end forward

global type w_main from window
integer width = 1161
integer height = 996
boolean titlebar = true
string title = "Watermark Text"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
dw_2 dw_2
dw_1 dw_1
sle_password sle_password
sle_user sle_user
gb_1 gb_1
gb_2 gb_2
gb_3 gb_3
end type
global w_main w_main

on w_main.create
this.dw_2=create dw_2
this.dw_1=create dw_1
this.sle_password=create sle_password
this.sle_user=create sle_user
this.gb_1=create gb_1
this.gb_2=create gb_2
this.gb_3=create gb_3
this.Control[]={this.dw_2,&
this.dw_1,&
this.sle_password,&
this.sle_user,&
this.gb_1,&
this.gb_2,&
this.gb_3}
end on

on w_main.destroy
destroy(this.dw_2)
destroy(this.dw_1)
destroy(this.sle_password)
destroy(this.sle_user)
destroy(this.gb_1)
destroy(this.gb_2)
destroy(this.gb_3)
end on

type dw_2 from u_dw within w_main
integer x = 27
integer y = 680
integer width = 1074
integer height = 188
integer taborder = 50
string dataobject = "d_login"
boolean border = false
borderstyle borderstyle = stylebox!
end type

event constructor;call super::constructor;of_setCueBanner ( True )
inv_cuebanner.of_register ( "user", "Username" )
inv_cuebanner.of_register ( "pass", "Password" )

InsertRow ( 0 )

end event

type dw_1 from u_dw within w_main
integer x = 27
integer y = 384
integer width = 1074
integer height = 188
integer taborder = 20
string dataobject = "d_login"
boolean border = false
borderstyle borderstyle = stylebox!
end type

event constructor;call super::constructor;of_setCueBanner ( True )
inv_cuebanner.of_setItalic ( True )
inv_cuebanner.of_register ( "user", "Username" )
inv_cuebanner.of_register ( "pass", "Password" )

InsertRow ( 0 )

end event

type sle_password from u_sle within w_main
integer x = 59
integer y = 176
integer width = 992
integer height = 96
integer taborder = 10
string text = ""
string #prompt = "Password"
end type

type sle_user from u_sle within w_main
integer x = 59
integer y = 64
integer width = 992
integer height = 96
integer taborder = 10
string text = ""
string #prompt = "Username"
end type

type gb_1 from groupbox within w_main
integer x = 14
integer width = 1120
integer height = 308
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Singleline"
end type

type gb_2 from groupbox within w_main
integer x = 9
integer y = 308
integer width = 1120
integer height = 292
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "DW - Italic"
end type

type gb_3 from groupbox within w_main
integer x = 9
integer y = 604
integer width = 1120
integer height = 292
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "DW - Standard"
end type

