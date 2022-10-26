"
comment for attribute
"
Class {
	#name : #FamixEsopeAttribute,
	#superclass : #FamixEsopeEntity,
	#traits : 'FamixTAttribute',
	#classTraits : 'FamixTAttribute classTrait',
	#instVars : [
		'#segment => FMOne type: #FamixEsopeSegment opposite: #attributes',
		'#type => FMOne type: #FamixEsopeType opposite: #attribute'
	],
	#category : #'Famix-Esope-Entities-Entities'
}

{ #category : #meta }
FamixEsopeAttribute class >> annotation [

	<FMClass: #Attribute super: #FamixEsopeEntity>
	<package: #'Famix-Esope-Entities'>
	<generated>
	^self
]

{ #category : #accessing }
FamixEsopeAttribute >> segment [
	"Relation named: #segment type: #FamixEsopeSegment opposite: #attributes"

	<generated>
	<container>
	^ segment
]

{ #category : #accessing }
FamixEsopeAttribute >> segment: anObject [

	<generated>
	segment := anObject
]

{ #category : #navigation }
FamixEsopeAttribute >> segmentGroup [
	<generated>
	<navigation: 'Segment'>
	^ MooseSpecializedGroup with: self segment
]

{ #category : #accessing }
FamixEsopeAttribute >> type [
	"Relation named: #type type: #FamixEsopeType opposite: #attribute"

	<generated>
	^ type
]

{ #category : #accessing }
FamixEsopeAttribute >> type: anObject [

	<generated>
	type := anObject
]
