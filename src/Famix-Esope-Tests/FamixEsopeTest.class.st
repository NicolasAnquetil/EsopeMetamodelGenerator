Class {
	#name : #FamixEsopeTest,
	#superclass : #TestCase,
	#instVars : [
		'model',
		'segini',
		'segact',
		'segment',
		'pointer',
		'segdes',
		'segsup',
		'segadj'
	],
	#category : #'Famix-Esope-Tests'
}

{ #category : #running }
FamixEsopeTest >> setUp [

	super setUp.

	model := FamixEsopeModel new.
	segini := FamixFortranComment new
		          content: 'segini,xs';
		          mooseModel: model;
		          yourself.

	segact := FamixFortranComment new
		          content: 'eso  segact,xs';
		          mooseModel: model;
		          yourself.


	segdes := FamixFortranComment new
		          content: 'segdes,xs';
		          mooseModel: model;
		          yourself.


	segsup := FamixFortranComment new
		          content: 'eso  segsup,xs';
		          mooseModel: model;
		          yourself.



	segadj := FamixFortranComment new
		          content: 'eso  segadj,xs';
		          mooseModel: model;
		          yourself.
	segment := FamixFortranComment new
		           content: 'eso  segment,values
eso    character*8        valtyp
eso    real               valf(valnf)
eso    integer            vale(valne)
eso  endsegment
';
		           mooseModel: model;
		           yourself.

	pointer := FamixEsopePointer new
		           mooseModel: model;
		           name: 'xs';
		           yourself
]

{ #category : #tests }
FamixEsopeTest >> testNewEntity [

	| result |
	result := FamixEsopeSegdes newEntity: segdes.
	self assert: result pointer notNil.
	self assert: result pointer name equals: pointer name.
	self assert: result pointer name equals: 'xs'.

	result := FamixEsopeSegini newEntity: segini.
	self assert: result pointer notNil.
	self assert: result pointer name equals: pointer name.
	self assert: result pointer name equals: 'xs'.

	result := FamixEsopeSegact newEntity: segact.
	self assert: result pointer notNil.
	self assert: result pointer name equals: pointer name.
	self assert: result pointer name equals: 'xs'.

	result := FamixEsopeSegsup newEntity: segsup.
	self assert: result pointer notNil.
	self assert: result pointer name equals: pointer name.
	self assert: result pointer name equals: 'xs'.
	
	result := FamixEsopeSegadj newEntity: segadj.
	self assert: result pointer notNil.
	self assert: result pointer name equals: pointer name.
	self assert: result pointer name equals: 'xs'
]

{ #category : #tests }
FamixEsopeTest >> testSegment [

	| result |
	
	result := FamixEsopeSegment newEntity: segment.
	self assert: result pointers size equals: 0.
	self assert: result attributes size equals: 3.
	self assert: result attributes first name equals: 'valtyp'.
	self assert: result name equals: 'values'.
	
	
	"self assert: result attributes first type equals: 'character*8'"
]
