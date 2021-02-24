"
An AIStopwordsEngSMARTTest is a test class for testing the behavior of AIStopwordsEngSMART
"
Class {
	#name : #AIStopwordsEngSMARTTest,
	#superclass : #AIStopwordsTestCase,
	#category : #'AI-Stopwords-Tests'
}

{ #category : #running }
AIStopwordsEngSMARTTest >> setUp [
	"Hooks that subclasses may override to define the fixture of test."

	stopwords := AIStopwordsEngSMART new.
]

{ #category : #test }
AIStopwordsEngSMARTTest >> testDataSource [

	| ds |
	ds := self stopwords class dataSource.
	self deny: ds isEmpty.
	
	self assert: (ds first isKindOf: String).
	self assert: (ds second isKindOf: String).
	self assert: (ds third isKindOf: Number).
	self assert: (ds fourth isKindOf: String)
]

{ #category : #test }
AIStopwordsEngSMARTTest >> testStopwordsList [

	self deny: self stopwords stopwordsList isEmpty.
	self assert: (self stopwords stopwordsList isKindOf: String)
]
