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
				package: 'AI-Stopwords';
				package: 'AI-Stopwords-Tests'	with: [ spec requires: #('AI-Stopwords') ].
			spec 
				group: 'Core' 						with: #('AI-Stopwords');
				group: 'Tests' 						with: #('AI-Stopwords' 'AI-Stopwords-Tests');
				group: 'default' 					with: #('Core' 'Tests') ]
]
