"
Comment for esopeEntity
"
Class {
	#name : #FamixEsopeEsopeFunction,
	#superclass : #FamixEsopeEntity,
	#traits : 'FamixTFunction',
	#classTraits : 'FamixTFunction classTrait',
	#instVars : [
		'#pointerType => FMOne type: #FamixEsopePointerType opposite: #esopeFunction'
	],
	#category : #'Famix-Esope-Entities-Entities'
}

{ #category : #meta }
FamixEsopeEsopeFunction class >> annotation [

	<FMClass: #EsopeFunction super: #FamixEsopeEntity>
	<package: #'Famix-Esope-Entities'>
	<generated>
	^self
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

{ #category : #accessing }
FamixEsopeEsopeFunction >> pointerType [
	"Relation named: #pointerType type: #FamixEsopePointerType opposite: #esopeFunction"

	<generated>
	^ pointerType
]

{ #category : #accessing }
FamixEsopeEsopeFunction >> pointerType: anObject [

	<generated>
	pointerType := anObject
]
