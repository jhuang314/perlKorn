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

sub good_word {
    local($somename, $someguess) = @_;
    $somename =~ s/\W.*//;
    $somename =~ tr/A-Z/a-z/;
    if ($somename eq "randal") {
	return 1;
    } elsif (($words{$somename} || "groucho") eq $someguess) {
	return 1;
    } else {
	return 0;
    }
}
