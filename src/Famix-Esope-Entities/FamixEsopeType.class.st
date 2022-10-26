"
comment for type
"
Class {
	#name : #FamixEsopeType,
	#superclass : #FamixEsopeEntity,
	#traits : 'FamixTType',
	#classTraits : 'FamixTType classTrait',
	#instVars : [
		'#attribute => FMOne type: #FamixEsopeAttribute opposite: #type'
	],
	#category : #'Famix-Esope-Entities-Entities'
}

{ #category : #meta }
FamixEsopeType class >> annotation [

	<FMClass: #Type super: #FamixEsopeEntity>
	<package: #'Famix-Esope-Entities'>
	<generated>
	^self
]

{ #category : #accessing }
FamixEsopeType >> attribute [
	"Relation named: #attribute type: #FamixEsopeAttribute opposite: #type"

	<generated>
	<derived>
	^ attribute
]

{ #category : #accessing }
FamixEsopeType >> attribute: anObject [

	<generated>
	attribute := anObject
]
