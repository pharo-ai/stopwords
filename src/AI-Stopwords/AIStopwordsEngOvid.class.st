"
From http://resourcecenter.ovid.com/site/products/fieldguide/umda/Stopwords.jsp

"
Class {
	#name : #AIStopwordsEngOvid,
	#superclass : #AIStopwordsEnglish,
	#category : #'AI-Stopwords'
}

{ #category : #accessing }
AIStopwordsEngOvid class >> dataSource [
	" See superimplementor's comment "

	^ { 
		'Ovid (Medical information services)' .
		'https://github.com/igorbrigadir/stopwords/blob/master/en/ovid.txt' .
		39 .
		'From http://resourcecenter.ovid.com/site/products/fieldguide/umda/Stopwords.jsp'
		}
]

{ #category : #accessing }
AIStopwordsEngOvid >> stopwordsList [ 
	" See superimplementor's comment "

	^ 'about
all
among
an
and
as
at
be
been
between
both
by
for
from
if
into
it
its
not
of
on
or
that
the
their
these
they
this
those
to
toward
upon
used
using
what
which
while
with
within
'
]
