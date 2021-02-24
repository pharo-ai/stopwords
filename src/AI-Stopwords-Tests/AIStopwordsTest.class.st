"
An AIStopwordsTest is a test class for testing the behavior of AIStopwords
"
Class {
	#name : #AIStopwordsTest,
	#superclass : #AIStopwordsTestCase,
	#category : #'AI-Stopwords-Tests'
}

{ #category : #test }
AIStopwordsTest >> testAddStopword [

	stopwords := AIStopwordsEngCoreNLP new.
	self deny: (stopwords stopwords includes: 'fakeStopword').
	stopwords addStopword: 'fakeStopword'.
	self assert: (stopwords stopwords includes: 'fakeStopword').
]

{ #category : #test }
AIStopwordsTest >> testAddStopwords [

	stopwords := AIStopwordsEngCoreNLP new.
	self deny: (stopwords stopwords includes: 'fakeStopword').
	stopwords addStopwords: #('fakeStopword1' 'fakeStopword2').
	self assert: (stopwords stopwords includesAll: #('fakeStopword1' 'fakeStopword2')).

]

{ #category : #test }
AIStopwordsTest >> testStopwords [

	stopwords := AIStopwordsEngCoreNLP new.
	self deny: stopwords stopwords isEmpty.
	self assert: (stopwords stopwords allSatisfy: [ : word | word isKindOf: String ]).


]
