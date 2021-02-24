"
Please see superclass comment.
"
Class {
	#name : #AIStopwordsFrench,
	#superclass : #AIStopwords,
	#classVars : [
		'DefaultStopWordClass'
	],
	#category : #'AI-Stopwords'
}

{ #category : #accessing }
AIStopwordsFrench class >> defaultStopwordClass [

	^ DefaultStopWordClass
		ifNil: [ DefaultStopWordClass := AIStopwordsFr1 ]
]

{ #category : #accessing }
AIStopwordsFrench class >> defaultStopwordClass: anObject [
	DefaultStopWordClass := anObject
]

{ #category : #accessing }
AIStopwordsFrench >> stopwordsList [ 
	" Answer a <String> with receiver's stop words "
	
	self subclassResponsibility
]
