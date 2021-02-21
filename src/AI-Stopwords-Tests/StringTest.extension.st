Extension { #name : #StringTest }

{ #category : #'*AI-Stopwords-Tests' }
StringTest >> testIsStopwordFrom [

	| engStopwords |
	
	engStopwords := AIStopwords forEnglish.
	self assert: ('the' isStopwordFrom: engStopwords).
	self assert: ('a' isStopwordFrom: engStopwords).
	self deny: ('' isStopwordFrom: engStopwords).
	self deny: ('persefone' isStopwordFrom: engStopwords).
]

{ #category : #'*AI-Stopwords-Tests' }
StringTest >> testRemoveStopwordsUsing [

	| engStopwords |
	
	engStopwords := AIStopwords forEnglish.
	" Test common case "
	self assert: ('Ne obliviscaris' removeStopwordsUsing: engStopwords) equals: #('Ne' 'obliviscaris').
	" Test respect uppercase letters in the middle of sentence  "
	self assert: ('This is Ground Control to Major Tom' removeStopwordsUsing: engStopwords) equals: #('Ground' 'Control' 'Major' 'Tom').
	self assert: ('' removeStopwordsUsing: engStopwords) equals: Array empty.
	" Test single word "
	self assert: ('at' removeStopwordsUsing: engStopwords) equals: Array empty.

	" Test already tokenized sentence "
	self assert: (#('Come' 'forth' 'dark' 'herald') removeStopwordsUsing: engStopwords) equals: #('dark' 'herald').
]
