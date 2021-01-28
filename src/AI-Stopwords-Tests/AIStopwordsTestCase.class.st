Class {
	#name : #AIStopwordsTestCase,
	#superclass : #TestCase,
	#instVars : [
		'stopwords'
	],
	#category : #'AI-Stopwords-Tests'
}

{ #category : #accessing }
AIStopwordsTestCase >> stopwords [
	^ stopwords
]

{ #category : #accessing }
AIStopwordsTestCase >> stopwords: anObject [
	stopwords := anObject
]
