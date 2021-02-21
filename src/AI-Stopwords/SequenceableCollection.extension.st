Extension { #name : #SequenceableCollection }

{ #category : #'*AI-Stopwords' }
SequenceableCollection >> removeStopwordsUsing: stopwordsList [
	" Answer a <Collection> tokenized without stopwords from stopwordsList "

	^ self reject: [ : word | word isStopwordFrom: stopwordsList ]

]
