"
An AIStopwordsSpa1Test is a test class for testing the behavior of AIStopwordsSpa1
"
Class {
	#name : #AIStopwordsSpa1Test,
	#superclass : #AIStopwordsTestCase,
	#category : #'AI-Stopwords-Tests'
}

{ #category : #running }
AIStopwordsSpa1Test >> setUp [
	"Hooks that subclasses may override to define the fixture of test."

	stopwords := AIStopwordsSpa1 new.
]

{ #category : #test }
AIStopwordsSpa1Test >> testStopwordsList [

	self deny: self stopwords stopwordsList isEmpty.
	self assert: (self stopwords stopwordsList isKindOf: String)
]
