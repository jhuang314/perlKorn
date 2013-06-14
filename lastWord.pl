#!/usr/bin/perl
dbmopen(%last_good, "lastdb", 0666);
foreach $name (sort keys(%last_good)) {
    $when = $last_good{$name};
    $hours = (time - $when) / 3600;
    write;
}

format STDOUT =
User @<<<<<<<<<<<<: last correct guess was @<<< hours ago.
$name, $hours
.
