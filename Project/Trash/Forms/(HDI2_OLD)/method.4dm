


Case of 
		
	: (Form event code:C388=On Load:K2:1)
		
		CountriesCopy:=New collection:C1472
		
		//READ ONLY(*)
		
		ALL RECORDS:C47([Dictionnary:2])
		InitInfo
		
		GOTO SELECTED RECORD:C245([Info:1]; 2)
		vDescription2:=[Info:1]description:2
		
		
		
	: (Form event code:C388=On Page Change:K2:54)
		Init
		
		
End case 

