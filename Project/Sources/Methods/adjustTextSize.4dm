//%attributes = {}
var $i; $n; $size : Integer

FORM GET OBJECTS:C898($_names; $_ptrs; $_pages; Form current page:K67:6)
$n:=Size of array:C274($_names)
For ($i; 1; $n)
	If ($_names{$i}="codesample@") | ($_names{$i}="description")
		
		If (Is Windows:C1573) | (Macintosh option down:C545)
			ST GET ATTRIBUTES:C1094(*; $_names{$i}; ST Start text:K78:15; ST Start text:K78:15+1; Attribute text size:K65:6; $size)
			If ($size>-1)
				ST SET ATTRIBUTES:C1093(*; $_names{$i}; ST Start text:K78:15; ST End text:K78:16; Attribute text size:K65:6; Int:C8($size*72/96))
			End if 
		End if 
	End if 
End for 


