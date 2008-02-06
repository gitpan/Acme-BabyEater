#!perl -T

use Test::More tests => 2;

BEGIN {
    use_ok('List::Util');
	use_ok( 'Acme::BabyEater' );
}

diag( "Testing Acme::BabyEater $Acme::BabyEater::VERSION, Perl $], $^X" );
