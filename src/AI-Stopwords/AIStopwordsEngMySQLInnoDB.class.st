"
A word that is used by default as a stopword for FULLTEXT indexes on InnoDB tables. Not used if you override the default stopword processing with either the innodb_ft_server_stopword_table or the innodb_ft_user_stopword_table option.
"
Class {
	#name : #AIStopwordsEngMySQLInnoDB,
	#superclass : #AIStopwordsEnglish,
	#category : #'AI-Stopwords'
}

{ #category : #accessing }
AIStopwordsEngMySQLInnoDB class >> dataSource [
	" See superimplementor's comment "

	^ { 
		'MySQL (InnoDB)' .
		'https://github.com/igorbrigadir/stopwords/blob/master/en/mysql_innodb.txt' .
		36 .
		'http://dev.mysql.com/doc/refman/8.0/en/innodb-ft-default-stopword-table.html'
		}
]

{ #category : #accessing }
AIStopwordsEngMySQLInnoDB >> contents [ 
	" See superimplementor's comment "

	^ 'a
about
an
are
as
at
be
by
com
de
en
for
from
how
i
in
is
it
la
of
on
or
that
the
this
to
was
what
when
where
who
will
with
und
the
www
'
]
