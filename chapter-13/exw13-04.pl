#!/usr/bin/perl

###
# Chapter 13 Workbook Exercise 04
# -------------------------------
# Modify your answer to Exercise 13.3 to use glob and a while loop.
#

use strict;
use warnings;
use 5.010;

printf " %-25s %10s  %2s %2s %2s\n", "Name", "Size", "R", "W", "X";
printf "-" x 45 . "\n";

while ( glob "* .*" ) {
	next if ( -d );
	my $name = $_;
	my $size = ( -s ) / 1024;
	my ( $r, $w, $x ) = ( " ", " ", " " );
	$r = "x" if ( -r );
	$w = "x" if ( -w );
	$x = "x" if ( -x );

	printf " %-25s%10.0f  %2s %2s %2s\n", $name, $size, $r, $w, $x; 
}

