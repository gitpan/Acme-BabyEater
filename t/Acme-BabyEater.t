# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl Acme-BabyEater.t'

use Test::More tests => 3;
BEGIN { use_ok('Acme::BabyEater') };

use Acme::BabyEater;

my $eater = Acme::BabyEater->new;

isa_ok( $eater, 'Acme::BabyEater');
can_ok( $eater, qw(eat));


