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

{ #category : #'private - utility' }
FamixEsopeEntity class >> getNameFrom: aFortranComment without: aPrefix [

	^ ((aFortranComment removePrefix: 'eso') trim removePrefix: aPrefix)
		  trim removePrefix: ','
]

{ #category : #meta }
FamixEsopeEntity class >> metamodel [

	<generated>
	^ FamixEsopeModel metamodel
]

{ #category : #meta }
FamixEsopeEntity class >> newFromFortranComment: aFortranComment [
1halt.
	^ self new
		  comment: aFortranComment;
		  yourself
]

{ #category : #testing }
FamixEsopeEntity >> isAttribute [

	<generated>
	^ false
]

{ #category : #testing }
FamixEsopeEntity >> isBehavioural [

	<generated>
	^ false
]

{ #category : #testing }
FamixEsopeEntity >> isFunction [

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
