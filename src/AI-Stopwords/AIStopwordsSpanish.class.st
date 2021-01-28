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
