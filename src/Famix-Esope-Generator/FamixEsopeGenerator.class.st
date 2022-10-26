Class {
	#name : #FamixEsopeGenerator,
	#superclass : #FamixMetamodelGenerator,
	#instVars : [
		'segment',
		'segini',
		'segsup',
		'segdes',
		'segact',
		'segadj',
		'pointeur',
		'type',
		'attribute',
		'utilisationSegment',
		'accesPointeur',
		'fieldAssignment',
		'accessToDimensions',
		'accessToPointeur',
		'implicitPointeur'
	],
	#category : #'Famix-Esope-Generator'
}

{ #category : #generating }
FamixEsopeGenerator class >> generate [ 
	<script>
	^ super generate
]

{ #category : #generating }
FamixEsopeGenerator class >> packageName [

	^ #'Famix-Esope-Entities'
]

{ #category : #generating }
FamixEsopeGenerator class >> prefix [

	^ #'FamixEsope'
]

{ #category : #generating }
FamixEsopeGenerator class >> submetamodels [
	^ {FamixGenerator}
]

{ #category : #definition }
FamixEsopeGenerator >> commentAccesPointeur [
	^ 'Acceder à un pointeur `Pointeur` pointant sur un segment'
]

{ #category : #definition }
FamixEsopeGenerator >> commentAccessToDimensions [
	^ 'Les accès aux dimensions de la forme `abc.def(/1)`'
]

{ #category : #definition }
FamixEsopeGenerator >> commentAttribute [
	^ 'comment for attribute'
]

{ #category : #definition }
FamixEsopeGenerator >> commentFieldAssignment [
	^ 'Les instructions d’affectation de champs pour les instructions pointées de la
forme `abc.def=variable/value`'
]

{ #category : #definition }
FamixEsopeGenerator >> commentImplicitPointeur [
	^ ''
]

{ #category : #definition }
FamixEsopeGenerator >> commentPointeur [

	^ 'POINTEUR réference par une seule variable un segment. La connaissance du pointeur suffit pour accéder à toutes les variables contenues dans la structure de données.'
]

{ #category : #definition }
FamixEsopeGenerator >> commentSegAct [

	^ 'ACTiver un segment SEGACT'
]

{ #category : #definition }
FamixEsopeGenerator >> commentSegAdj [

	^ 'ajuster la taille d''un segment SEGADJ'
]

{ #category : #definition }
FamixEsopeGenerator >> commentSegDes [

	^ 'DESactiver un segment SEGDES'
]

{ #category : #definition }
FamixEsopeGenerator >> commentSegIni [

	^ 'créer un segment (ou INItialiser) SEGINI'
]

{ #category : #definition }
FamixEsopeGenerator >> commentSegSup [

	^ 'SUPprimer un segment SEGSUP'
]

{ #category : #definition }
FamixEsopeGenerator >> commentSegment [
	^ 'SEGMENT permet d''associer un ensemble de données à une variable.
    c''est un regroupement de variables fortran défini par le programmeur.
    elle est réferencée par une seule variable appelée POINTEUR.'
	
]

{ #category : #definition }
FamixEsopeGenerator >> commentType [
	^ 'comment for type'
]

{ #category : #definition }
FamixEsopeGenerator >> commentUtilisationSegment [

	^ 'instructions qui agissent sur le SEGMENT'
]

{ #category : #definition }
FamixEsopeGenerator >> defineClasses [

	super defineClasses.

	accessToDimensions := builder newClassNamed: #AccessToDimensions comment: self commentAccessToDimensions.
	accessToPointeur := builder newClassNamed: #AccessToPointeur comment: self commentAccesPointeur.

	attribute := builder newClassNamed: #Attribute comment: self commentAttribute.

	fieldAssignment := builder newClassNamed: #FieldAssignment comment: self commentFieldAssignment.

	implicitPointeur := builder newClassNamed: #ImplicitPointeur comment: self commentImplicitPointeur.

	pointeur := builder newClassNamed: #Pointeur comment: self commentPointeur.

	segadj := builder newClassNamed: #SegAdj comment: self commentSegAdj.
	segact := builder newClassNamed: #SegAct comment: self commentSegAct.
	segdes := builder newClassNamed: #SegDes comment: self commentSegDes.
	segini := builder newClassNamed: #SegIni comment: self commentSegIni.
	segsup := builder newClassNamed: #SegSup comment: self commentSegSup.

	segment := builder newClassNamed: #Segment comment: self commentSegment.

	type := builder newClassNamed: #Type comment: self commentType.

	utilisationSegment := builder newClassNamed: #UtilisationSegment comment: self commentUtilisationSegment.

]

{ #category : #definition }
FamixEsopeGenerator >> defineHierarchy [ 
	super defineHierarchy.
	
	attribute --|> #TAttribute.

	accessToDimensions --|> utilisationSegment.		

	accessToPointeur --|> utilisationSegment.
	
	segact --|> utilisationSegment.
	segadj --|> utilisationSegment.
	segdes --|> utilisationSegment.
	segini --|> utilisationSegment.
	segsup --|> utilisationSegment.
	
	fieldAssignment --|> utilisationSegment.

	pointeur --|> type.
	
	segment --|> type.
	
	type --|> #TType.
	
	
]

{ #category : #definition }
FamixEsopeGenerator >> defineProperties [ 
	super defineProperties
]

{ #category : #definition }
FamixEsopeGenerator >> defineRelations [ 
	super defineRelations.
	
	pointeur *- segment.

	segment <>-* attribute.

	attribute - type.
]

{ #category : #definition }
FamixEsopeGenerator >> newBuilder [
	^ super newBuilder
		withImportingContext;
		yourself
]
