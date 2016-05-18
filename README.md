# ocropy-french-models

This repository contains
 * Trained **ocropy models** for (old) French with an emphasize to fonts and language as they looked in 16th-19th century.
 * The **data** (image lines together with their transcription) which where used for the training.
 * **Tools** which where used in this process.

## Old French Texts

The usual accents in French texts like é, è, ê, á, à, ô, ç are present but old text also use 
the [long-s](https://en.wikipedia.org/wiki/Long_s), which looks very similar to a `f`. 
Moreover, the [usual ligaturs including the less-often used `ct` ligatur](https://fr.wikipedia.org/wiki/Ligature_%28%C3%A9criture%29#Alphabet_latin) 
as well as some special styling of the large letter `Q` can occur. 
Here is an example of such a digitized page: 

[![example](http://digi.bib.uni-mannheim.de/fileadmin/digi/417576986/min/417576986_0015.jpg)](http://digi.bib.uni-mannheim.de/seitenansicht_suche/?id=18&tx_dlf[id]=1177&tx_dlf[page]=15)

## TODOs

 * [x] Find a suitable French text
 * [x] Find a suitable Type font
 * [ ] Finish the generation scripts
 * [ ] Generate the lines
 * [ ] Start training the model
 * [ ] Evaluate with real texts
 * [ ] Improve the model
 
## Acknowledgments

This is free software.

This project bundles other free software, fonts, texts:
 * [IM Fell](http://iginomarini.com/fell/the-revival-fonts/), True Type version (SIL Open Font License, Version 1.1)
 * Honoré de Balzac (1830): La Vendetta. Œuvres complètes de H. de Balzac, A. Houssiaux, 1855, 1 (pp. 168-230).  https://fr.wikisource.org/wiki/La_Vendetta_%28Balzac%29
