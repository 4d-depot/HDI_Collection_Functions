//%attributes = {}
#DECLARE($param : Object)

var $o : Object
var $c : Collection
var $valueType; $item : Integer

// ----------------------------------------------------
// Méthode : DoubleVariant
// Description
// Call back function.
// Returns an object or a collection of objects with the initial value and the double of the value
// Parameters
// $1 -> object with 2 properties
// $1.value -> element value to be evaluated (variant)

// $1.result -> New object or new collection

// ----------------------------------------------------

$valueType:=Value type:C1509($param.value)

Case of 
	: ($valueType=Is real:K8:4)
		
		$o:=New object:C1471
		$o.init:=$param.value
		$o.double:=$param.value*2
		$param.result:=$o
		
	: ($valueType=Is collection:K8:32)
		
		$c:=New collection:C1472
		For each ($item; $param.value)
			$o:=New object:C1471
			$o.init:=$item
			$o.double:=$item*2
			$c.push($o)
		End for each 
		$param.result:=$c
		
End case 