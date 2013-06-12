#!/usr/bin/perl


sub init_words {
    open(WORDLIST, "wordslist");
    while($name = <WORDSLIST>) {
	chop($name);
	$word = <WORDSLIST>;
	chop($word);
	$words{$name} = $word;
    }
    close(WORDSLIST);
}
