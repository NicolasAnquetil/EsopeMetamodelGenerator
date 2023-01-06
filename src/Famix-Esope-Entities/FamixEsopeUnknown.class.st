"
This entity do not exist or wrongly processed
"
Class {
	#name : #FamixEsopeUnknown,
	#superclass : #FamixEsopeEntity,
	#category : #'Famix-Esope-Entities-Entities'
}

{ #category : #meta }
FamixEsopeUnknown class >> annotation [

	<FMClass: #Unknown super: #FamixEsopeEntity>
	<package: #'Famix-Esope-Entities'>
	<generated>
	^self
]

{ #category : #'private - utility' }
FamixEsopeUnknown class >> getNameFrom: anEntity [

	^ self
]

{ #category : #'private - utility' }
FamixEsopeUnknown class >> newEntity: anEntity [

	self new
		comment: anEntity;
		mooseModel: anEntity mooseModel
]

{ #category : #accessing }
FamixEsopeUnknown >> comment [
	"Relation named: #comment type: #FamixFortranComment opposite: #unknown"

	<generated>
	<derived>
	<FMProperty: #comment type: #FamixFortranComment opposite: #unknown>
	^ self attributeAt: #comment ifAbsent: [ nil ]
]

{ #category : #accessing }
FamixEsopeUnknown >> comment: anObject [

	<generated>
	(self attributeAt: #comment ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self comment.
		self attributeAt: #comment put: anObject.
		otherSide unknown: nil ]
	ifNotNil: [ 
		self attributeAt: #comment put: anObject.
		anObject unknown: self ]
]
