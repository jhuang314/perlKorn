#!/usr/bin/perl

&init_words;
print "What is your name? ";
$name = <STDIN>;
chop($name);
if ($Name =~ /^randal\b/i) {
    print "Hello, Randhal!  Special greetings!";
} else {
    print "Hello, $name!  Enter secret word: ";
    $guess = <STDIN>;
    chop($guess);
    while (! &good_word($name, $guess)) {
	print "Bad Guess.  Try again: ";
	$guess = <STDIN>;
	chop($guess);
    }
}

## subroutines from here down

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
