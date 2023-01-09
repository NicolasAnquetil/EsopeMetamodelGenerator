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
FamixEsopeTest >> testEsoAr [

	| esopeFunc fortranFunc |
	fortranFunc := FamixFortranFunction new
		               isEsope: true;
		               name: 'esoar';
		               mooseModel: model;
		               yourself.

	esopeFunc := FamixEsopeEsoAt new
		             function: fortranFunc;
		             name: fortranFunc name;
		             mooseModel: model;
		             yourself.

	self assert: esopeFunc name equals: fortranFunc name.
	self assert: esopeFunc function equals: fortranFunc
]

{ #category : #tests }
FamixEsopeTest >> testEsoAt [

	| esopeFunc fortranFunc |
	fortranFunc := FamixFortranFunction new
		               isEsope: true;
		               name: 'esoat';
		               mooseModel: model;
		               yourself.

	esopeFunc := FamixEsopeEsoAt new
		             function: fortranFunc;
		             name: fortranFunc name;
		             mooseModel: model;
		             yourself.

	self assert: esopeFunc name equals: fortranFunc name.
	self assert: esopeFunc function equals: fortranFunc
]

{ #category : #tests }
FamixEsopeTest >> testEsoSl [

	| esopeFunc fortranFunc parameters |
	"Esosl(abc, def)"
	parameters := { 
		              (FamixFortranParameter new
			               name: 'abc';
			               yourself).
		              (FamixFortranParameter new
			               name: 'def';
			               yourself) }.


	fortranFunc := FamixFortranFunction new
		               isEsope: true;
		               parameters: parameters;
		               name: 'esosl';
		               mooseModel: model;
		               yourself.

	esopeFunc := FamixEsopeEsoAt new
		             function: fortranFunc;
		             name: fortranFunc name;
		             mooseModel: model;
		             yourself.

	self assert: esopeFunc name equals: fortranFunc name.
	self assert: esopeFunc function equals: fortranFunc.
	self
		assert: esopeFunc function parameters first
		equals: parameters first.
	self
		assert: esopeFunc function parameters last
		equals: parameters last
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
