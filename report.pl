#!/usr/bin/perl

while ($filename = <*.secret>) {
    open(WORDSLIST, $filename);
    if (-M WORDSLIST < 7) {
	while ($name = <WORDSLIST>) {
	    chop($name);
	    $word = <WORDSLIST>;
	    chop($word);
	    write;
	}
    }
    close(WORDSLIST);
}

format STDOUT =
@<<<<<<<<<<<<<<< @<<<<<<<<< @<<<<<<<<<<<
$filename, $name, $word
.

format STDOUT_TOP =
Page @<<
$%

Filename         Name       Word
================ ========== ===============
.

