Class {
	#name : #AIStopwordsEngLingPipe,
	#superclass : #AIStopwordsEnglish,
	#category : #'AI-Stopwords'
}

{ #category : #accessing }
AIStopwordsEngLingPipe class >> dataSource [
	" See superimplementor's comment "

	^ { 
		'LingPipe' .
		'https://github.com/igorbrigadir/stopwords/blob/master/en/lingpipe.txt' .
		76 .
		'http://alias-i.com/lingpipe/docs/api/com/aliasi/tokenizer/EnglishStopTokenizerFactory.html'
		}
]

{ #category : #accessing }
AIStopwordsEngLingPipe >> stopwordsList [
	" See superimplementor's comment "

	^ 'a
about
after
all
also
an
and
any
are
as
at
be
because
been
but
by
can
co
corp
could
for
from
had
has
have
he
her
his
if
in
inc
into
is
it
its
last
more
most
mr
mrs
ms
mz
no
not
of
on
one
only
or
other
out
over
s
says
she
so
some
such
than
that
the
their
there
they
this
to
up
was
we
were
when
which
who
will
with
would
'
]
