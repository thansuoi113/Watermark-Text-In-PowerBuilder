$PBExportHeader$watermarktext.sra
$PBExportComments$Generated Application Object
forward
global type watermarktext from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global type watermarktext from application
string appname = "watermarktext"
end type
global watermarktext watermarktext

on watermarktext.create
appname="watermarktext"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on watermarktext.destroy
destroy(sqlca)
destroy(sqlda)
destroy(sqlsa)
destroy(error)
destroy(message)
end on

event open;open(w_main)
end event

