#!/usr/bin/perl

###
# Chapter 06 Exercise 01
# Write a program that will ask the user for a given name and report the 
# corresponding family name.
#
# usage:
#   exw06-01.pl 
#
# output:
#   enter a person's name: 
#   
#   family name of {input} is {output}.
#

use strict;
use warnings;

# Names hash:
my %names = (
	'fred'    => 'flintstone',
	'barney'  => 'rubble',
	'wilma'   => 'flintstone',
	'pearl'   => 'slaghoople',
	'joe'     => 'rockhead',
);

my $input;
my $output;

print "enter a person's name: ";

chomp ( $input = <STDIN> );

if ( ! defined $names{$input} ) {
	$output = "not known";
} else {
	$output = $names{$input};
}

print "family name of $input is $output.\n";