#!/usr/bin/env perl
use strict;
use warnings;
use lib 'lib';
use Math::Primality qw/is_prime/;
$|++;

# PODNAME: primes.pl
# ABSTRACT: Print all primes between the two integers

my ($start, $end) = @ARGV;
die "USAGE:$0 start end\n" unless ($start >= 0 && $end > $start);

my $i=$start;

while ( $i++ < $end ){
    print "$i\n" if is_prime($i);
}

__END__
=pod

=head1 NAME

primes.pl - Print all primes between the two integers

=head1 VERSION

version 0.05

=head1 AUTHOR

Jonathan "Duke" Leto <jonathan@leto.net>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2012 by Leto Labs LLC.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

