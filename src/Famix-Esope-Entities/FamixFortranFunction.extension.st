Extension { #name : #FamixFortranFunction }

{ #category : #'*Famix-Esope-Entities-accessing' }
FamixFortranFunction >> esopeFunction [
	"Relation named: #esopeFunction type: #FamixEsopeEsopeFunction opposite: #function"

	<generated>
	<derived>
	<FMProperty: #esopeFunction type: #FamixEsopeEsopeFunction opposite: #function>
	<package: #'Famix-Esope-Entities'>
	^ self attributeAt: #esopeFunction ifAbsent: [ nil ]
]

{ #category : #'*Famix-Esope-Entities-accessing' }
FamixFortranFunction >> esopeFunction: anObject [

	<generated>
	(self attributeAt: #esopeFunction ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self esopeFunction.
		self attributeAt: #esopeFunction put: anObject.
		otherSide function: nil ]
	ifNotNil: [ 
		self attributeAt: #esopeFunction put: anObject.
		anObject function: self ]
]
