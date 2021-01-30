"
Please see superclass comment.

"
Class {
	#name : #AIStopwordsFr1,
	#superclass : #AIStopwordsFrench,
	#category : #'AI-Stopwords'
}

{ #category : #accessing }
AIStopwordsFr1 class >> dataSource [
	" See superimplementor's comment "

	^ { 
		'UnnamedFR1' .
		'https://github.com/ddhira123/Stop-Words-List/blob/main/list/french.txt' .
		156 .
		''
		}
]

{ #category : #accessing }
AIStopwordsFr1 >> contents [ 
	" See superimplementor's comment "
	
	^ 'a
acte
actif
air
ajouter
allé
allés
alors
animal
après
au
aura
aurait
aurions
aurons
aussi
autant
autre
avait
avec
avoir
avons
beaucoup
besoin
bien
boîte
ce
celles
celui
certains
cette
ceux
changement
chaque
chaud
cheveux
comme
commencer
comment
communiquer
construire
continuer
dans
danser
de
dehors
dent
dire
dit
donne
déjà
elle
elles
en
encore
ensemble
entre
essayer
est
et
eu
faire
fin
fourrure
genre
grand
haut
hommes
ici
il
ils
image
interroger
je
jouer
la
le
les
leur
lire
lui
lumière
là
main
mais
maison
manger
mettre
moi
mon
monde
mot
mère
même
ne
ni
non
notre
nous
on
ou
où
par
petit
plus
point
port
pour
pourquoi
près
père
quand
que
qui
quoi
sa
sans
semer
sensationnel
sentir
sera
serait
serions
serons
ses
seulement
si
sien
soi
soirée
sommes
son
sont
soyons
suis
suivre
sur
tambour
tel
temps
terre
travers
trois
tu
un
une
volonté
votre
vouloir
vous
y
à
épeler
étaient
était
être
'
]