Extension { #name : #FamixFortranComment }

{ #category : #'*Famix-Esope-Entities-accessing' }
FamixFortranComment >> pointerType [
	"Relation named: #pointerType type: #FamixEsopePointerType opposite: #comment"

	<generated>
	<FMProperty: #pointerType type: #FamixEsopePointerType opposite: #comment>
	<package: #'Famix-Esope-Entities'>
	^ self attributeAt: #pointerType ifAbsent: [ nil ]
]

{ #category : #'*Famix-Esope-Entities-accessing' }
FamixFortranComment >> pointerType: anObject [

	<generated>
	(self attributeAt: #pointerType ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self pointerType.
		self attributeAt: #pointerType put: anObject.
		otherSide comment: nil ]
	ifNotNil: [ 
		self attributeAt: #pointerType put: anObject.
		anObject comment: self ]
]

{ #category : #'*Famix-Esope-Entities-accessing' }
FamixFortranComment >> segment [
	"Relation named: #segment type: #FamixEsopeSegment opposite: #comment"

	<generated>
	<FMProperty: #segment type: #FamixEsopeSegment opposite: #comment>
	<package: #'Famix-Esope-Entities'>
	^ self attributeAt: #segment ifAbsent: [ nil ]
]

{ #category : #'*Famix-Esope-Entities-accessing' }
FamixFortranComment >> segment: anObject [

	<generated>
	(self attributeAt: #segment ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self segment.
		self attributeAt: #segment put: anObject.
		otherSide comment: nil ]
	ifNotNil: [ 
		self attributeAt: #segment put: anObject.
		anObject comment: self ]
]

{ #category : #'*Famix-Esope-Entities-accessing' }
FamixFortranComment >> segmentUse [
	"Relation named: #segmentUse type: #FamixEsopeSegmentUse opposite: #comment"

	<generated>
	<FMProperty: #segmentUse type: #FamixEsopeSegmentUse opposite: #comment>
	<package: #'Famix-Esope-Entities'>
	^ self attributeAt: #segmentUse ifAbsent: [ nil ]
]

{ #category : #'*Famix-Esope-Entities-accessing' }
FamixFortranComment >> segmentUse: anObject [

	<generated>
	(self attributeAt: #segmentUse ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self segmentUse.
		self attributeAt: #segmentUse put: anObject.
		otherSide comment: nil ]
	ifNotNil: [ 
		self attributeAt: #segmentUse put: anObject.
		anObject comment: self ]
]
