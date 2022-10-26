"
SEGMENT permet d'associer un ensemble de données à une variable.
    c'est un regroupement de variables fortran défini par le programmeur.
    elle est réferencée par une seule variable appelée POINTEUR.
"
Class {
	#name : #FamixEsopeSegment,
	#superclass : #FamixEsopeType,
	#instVars : [
		'#pointeurs => FMMany type: #FamixEsopePointeur opposite: #segment',
		'#attributes => FMMany type: #FamixEsopeAttribute opposite: #segment'
	],
	#category : #'Famix-Esope-Entities-Entities'
}

{ #category : #meta }
FamixEsopeSegment class >> annotation [

	<FMClass: #Segment super: #FamixEsopeType>
	<package: #'Famix-Esope-Entities'>
	<generated>
	^self
]

{ #category : #adding }
FamixEsopeSegment >> addAttribute: anObject [
	<generated>
	^ self attributes add: anObject
]

{ #category : #adding }
FamixEsopeSegment >> addPointeur: anObject [
	<generated>
	^ self pointeurs add: anObject
]

{ #category : #accessing }
FamixEsopeSegment >> attributes [
	"Relation named: #attributes type: #FamixEsopeAttribute opposite: #segment"

	<generated>
	<derived>
	^ attributes
]

{ #category : #accessing }
FamixEsopeSegment >> attributes: anObject [

	<generated>
	attributes value: anObject
]

{ #category : #navigation }
FamixEsopeSegment >> attributesGroup [
	<generated>
	<navigation: 'Attributes'>
	^ MooseSpecializedGroup withAll: self attributes asSet
]

{ #category : #accessing }
FamixEsopeSegment >> pointeurs [
	"Relation named: #pointeurs type: #FamixEsopePointeur opposite: #segment"

	<generated>
	<derived>
	^ pointeurs
]

{ #category : #accessing }
FamixEsopeSegment >> pointeurs: anObject [

	<generated>
	pointeurs value: anObject
]
