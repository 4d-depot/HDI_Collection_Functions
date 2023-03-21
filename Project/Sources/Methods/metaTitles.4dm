//%attributes = {}
#DECLARE()->$o : Object

$o:=New object:C1471

If (This:C1470.ID=Form:C1466.info.ID)
	$o.stroke:="#FFFF40"
	$o.fontWeight:="bold"
Else 
	If (This:C1470.title="@v20@")
		$o.stroke:="#A0FFA0"
	Else 
		$o.stroke:="lightgrey"
	End if 
	$o.fontWeight:="normal"
End if 