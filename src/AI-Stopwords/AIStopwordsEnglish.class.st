Class {
	#name : #AIStopwordsEnglish,
	#superclass : #AIStopwords,
	#classVars : [
		'DefaultStopWordClass'
	],
	#category : #'AI-Stopwords'
}

{ #category : #accessing }
AIStopwordsEnglish class >> defaultStopWordClass [
	^ DefaultStopWordClass
		ifNil: [ DefaultStopWordClass := AIStopwordsEngSMART ]
]

{ #category : #accessing }
AIStopwordsEnglish class >> defaultStopWordClass: anObject [

	^ DefaultStopWordClass := anObject
]
