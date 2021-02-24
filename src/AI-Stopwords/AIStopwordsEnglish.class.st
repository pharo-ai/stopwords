Class {
	#name : #AIStopwordsEnglish,
	#superclass : #AIStopwords,
	#classVars : [
		'DefaultStopWordClass'
	],
	#category : #'AI-Stopwords'
}

{ #category : #accessing }
AIStopwordsEnglish class >> defaultStopwordClass [
	^ DefaultStopWordClass
		ifNil: [ DefaultStopWordClass := AIStopwordsEngSMART ]
]

{ #category : #accessing }
AIStopwordsEnglish class >> defaultStopwordClass: anObject [

	^ DefaultStopWordClass := anObject
]

{ #category : #accessing }
AIStopwordsEnglish >> stopwordsList [ 
	" Answer a <String> with receiver's stop words "
	
	self subclassResponsibility
]
