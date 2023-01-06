"
Comment for esopeEntity
"
Class {
	#name : #FamixEsopeEsopeFunction,
	#superclass : #FamixEsopeEntity,
	#traits : 'FamixTFunction',
	#classTraits : 'FamixTFunction classTrait',
	#category : #'Famix-Esope-Entities-Entities'
}

{ #category : #meta }
FamixEsopeEsopeFunction class >> annotation [

	<FMClass: #EsopeFunction super: #FamixEsopeEntity>
	<package: #'Famix-Esope-Entities'>
	<generated>
	^self
]

{ #category : #'private - utility' }
FamixEsopeEsopeFunction class >> newEntity: anEntity [

	^ self new
		  function: anEntity;
		  mooseModel: anEntity mooseModel
]

{ #category : #accessing }
FamixEsopeEsopeFunction >> function [
	"Relation named: #function type: #FamixFortranFunction opposite: #esopeFunction"

	<generated>
	<FMProperty: #function type: #FamixFortranFunction opposite: #esopeFunction>
	^ self attributeAt: #function ifAbsent: [ nil ]
]

{ #category : #accessing }
FamixEsopeEsopeFunction >> function: anObject [

	<generated>
	(self attributeAt: #function ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self function.
		self attributeAt: #function put: anObject.
		otherSide esopeFunction: nil ]
	ifNotNil: [ 
		self attributeAt: #function put: anObject.
		anObject esopeFunction: self ]
]
