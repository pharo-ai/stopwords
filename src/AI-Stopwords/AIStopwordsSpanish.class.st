Class {
	#name : #AIStopwordsSpanish,
	#superclass : #AIStopwords,
	#classVars : [
		'DefaultStopWordClass'
	],
	#category : #'AI-Stopwords'
}

{ #category : #accessing }
AIStopwordsSpanish class >> defaultStopWordClass [
	^ DefaultStopWordClass
		ifNil: [ DefaultStopWordClass := AIStopwordsSpa1 ]
]

{ #category : #accessing }
AIStopwordsSpanish class >> defaultStopWordClass: anObject [
	DefaultStopWordClass := anObject
]
