//%attributes = {}
#DECLARE()->$o : Object

$o:=New object:C1471

If (This:C1470.ID=Form:C1466.info.ID)
	$o.stroke:="#FFFFFF"
	$o.fontWeight:="bold"
Else 
	If (This:C1470.title="@v20@")
		//$o.stroke:="#C0FFFF"
		$o.stroke:="#FFB0C0"  // pink
	Else 
		$o.stroke:="#E0E0E0"
	End if 
	$o.fontWeight:="normal"
End if 