"
''AI Stopwords'' are a group of objects to get stop word lists. 

This abstract class façade to quickly obtain a stop word Collection. It supports multiple stopwords repositories (implemented as subclasses).

## Public API and Key Messages

Users could get a list of stop words following the pattern 

```language=Pharo&caption=Pattern usage&label=code1
AIStopwords for<Language>.
```

for example

```language=Pharo&caption=Usage on two different languages&label=code2
AIStopwords forEnglish.
AIStopwords forSpanish.
```

To change the default stopword class for a language:

```language=Pharo&caption=Change default stopword list&label=code3
AIStopwords defaultEnglishStopwordClass: aClass.
```

Stopwords list collected from https://github.com/igorbrigadir/stopwords

"
Class {
	#name : #AIStopwords,
	#superclass : #Object,
	#instVars : [
		'stopwords'
	],
	#category : #'AI-Stopwords'
}

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
	
	^ AIStopwordsEnglish defaultStopwordClass stopwordsList
]

{ #category : #'instance creation' }
AIStopwords class >> forFrench [
	" Answer a <Collection> of <String> each one representing a stop word for a language "
	
	^ AIStopwordsFrench defaultStopwordClass stopwordsList
]

{ #category : #'instance creation' }
AIStopwords class >> forSpanish [
	" Answer a <Collection> of <String> each one representing a stop word for a language "
	
	^ AIStopwordsSpanish defaultStopwordClass stopwordsList
]

{ #category : #accessing }
AIStopwords class >> stopwordsList [
	" Private - See comments in #for<Language> "
	
	| stopwordInstance |
	
	stopwordInstance := self new.
	^ stopwordInstance stopwordsList lines
]

{ #category : #accessing }
AIStopwords >> addStopword: aString [
	" Augment the receiver's stopwords with aString "
	
	^ self stopwords add: aString
]

{ #category : #accessing }
AIStopwords >> addStopwords: aCollection [
	" Augment the receiver's stopwords with aCollection "
	
	self stopwords addAll: aCollection
]

{ #category : #accessing }
AIStopwords >> buildStopwords [
	" Private - Set the receiver's internal representation "

	| wordsCollection |
	
	wordsCollection := self stopwordsList lines.
	^ wordsCollection asOrderedCollection.
]

{ #category : #accessing }
AIStopwords >> stopwords [
	" Answer a <Collection> of <String> each one representing a stopword "

	^ stopwords
		ifNil: [ stopwords := self buildStopwords ]
]

{ #category : #accessing }
AIStopwords >> stopwords: aCollection [
	" Set the receiver's stopwords to be aCollection of <String> "

	stopwords := aCollection
]

{ #category : #accessing }
AIStopwords >> stopwordsList [

	self subclassResponsibility

]
