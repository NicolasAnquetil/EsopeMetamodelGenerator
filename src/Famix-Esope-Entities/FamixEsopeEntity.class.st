Class {
	#name : #FamixEsopeEntity,
	#superclass : #MooseEntity,
	#category : #'Famix-Esope-Entities-Entities'
}

{ #category : #meta }
FamixEsopeEntity class >> annotation [

	<FMClass: #Entity super: #MooseEntity>
	<package: #'Famix-Esope-Entities'>
	<generated>
	^self
]

{ #category : #meta }
FamixEsopeEntity class >> metamodel [

	<generated>
	^ FamixEsopeModel metamodel
]

{ #category : #testing }
FamixEsopeEntity >> isAttribute [

	<generated>
	^ false
]

{ #category : #testing }
FamixEsopeEntity >> isStructuralEntity [

	<generated>
	^ false
]

{ #category : #testing }
FamixEsopeEntity >> isType [

	<generated>
	^ false
]
