# Description

Load the stopwords that you need in Pharo

## Installation

```smalltalk
Metacello new
  baseline: 'AIStopword';
  repository: 'github://pharo-ai/stopwords/src';
  load.
```

## How to depend on it?

If you want to add a dependency on stopwords to your project, include the following lines into your baseline method:

```Smalltalk
spec
  baseline: 'AIStopword'
  with: [ spec repository: 'github://pharo-ai/stopwords/src' ].
```

If you are new to baselines and Metacello, check out the [Baselines](https://github.com/pharo-open-documentation/pharo-wiki/blob/master/General/Baselines.md) tutorial on Pharo Wiki.

## How to use it?

You can use the class façade to quickly obtain a stop word Collection. It supports multiple stopwords repositories (implemented as subclasses), but a default list is automatically configured. Users could get a list of stop words for a language, you can use the pattern:

```smalltalk
AIStopwords for<Language>.
```

for example:

```smalltalk
AIStopwords forEnglish.
AIStopwords forSpanish.
AIStopwords forFrench.
```

To change the default stopword class for a language:

```smalltalk
AIStopwordsEnglish defaultStopwordClass: aClass.
```

Stopwords list were collected from https://github.com/igorbrigadir/stopwords

