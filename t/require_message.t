#!/usr/bin/perl

use Test::More;
use Test::Exception;
use perl5i::latest;

is( ref($INC[-1]), 'CODE', "Sub is at end" );
push @INC => './.././';
ok( !ref($INC[-1]), "Something is after our sub." );

lives_ok {
    require Data::Dumper;
} "Require things that are installed works";

throws_ok {
    require Fake::Thing;
}
qr/Can't locate Fake\/Thing\.pm in your Perl library\./,
"Useful message";

is( ref($INC[-1]), 'CODE' , "sub at end" );

done_testing;
