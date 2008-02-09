package Acme::BabyEater;

use 5.008008;
use strict;
use warnings;

our $VERSION = '0.04';

use List::Util qw(shuffle);

sub new {
    my $class = shift;

    my $self = bless {}, $class;
}

sub eat {
    my ( $self, $baby_num ) = @_;
    $baby_num ||= int rand 20;

    print "\nEating baby number $_\n" . $self->_eat_baby . "\n", 
        for 1 .. $baby_num;

    print "\n\nCheers to f00li5h who's always looking for a job ;)\n";
}

sub _eat_baby {
    my $self = shift;
    
    my @baby_parts = qw(head neck arm leg hand foot stomach);
    my @ways_to_eat = (
        'chewing on the ~~',
        '~~ is a bit bony',
        '~~ is tasty... yum',
        'eww >_< ~~ tastes aweful',
        'hmr, I better have another bite of ~~',
        'ERROR! Cannot chew on ~~! I think it\'s FAKE!',
        'ZOMG! ~~ is delicios!',
        'This is sooo good, I better leave some ~~ to f00li5h!',
    );

    my @eating_process;
    foreach my $body_part ( shuffle @baby_parts ) {
        my $process = $ways_to_eat[ rand @ways_to_eat ];
        $process =~ s/~~/$body_part/g;
        push @eating_process, "Starting with $body_part"
            unless @eating_process;
        push @eating_process, $process;
    }
    return join "\n", @eating_process;
}


1;
__END__

=head1 NAME

Acme::BabyEater - Baby eating has never been easier!

=head1 SYNOPSIS

    use Acme::BabyEater;
    my $eater = Acme::BabyEater->new;

    $eater->eat;
    
    $eater->eat(20);

=head1 DESCRIPTION

Due happenings in #perl on irc.freenode.net there is an urge to provide
a fast way to consume large quantities of babies!
    
    Dec 29 04:32:49 <f00li5h>       the baby cruncher revealed!
    Dec 29 08:59:20 <perlmonkey>    i will take that baby apart again and have another go

    Jan 02 18:00:21 <rickest>       GumbyBRAIN: a dingo ate your baby

    Jan 14 [23:17:53] <Zoffix> f00li5h[jobless], so how goes it?
    Jan 14 23:18:23 <f00li5h[jobless]>      well, i found a picture of a baby eating cat ... so pretty good
    
    Jan 14 [23:58:57] <Zoffix> perlbot, Zoffix
    Jan 14 [23:58:59] <perlbot> the cruncher of babies (see: http://fukung.net/images/2064/09_pics.jpg) and the hacker of CSSs

The problem is now solved! Thanks to Acme::BabyEater!

=head1 CONSTRUCTOR

=head2 new
    use Acme::BabyEater;
    my $eater = Acme::BabyEater->new;

Takes no arguments, constructs the new and powerful BabyEater(tm)!
B<Important note:> if you feel like you need more baby crunching power
don't forget the fork()!! Due to the super advanced BabyJesus(tm)(c)(zomg)
technology you can fork out virtually any number of baby chrunchers!!

=head1 METHODS

=head2 eat

    $eater->eat;
    
    $eater->eat($the_number_of_babies_to_eat);

To support large number of users the interface has been simplified and
has an integrated ReadMyMind(tm) technology. The Acme::BabyEater has only
B<ONE METHOD>!! Do any other baby crunching modules offer such a simple
interface?! The answer is B<NO>!

But that's not all! If you install this module in the first 10 minutes
after reading this documentation we will upgrade your C<eat> method to
with an advanced SuperDuper(tm) hook that will take the actual number
of babies you'd eat!

Don't rely on rand()!! Install now! Don't miss this unique opportunity!!

=head1 AUTHOR

Zoffix Znet, C<< <zoffix at cpan.org> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-acme-babyeater at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Acme-BabyEater>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.

=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Acme::BabyEater

You can also look for information at:

=over 4

=item * RT: CPAN's request tracker

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=Acme-BabyEater>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/Acme-BabyEater>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/Acme-BabyEater>

=item * Search CPAN

L<http://search.cpan.org/dist/Acme-BabyEater>

=back

=head1 COPYRIGHT & LICENSE

Copyright 2008 Zoffix Znet, all rights reserved.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.


=cut

