"
Please see superclass comment.
"
Class {
	#name : #AIStopwordsSpanish,
	#superclass : #AIStopwords,
	#classVars : [
		'DefaultStopWordClass'
	],
	#category : #'AI-Stopwords'
}

{ #category : #accessing }
AIStopwordsSpanish class >> defaultStopwordClass [
	^ DefaultStopWordClass
		ifNil: [ DefaultStopWordClass := AIStopwordsSpa1 ]
]

{ #category : #accessing }
AIStopwordsSpanish class >> defaultStopwordClass: anObject [
	DefaultStopWordClass := anObject
]

{ #category : #accessing }
AIStopwordsSpanish >> contents [ 
	" Answer a <String> with receiver's stop words "
	
	self subclassResponsibility
]
