//%attributes = {}
If (Is Windows:C1573)  //| (Macintosh option down)
	ST SET ATTRIBUTES:C1093(*; "formInfo"; ST Start text:K78:15; ST End text:K78:16; Attribute text size:K65:6; 22)
Else 
	ST SET ATTRIBUTES:C1093(*; "formInfo"; ST Start text:K78:15; ST End text:K78:16; Attribute text size:K65:6; 26)
End if 
