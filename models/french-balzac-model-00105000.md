# Line creation

* Text: vendetta.txt
* Font: IMFeFCrm29P
* Script: generate.sh
* Date: 2016-05-26
* ==> Lines: /balzac

# Training Ocropus Model

* Starting model: en-default.pyrnn.gz 
* Lines: using 2.000 lines for training according the patterns 010*** and 012***
* Date: 2016-05-26
* Iterations: 5.000

# Evaluation

* Lines: using 1.000 lines for evaluation according the pattern 011***
* Date: 2016-06-11
* Accuracy: the model achieved an character-based accuracy of 99,73 %

||en-default|french-balzac-model-00101000|-00102000|-00103000|-00104000|-00105000|
|---    |---    |---    |---    |---    |---    |---    |
|total  |48218|48218|48218|48218|48218|48218|
|missing|1|1|1|1|1|1|
|errors |4656|385|202|175|162|130|
|err|9,656 %|0.798 %|0.419 %|0.363 %|0.336 %|0.270 %|
|errnomissing|9,654 %|0.796 %|0.417 %|0.361 %|0.334 %|**0.268 %**|

Remaining Confusions:
```
17	i	î
8	A	À
6	.	,
5	u	_
5	ù	û
4	_	.
3	E	É
3	-	 
3	i	ï
3	 	-
3	l	_
3	a	â
3	_	û
3	ê	é
2	î	ï
2	 	_
2	_	'
1	CE	Œ_
1	Ô	O
1	_	s
1	_	a
1	ô	6
1	e;o	230
1	__	ut
1	s	t
1	r	_
1	_	o
1	Q	(
1	_	u
1	'	 
1	n	t
1	'	_
1	s	f
1	è	ê
1	-	«
1	f	é
1	c	e
1	r	t
1	v	_
1	_	t
1	s 	x_
1	i	j
1	N	X
1	. :	toi
1	_	p
1	E	Ê
1	l	J
1	e	è
1	-	»
1	é	_
1	à	s
1	l	s
1	-	?
1	ce	œ_
1	lL	I.
1	t	f
1	'	.
1	R	_
```


