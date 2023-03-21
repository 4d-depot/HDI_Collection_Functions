var $index : Integer
If (Form:C1466.info#Null:C1517)
	$index:=Form:C1466.info.indexOf(Form:C1466.es)
	FORM GOTO PAGE:C247($index+1)
	GOTO OBJECT:C206(*; "LB_es")
End if 

