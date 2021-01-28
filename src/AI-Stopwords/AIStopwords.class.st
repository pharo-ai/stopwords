"
Abstract class façade to quickly obtain a stop word Collection. It supports multiple stopwords repositories (implemented as subclasses).

Users could get a list of stop words following the pattern 

AIStopwords for<Language>.

for example

AIStopwords forEnglish.
AIStopwords forSpanish.

To change the default stopword class for a language:

AIStopwords defaultEnglishStopWordClass: aClass.


Stopwords list collected from https://github.com/igorbrigadir/stopwords

"
Class {
	#name : #AIStopwords,
	#superclass : #Object,
	#category : #'AI-Stopwords'
}

{ #category : #accessing }
AIStopwords class >> contents [
	" Private - See comments in #for<Language> "
	
	| stopwordInstance |
	
	stopwordInstance := self new.
	^ stopwordInstance contents lines
]

{ #category : #accessing }
AIStopwords class >> dataSource [
	" Answer a <Collection> with meta-information about the receiver's source/location.
		Positions are as follows:
		
		1º : Repository name <String>
		2º : Raw data URL <String>
		3º : Size <Integer>
		4º : Original data URL <String> "
		
	self subclassResponsibility
]

{ #category : #'instance creation' }
AIStopwords class >> forEnglish [
	" Answer a <Collection> of <String> each one representing a stop word for a language "
	
	^ AIStopwordsEnglish defaultStopwordClass contents
]

{ #category : #'instance creation' }
AIStopwords class >> forSpanish [
	" Answer a <Collection> of <String> each one representing a stop word for a language "
	
	^ AIStopwordsSpanish defaultStopwordClass contents
]

{ #category : #accessing }
AIStopwords >> contents [ 
	" Answer a <String> with receiver's stop words "
	
	self subclassResponsibility
]
