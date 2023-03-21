//%attributes = {}
#DECLARE($o : Object; $maxVal : Integer)

If (Undefined:C82($o.accumulator))
	$o.accumulator:=0
End if 

If ($o.value<$maxVal) && (Undefined:C82($1.stop))
	$1.accumulator:=$1.accumulator+$1.value
	$1.stop:=True:C214
	
End if 