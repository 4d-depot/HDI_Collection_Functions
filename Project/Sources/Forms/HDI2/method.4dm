


Case of 
		
	: (Form event code:C388=On Load:K2:1)
		
		
		Form:C1466.es:=ds:C1482.Info.query("order != :1"; 0).orderBy("order asc")
		
		SET TIMER:C645(-1)
		CountriesCopy:=New collection:C1472
		adjustTextSize
		
	: (Form event code:C388=On Timer:K2:25)
		
		SET TIMER:C645(0)
		
		LISTBOX SELECT ROW:C912(*; "LB_es"; 1; lk replace selection:K53:1)
		Form:C1466.info:=Form:C1466.es.first()
		
	: (Form event code:C388=On Page Change:K2:54)
		adjustTextSize
		
		Init
		
End case 

