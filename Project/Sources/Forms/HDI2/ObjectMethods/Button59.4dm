
//Form.results.ms:=Milliseconds
//For ($i; 1; 1000)

If (Shift down:C543)
	Form:C1466.results.flatCollection:=Form:C1466.colNestedInteger.map("DoubleVariant")
	Form:C1466.results.flatCollection:=Form:C1466.results.flatCollection.flat(MAXLONG:K35:2)
Else 
	Form:C1466.results.flatCollection:=Form:C1466.colNestedInteger.flatMap("DoubleVariant")
End if 

//End for 

//Form.results.ms:=Milliseconds-Form.results.ms
