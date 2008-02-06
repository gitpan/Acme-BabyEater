#!/usr/bin/perl -w

use strict;
use warnings;

use Acme::BabyEater;

my $eater = Acme::BabyEater->new;

$eater->eat( shift );


=pod


Usage: perl baby_cruncher.pl <optional_number_of_babies_to_eat>


=cut