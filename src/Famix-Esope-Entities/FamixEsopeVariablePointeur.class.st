"
comment for name of variable pointer
"
Class {
	#name : #FamixEsopeVariablePointeur,
	#superclass : #FamixEsopeEntity,
	#traits : 'FamixTStructuralEntity',
	#classTraits : 'FamixTStructuralEntity classTrait',
	#instVars : [
		'#segmentUse => FMOne type: #FamixEsopeSegmentUse opposite: #variablePointeur'
	],
	#category : #'Famix-Esope-Entities-Entities'
}

{ #category : #meta }
FamixEsopeVariablePointeur class >> annotation [

	<FMClass: #VariablePointeur super: #FamixEsopeEntity>
	<package: #'Famix-Esope-Entities'>
	<generated>
	^self
]

{ #category : #accessing }
FamixEsopeVariablePointeur >> segmentUse [
	"Relation named: #segmentUse type: #FamixEsopeSegmentUse opposite: #variablePointeur"

	<generated>
	<derived>
	^ segmentUse
]

{ #category : #accessing }
FamixEsopeVariablePointeur >> segmentUse: anObject [

	<generated>
	segmentUse := anObject
]
