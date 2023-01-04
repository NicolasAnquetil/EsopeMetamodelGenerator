Class {
	#name : #FamixEsopeEsoAr,
	#superclass : #FamixEsopeEsopeFunction,
	#category : #'Famix-Esope-Entities-Entities'
}

{ #category : #meta }
FamixEsopeEsoAr class >> annotation [

	<FMClass: #EsoAr super: #FamixEsopeEsopeFunction>
	<package: #'Famix-Esope-Entities'>
	<generated>
	^self
]

{ #category : #'private - utility' }
FamixEsopeEsoAr class >> newFromFortranFunction: aFortranFunction [

	^ (super newFromFortranFunction: aFortranFunction) yourself
]
