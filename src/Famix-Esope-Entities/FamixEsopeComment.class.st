Class {
	#name : #FamixEsopeComment,
	#superclass : #FamixEsopeEntity,
	#traits : 'FamixTComment + FamixTSourceEntity',
	#classTraits : 'FamixTComment classTrait + FamixTSourceEntity classTrait',
	#category : #'Famix-Esope-Entities-Entities'
}

{ #category : #meta }
FamixEsopeComment class >> annotation [

	<FMClass: #Comment super: #FamixEsopeEntity>
	<package: #'Famix-Esope-Entities'>
	<generated>
	^self
]

{ #category : #accessing }
FamixEsopeComment >> setOwner: owner [

	self container: owner
]
