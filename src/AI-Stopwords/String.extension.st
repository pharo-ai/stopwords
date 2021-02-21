Extension { #name : #String }

{ #category : #'*AI-Stopwords' }
String >> isStopwordFrom: stopwordsList [
	" Answer <true> if the receiver is a stopword according to stopwordList "

	^ stopwordsList includes: self asLowercase
]

{ #category : #'*AI-Stopwords' }
String >> removeStopwordsUsing: stopwordsList [
	" See superimplementor's comment "

	^ self tokenize removeStopwordsUsing: stopwordsList

]
