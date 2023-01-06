Extension { #name : #FamixFortranComment }

{ #category : #'*Famix-Esope-Entities-accessing' }
FamixFortranComment >> pointer [
	"Relation named: #pointer type: #FamixEsopePointer opposite: #comment"

	<generated>
	<FMProperty: #pointer type: #FamixEsopePointer opposite: #comment>
	<package: #'Famix-Esope-Entities'>
	^ self attributeAt: #pointer ifAbsent: [ nil ]
]

{ #category : #'*Famix-Esope-Entities-accessing' }
FamixFortranComment >> pointer: anObject [

	<generated>
	(self attributeAt: #pointer ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self pointer.
		self attributeAt: #pointer put: anObject.
		otherSide comment: nil ]
	ifNotNil: [ 
		self attributeAt: #pointer put: anObject.
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

{ #category : #'*Famix-Esope-Entities-accessing' }
FamixFortranComment >> unknown [
	"Relation named: #unknown type: #FamixEsopeUnknown opposite: #comment"

	<generated>
	<FMProperty: #unknown type: #FamixEsopeUnknown opposite: #comment>
	<package: #'Famix-Esope-Entities'>
	^ self attributeAt: #unknown ifAbsent: [ nil ]
]

{ #category : #'*Famix-Esope-Entities-accessing' }
FamixFortranComment >> unknown: anObject [

	<generated>
	(self attributeAt: #unknown ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self unknown.
		self attributeAt: #unknown put: anObject.
		otherSide comment: nil ]
	ifNotNil: [ 
		self attributeAt: #unknown put: anObject.
		anObject comment: self ]
]
