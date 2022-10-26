"
POINTEUR réference par une seule variable un segment. La connaissance du pointeur suffit pour accéder à toutes les variables contenues dans la structure de données.
"
Class {
	#name : #FamixEsopePointeur,
	#superclass : #FamixEsopeType,
	#instVars : [
		'#segment => FMOne type: #FamixEsopeSegment opposite: #pointeurs'
	],
	#category : #'Famix-Esope-Entities-Entities'
}

{ #category : #meta }
FamixEsopePointeur class >> annotation [

	<FMClass: #Pointeur super: #FamixEsopeType>
	<package: #'Famix-Esope-Entities'>
	<generated>
	^self
]

{ #category : #accessing }
FamixEsopePointeur >> segment [
	"Relation named: #segment type: #FamixEsopeSegment opposite: #pointeurs"

	<generated>
	^ segment
]

{ #category : #accessing }
FamixEsopePointeur >> segment: anObject [

	<generated>
	segment := anObject
]
