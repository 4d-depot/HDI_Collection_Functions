

If (Shift down:C543)
	Form:C1466.results.reduced2:=Form:C1466.colInteger.reverse().reduce("FirstLowerThan"; 0; 40)
Else 
	Form:C1466.results.reduced2:=Form:C1466.colInteger.reduceRight("FirstLowerThan"; 0; 40)
End if 

