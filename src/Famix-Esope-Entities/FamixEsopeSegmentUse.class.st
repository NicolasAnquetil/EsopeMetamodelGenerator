"
# Handling of data structures: `SEGMENT`

Few instructions have been added to those of `fortran77`. They are used to manipulate and use the `SEGMENTS`.

As in Fortran, we are led to have a declarative instruction of the SEGMENT and then instructions which act on the SEGMENT. The main thing is to :

    - `segini`: create a segment (or INItialize)
    - `segsup`: Delete(SUPprimer) a segment
    - `segdes`: deactivate (DESactiver) a segment
    - `segact`: ACTivate a segment
    - `segadj`: ADJust the size of a segment.	

"
Class {
	#name : #FamixEsopeSegmentUse,
	#superclass : #FamixEsopeEntity,
	#traits : 'FamixTNamedEntity',
	#classTraits : 'FamixTNamedEntity classTrait',
	#instVars : [
		'#pointer => FMOne type: #FamixEsopePointer opposite: #segmentUse'
	],
	#category : #'Famix-Esope-Entities-Entities'
}

{ #category : #meta }
FamixEsopeSegmentUse class >> annotation [

	<FMClass: #SegmentUse super: #FamixEsopeEntity>
	<package: #'Famix-Esope-Entities'>
	<generated>
	^self
]

{ #category : #'instance creation' }
FamixEsopeSegmentUse class >> newEntity: aFortranComment [

	^ self new
		  pointer: (FamixEsopePointer new
				   mooseModel: aFortranComment mooseModel;
					name: (self getNameFrom: aFortranComment content);
				   yourself);
		  comment: aFortranComment;
		  mooseModel: aFortranComment mooseModel;
		  yourself
]

{ #category : #accessing }
FamixEsopeSegmentUse >> comment [
	"Relation named: #comment type: #FamixFortranComment opposite: #segmentUse"

	<generated>
	<derived>
	<FMProperty: #comment type: #FamixFortranComment opposite: #segmentUse>
	^ self attributeAt: #comment ifAbsent: [ nil ]
]

{ #category : #accessing }
FamixEsopeSegmentUse >> comment: anObject [

	<generated>
	(self attributeAt: #comment ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self comment.
		self attributeAt: #comment put: anObject.
		otherSide segmentUse: nil ]
	ifNotNil: [ 
		self attributeAt: #comment put: anObject.
		anObject segmentUse: self ]
]

{ #category : #accessing }
FamixEsopeSegmentUse >> pointer [
	"Relation named: #pointer type: #FamixEsopePointer opposite: #segmentUse"

	<generated>
	^ pointer
]

{ #category : #accessing }
FamixEsopeSegmentUse >> pointer: anObject [

	<generated>
	pointer := anObject
]
