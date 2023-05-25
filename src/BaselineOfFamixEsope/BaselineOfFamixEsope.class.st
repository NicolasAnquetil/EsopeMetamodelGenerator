Class {
	#name : #BaselineOfFamixEsope,
	#superclass : #BaselineOf,
	#category : #BaselineOfFamixEsope
}

{ #category : #baselines }
BaselineOfFamixEsope >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec blessing: #baseline.
			spec description: 'Esope Famix model'.
			self defineDependencies: spec.
			self definePackages: spec ]
]

{ #category : #baselines }
BaselineOfFamixEsope >> defineDependencies: spec [
	spec
		baseline: 'Famix' with: [ spec repository: 'github://moosetechnology/Famix' ] ;
		baseline: 'FortranMetamodelGenerator' with: [ spec repository: 'github://uNouss/FortranMetamodelGenerator' ]
]

{ #category : #baselines }
BaselineOfFamixEsope >> definePackages: spec [
	spec
		repository: 'https://github.com/uNouss/EsopeMetamodelGenerator';
		package: 'Famix-Esope-Entities' with: [ spec requires: #(Famix FortranMetamodelGenerator) ] ;
		package: 'Famix-Esope-Generator' with: [ spec requires: #(Famix FortranMetamodelGenerator) ]

]
