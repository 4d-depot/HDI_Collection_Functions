
If (Shift down:C543)
	Form:C1466.results.reduced3:=Form:C1466.colInteger.reverse().reduce("FirstGreaterThan"; 0; 60)
Else 
	Form:C1466.results.reduced3:=Form:C1466.colInteger.reduceRight("FirstGreaterThan"; 0; 60)
End if 