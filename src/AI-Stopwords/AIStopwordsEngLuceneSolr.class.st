"
From https://github.com/apache/lucene-solr/blob/master/lucene/analysis/common/src/java/org/apache/lucene/analysis/en/EnglishAnalyzer.java
"
Class {
	#name : #AIStopwordsEngLuceneSolr,
	#superclass : #AIStopwordsEnglish,
	#category : #'AI-Stopwords'
}

{ #category : #accessing }
AIStopwordsEngLuceneSolr class >> dataSource [
	" See superimplementor's comment "

	^ { 
		'Lucene, Solr, Elastisearch' .
		'https://github.com/igorbrigadir/stopwords/blob/master/en/lucene_elastisearch.txt' .
		33 .
		'https://github.com/apache/lucene-solr/blob/master/lucene/analysis/common/src/java/org/apache/lucene/analysis/en/EnglishAnalyzer.java'
		}
]

{ #category : #accessing }
AIStopwordsEngLuceneSolr >> contents [ 
	" See superimplementor's comment "

	^ 'a
an
and
are
as
at
be
but
by
for
if
in
into
is
it
no
not
of
on
or
such
that
the
their
then
there
these
they
this
to
was
will
with
'
]
