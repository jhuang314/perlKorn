while ($filename = <*.secret>) {
    open(WORDSLIST, $filename);
    if (-M WORDSLIST < 7) {
	while ($name = <WORDSLIST>) {
	    chop($name);
	    $word = <WORDSLIST>;
	    chop($word);
	}
    }
    close(WORDSLIST);
}

format STDOUT =
@<<<<<<<<<<<<< @<<<<<<<<<< @<<<<<<<<<<<
$filename, $name, $word
.




