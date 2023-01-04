"
# Creating and initializing a SEGMENT:
Let's place ourselves again inside a fortran subprogram. 

After having declared the segment by the instruction `SEGMENT...ENDSEGMENT` we have to define a variable which will reference the instanciated structure: the knowledge of this variable gives access to the whole structure. For this purpose a new type of fortran variable is invented: it is the pointer variable whose declaration is : `pointeur poitername.segmentname`.

For example, to allow the instantiation of the class(segment) `myseg` , we declare something like that : 
```fortran77
pointeur ptr1.myseg, ptr2.myseg, ....
```
In this example, `ptr1` and `ptr2` allow to reference a structure of the `myseg` class.

`ptr1` and `ptr2` become a fortran variable of type integer once the tranlation `Esope -> Fortran77` is done.

The creation of a myseg class structure is done by calling `segini` function and specifying the pointer variable used.

"
Class {
	#name : #FamixEsopePointerType,
	#superclass : #FamixEsopeEntity,
	#traits : 'FamixTType',
	#classTraits : 'FamixTType classTrait',
	#instVars : [
		'#esopeFunction => FMOne type: #FamixEsopeEsopeFunction opposite: #pointerType',
		'#segment => FMOne type: #FamixEsopeSegment opposite: #pointerTypes'
	],
	#category : #'Famix-Esope-Entities-Entities'
}

{ #category : #meta }
FamixEsopePointerType class >> annotation [

	<FMClass: #PointerType super: #FamixEsopeEntity>
	<package: #'Famix-Esope-Entities'>
	<generated>
	^self
]

{ #category : #meta }
FamixEsopePointerType class >> newFromFortranComment: aFortranComment [

	^ (super newFromFortranComment: aFortranComment) 
		 name: (self getNameFrom: aFortranComment content without: #pointeur);
		  yourself
]

{ #category : #accessing }
FamixEsopePointerType >> comment [
	"Relation named: #comment type: #FamixFortranComment opposite: #pointerType"

	<generated>
	<derived>
	<FMProperty: #comment type: #FamixFortranComment opposite: #pointerType>
	^ self attributeAt: #comment ifAbsent: [ nil ]
]

{ #category : #accessing }
FamixEsopePointerType >> comment: anObject [

	<generated>
	(self attributeAt: #comment ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self comment.
		self attributeAt: #comment put: anObject.
		otherSide pointerType: nil ]
	ifNotNil: [ 
		self attributeAt: #comment put: anObject.
		anObject pointerType: self ]
]

{ #category : #accessing }
FamixEsopePointerType >> esopeFunction [
	"Relation named: #esopeFunction type: #FamixEsopeEsopeFunction opposite: #pointerType"

	<generated>
	<derived>
	^ esopeFunction
]

{ #category : #accessing }
FamixEsopePointerType >> esopeFunction: anObject [

	<generated>
	esopeFunction := anObject
]

{ #category : #accessing }
FamixEsopePointerType >> segment [
	"Relation named: #segment type: #FamixEsopeSegment opposite: #pointerTypes"

	<generated>
	^ segment
]

{ #category : #accessing }
FamixEsopePointerType >> segment: anObject [

	<generated>
	segment := anObject
]
