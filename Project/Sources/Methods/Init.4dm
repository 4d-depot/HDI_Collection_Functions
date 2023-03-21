//%attributes = {}
var $i : Integer
var $rnd : Integer

// page 2
CountriesCsv:=Document to text:C1236(Get 4D folder:C485(Current resources folder:K5:16)+"Countries.csv"; "UTF-8"; Document with CR:K24:21)
CountriesSplit:=New collection:C1472

// page 3 / page 8
CountriesObj:=InitCountriesObj
CLEAR VARIABLE:C89(ISO_3166_1)
CLEAR VARIABLE:C89(Country)
CLEAR VARIABLE:C89(Surface)
CLEAR VARIABLE:C89(Continent)

// page 4 / page 7
Countries:=InitCountries
CountriesCopy:=New collection:C1472

// page 5
Numbers:=InitPrices
Doubles:=New collection:C1472

//page 6
PricesList:=InitPrices.map("PriceCalc")
CLEAR VARIABLE:C89(AverageRes)
CLEAR VARIABLE:C89(MinRes)
CLEAR VARIABLE:C89(SumRes)
CLEAR VARIABLE:C89(MaxRes)
CLEAR VARIABLE:C89(ReduceRes)

// page 7
CLEAR VARIABLE:C89(ValueToInsert)
ValueToInsert:="Hello world"
RowNumber:=0

// page 8
FindRes:=New collection:C1472
CLEAR VARIABLE:C89(ASRes)
ExtractProperty:="Continent"


// page 9 / page 10  / page 14
CountriesWithNull:=Countries.copy()
CountriesWithNull.insert(Random:C100%20; Null:C1517).insert(Random:C100%20; Null:C1517).insert(Random:C100%20; Null:C1517)
PricesWithNull:=InitPricesWithNull
TypeMix:=CountriesWithNull.concat(PricesWithNull)
CLEAR VARIABLE:C89(FirstRes)
CLEAR VARIABLE:C89(LastRes)
CLEAR VARIABLE:C89(CountRes)
CLEAR VARIABLE:C89(CountValRes)
CLEAR VARIABLE:C89(LengthRes)

// page 10

CLEAR VARIABLE:C89(EqualRes)
ValRes:=New collection:C1472

// page 11
Coll1:=InitPrices.slice(0; 5)
Coll2:=InitPrices(100).slice(0; 5)
CollectionRes:=New collection:C1472


Form:C1466.results:=New object:C1471

Form:C1466.nestedCollections:=New collection:C1472

Form:C1466.nestedCollections.push("alpha")
Form:C1466.nestedCollections.push("bravo")
Form:C1466.nestedCollections.push(New collection:C1472("charlie"; "delta"))
Form:C1466.nestedCollections.push(New collection:C1472("echo"; "foxtrop"))
Form:C1466.nestedCollections.push(New collection:C1472("golf"; New collection:C1472("hotel"; "india")))
Form:C1466.nestedCollections.push(New collection:C1472("juliett"; New collection:C1472("kilo"; New collection:C1472("lima"; "mike"))))
Form:C1466.nestedCollections.push("november")


Form:C1466.col123:=New collection:C1472(1; 2; 3)
Form:C1466.obj123:=New object:C1471("a"; 1; "b"; 2; "c"; 3)
Form:C1466.heteroCollection:=New collection:C1472
Form:C1466.heteroCollection.push("Alpha"; 50; Current date:C33)
Form:C1466.heteroCollection.push(Form:C1466.col123)
Form:C1466.heteroCollection.push(Form:C1466.obj123)

Form:C1466.colInteger:=New collection:C1472
For ($i; 1; 20)
	Form:C1466.colInteger.push((Random:C100%100)+1)
End for 


Form:C1466.colNestedInteger:=New collection:C1472
For ($i; 1; 10)
	$rnd:=Random:C100%3
	Case of 
		: ($rnd=0)
			Form:C1466.colNestedInteger.push((Random:C100%100)+1)
		: ($rnd=1)
			Form:C1466.colNestedInteger.push(New collection:C1472((Random:C100%100)+1; (Random:C100%100)+1))
		: ($rnd=2)
			Form:C1466.colNestedInteger.push(New collection:C1472((Random:C100%100)+1; (Random:C100%100)+1; (Random:C100%100)+1))
	End case 
End for 



