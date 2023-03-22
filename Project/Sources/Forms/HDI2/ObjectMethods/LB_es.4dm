var $index : Integer
If (Form:C1466.info#Null:C1517)
	$index:=Form:C1466.info.indexOf(Form:C1466.es)
	FORM GOTO PAGE:C247($index+1)
	GOTO OBJECT:C206(*; "LB_es")
	
Else 
	$index:=0
	LISTBOX SELECT ROW:C912(*; "LB_es"; 1; lk replace selection:K53:1)
	Form:C1466.info:=Form:C1466.es.first()
	FORM GOTO PAGE:C247($index+1)
End if 

