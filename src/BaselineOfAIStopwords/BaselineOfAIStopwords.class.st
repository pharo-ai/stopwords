Class {
	#name : #BaselineOfAIStopwords,
	#superclass : #BaselineOf,
	#category : #BaselineOfAIStopwords
}

{ #category : #baselines }
BaselineOfAIStopwords >> baseline: spec [
  <baseline>
	spec
		for: #(common)
		do: [ 
			spec 
				package: 'AIStopwords';
				package: 'AIStopwords-Tests'	with: [ spec requires: #(AIStopwords) ].
			spec 
				group: 'Core' 						with: #('AIStopwords');
				group: 'Tests' 						with: #('AIStopwords' 'AIStopwords-Tests');
				group: 'default' 					with: #('Core' 'Tests') ]
]
