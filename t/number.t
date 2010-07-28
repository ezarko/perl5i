#!perl

use Test::More;
use perl5i::latest;

is( 12.34->ceil,       13);
is( 12.34->round_up,   13);
is( 12.34->floor,      12);
is( 12.34->round_down, 12);
is( 12.34->int,        12);

is( (-12.34)->ceil,       -12);
is( (-12.34)->round_up,   -12);
is( (-12.34)->floor,      -13);
is( (-12.34)->round_down, -13);
is( (-12.34)->int,        -12);

is( 2.5->round, 3 );
is( 2->round, 2 );
is( 0->round, 0 );
is( 2.51->round, 3 );
is( (-3.51)->round, -4 );
is( (-3.5)->round,  -4 );
is( (-3.49)->round, -3 );

is( (-2.0)->round(mechanic=>'R-H-U-s'), -2 );
is( (-1.7)->round(mechanic=>'R-H-U-s'), -2 );
is( (-1.5)->round(mechanic=>'R-H-U-s'), -2 );
is( (-1.3)->round(mechanic=>'R-H-U-s'), -1 );
is( (-1.0)->round(mechanic=>'R-H-U-s'), -1 );
is( (-0.7)->round(mechanic=>'R-H-U-s'), -1 );
is( (-0.5)->round(mechanic=>'R-H-U-s'), -1 );
is( (-0.3)->round(mechanic=>'R-H-U-s'), -0 );
is( (0.0)->round(mechanic=>'R-H-U-s'), 0 );
is( (0.3)->round(mechanic=>'R-H-U-s'), 0 );
is( (0.5)->round(mechanic=>'R-H-U-s'), 1 );
is( (0.7)->round(mechanic=>'R-H-U-s'), 1 );
is( (1.0)->round(mechanic=>'R-H-U-s'), 1 );
is( (1.3)->round(mechanic=>'R-H-U-s'), 1 );
is( (1.5)->round(mechanic=>'R-H-U-s'), 2 );
is( (1.7)->round(mechanic=>'R-H-U-s'), 2 );
is( (2.0)->round(mechanic=>'R-H-U-s'), 2 );

is( (-2.0)->round(mechanic=>'R-H-U-a'), -2 );
is( (-1.7)->round(mechanic=>'R-H-U-a'), -2 );
is( (-1.5)->round(mechanic=>'R-H-U-a'), -1 );
is( (-1.3)->round(mechanic=>'R-H-U-a'), -1 );
is( (-1.0)->round(mechanic=>'R-H-U-a'), -1 );
is( (-0.7)->round(mechanic=>'R-H-U-a'), -1 );
is( (-0.5)->round(mechanic=>'R-H-U-a'), -0 );
is( (-0.3)->round(mechanic=>'R-H-U-a'), -0 );
is( (0.0)->round(mechanic=>'R-H-U-a'), 0 );
is( (0.3)->round(mechanic=>'R-H-U-a'), 0 );
is( (0.5)->round(mechanic=>'R-H-U-a'), 1 );
is( (0.7)->round(mechanic=>'R-H-U-a'), 1 );
is( (1.0)->round(mechanic=>'R-H-U-a'), 1 );
is( (1.3)->round(mechanic=>'R-H-U-a'), 1 );
is( (1.5)->round(mechanic=>'R-H-U-a'), 2 );
is( (1.7)->round(mechanic=>'R-H-U-a'), 2 );
is( (2.0)->round(mechanic=>'R-H-U-a'), 2 );

is( (-2.0)->round(mechanic=>'R-H-D-s'), -2 );
is( (-1.7)->round(mechanic=>'R-H-D-s'), -2 );
is( (-1.5)->round(mechanic=>'R-H-D-s'), -1 );
is( (-1.3)->round(mechanic=>'R-H-D-s'), -1 );
is( (-1.0)->round(mechanic=>'R-H-D-s'), -1 );
is( (-0.7)->round(mechanic=>'R-H-D-s'), -1 );
is( (-0.5)->round(mechanic=>'R-H-D-s'), -0 );
is( (-0.3)->round(mechanic=>'R-H-D-s'), -0 );
is( (0.0)->round(mechanic=>'R-H-D-s'), 0 );
is( (0.3)->round(mechanic=>'R-H-D-s'), 0 );
is( (0.5)->round(mechanic=>'R-H-D-s'), 0 );
is( (0.7)->round(mechanic=>'R-H-D-s'), 1 );
is( (1.0)->round(mechanic=>'R-H-D-s'), 1 );
is( (1.3)->round(mechanic=>'R-H-D-s'), 1 );
is( (1.5)->round(mechanic=>'R-H-D-s'), 1 );
is( (1.7)->round(mechanic=>'R-H-D-s'), 2 );
is( (2.0)->round(mechanic=>'R-H-D-s'), 2 );

is( (-2.0)->round(mechanic=>'R-H-D-a'), -2 );
is( (-1.7)->round(mechanic=>'R-H-D-a'), -2 );
is( (-1.5)->round(mechanic=>'R-H-D-a'), -2 );
is( (-1.3)->round(mechanic=>'R-H-D-a'), -1 );
is( (-1.0)->round(mechanic=>'R-H-D-a'), -1 );
is( (-0.7)->round(mechanic=>'R-H-D-a'), -1 );
is( (-0.5)->round(mechanic=>'R-H-D-a'), -1 );
is( (-0.3)->round(mechanic=>'R-H-D-a'), -0 );
is( (0.0)->round(mechanic=>'R-H-D-a'), 0 );
is( (0.3)->round(mechanic=>'R-H-D-a'), 0 );
is( (0.5)->round(mechanic=>'R-H-D-a'), 0 );
is( (0.7)->round(mechanic=>'R-H-D-a'), 1 );
is( (1.0)->round(mechanic=>'R-H-D-a'), 1 );
is( (1.3)->round(mechanic=>'R-H-D-a'), 1 );
is( (1.5)->round(mechanic=>'R-H-D-a'), 1 );
is( (1.7)->round(mechanic=>'R-H-D-a'), 2 );
is( (2.0)->round(mechanic=>'R-H-D-a'), 2 );

is( (-2.0)->round(mechanic=>'R-H-E'), -2 );
is( (-1.7)->round(mechanic=>'R-H-E'), -2 );
is( (-1.5)->round(mechanic=>'R-H-E'), -2 );
is( (-1.3)->round(mechanic=>'R-H-E'), -1 );
is( (-1.0)->round(mechanic=>'R-H-E'), -1 );
is( (-0.7)->round(mechanic=>'R-H-E'), -1 );
is( (-0.5)->round(mechanic=>'R-H-E'), -0 );
is( (-0.3)->round(mechanic=>'R-H-E'), -0 );
is( (0.0)->round(mechanic=>'R-H-E'), 0 );
is( (0.3)->round(mechanic=>'R-H-E'), 0 );
is( (0.5)->round(mechanic=>'R-H-E'), 0 );
is( (0.7)->round(mechanic=>'R-H-E'), 1 );
is( (1.0)->round(mechanic=>'R-H-E'), 1 );
is( (1.3)->round(mechanic=>'R-H-E'), 1 );
is( (1.5)->round(mechanic=>'R-H-E'), 2 );
is( (1.7)->round(mechanic=>'R-H-E'), 2 );
is( (2.0)->round(mechanic=>'R-H-E'), 2 );

is( (-2.0)->round(mechanic=>'R-H-O'), -2 );
is( (-1.7)->round(mechanic=>'R-H-O'), -2 );
is( (-1.5)->round(mechanic=>'R-H-O'), -1 );
is( (-1.3)->round(mechanic=>'R-H-O'), -1 );
is( (-1.0)->round(mechanic=>'R-H-O'), -1 );
is( (-0.7)->round(mechanic=>'R-H-O'), -1 );
is( (-0.5)->round(mechanic=>'R-H-O'), -1 );
is( (-0.3)->round(mechanic=>'R-H-O'), -0 );
is( (0.0)->round(mechanic=>'R-H-O'), 0 );
is( (0.3)->round(mechanic=>'R-H-O'), 0 );
is( (0.5)->round(mechanic=>'R-H-O'), 1 );
is( (0.7)->round(mechanic=>'R-H-O'), 1 );
is( (1.0)->round(mechanic=>'R-H-O'), 1 );
is( (1.3)->round(mechanic=>'R-H-O'), 1 );
is( (1.5)->round(mechanic=>'R-H-O'), 1 );
is( (1.7)->round(mechanic=>'R-H-O'), 2 );
is( (2.0)->round(mechanic=>'R-H-O'), 2 );

is( (-2.0)->round(mechanic=>'R-C'), -2 );
is( (-1.7)->round(mechanic=>'R-C'), -1 );
is( (-1.5)->round(mechanic=>'R-C'), -1 );
is( (-1.3)->round(mechanic=>'R-C'), -1 );
is( (-1.0)->round(mechanic=>'R-C'), -1 );
is( (-0.7)->round(mechanic=>'R-C'), -0 );
is( (-0.5)->round(mechanic=>'R-C'), -0 );
is( (-0.3)->round(mechanic=>'R-C'), -0 );
is( (0.0)->round(mechanic=>'R-C'), 0 );
is( (0.3)->round(mechanic=>'R-C'), 1 );
is( (0.5)->round(mechanic=>'R-C'), 1 );
is( (0.7)->round(mechanic=>'R-C'), 1 );
is( (1.0)->round(mechanic=>'R-C'), 1 );
is( (1.3)->round(mechanic=>'R-C'), 2 );
is( (1.5)->round(mechanic=>'R-C'), 2 );
is( (1.7)->round(mechanic=>'R-C'), 2 );
is( (2.0)->round(mechanic=>'R-C'), 2 );

is( (-2.0)->round(mechanic=>'R-F'), -2 );
is( (-1.7)->round(mechanic=>'R-F'), -2 );
is( (-1.5)->round(mechanic=>'R-F'), -2 );
is( (-1.3)->round(mechanic=>'R-F'), -2 );
is( (-1.0)->round(mechanic=>'R-F'), -1 );
is( (-0.7)->round(mechanic=>'R-F'), -1 );
is( (-0.5)->round(mechanic=>'R-F'), -1 );
is( (-0.3)->round(mechanic=>'R-F'), -1 );
is( (0.0)->round(mechanic=>'R-F'), 0 );
is( (0.3)->round(mechanic=>'R-F'), 0 );
is( (0.5)->round(mechanic=>'R-F'), 0 );
is( (0.7)->round(mechanic=>'R-F'), 0 );
is( (1.0)->round(mechanic=>'R-F'), 1 );
is( (1.3)->round(mechanic=>'R-F'), 1 );
is( (1.5)->round(mechanic=>'R-F'), 1 );
is( (1.7)->round(mechanic=>'R-F'), 1 );
is( (2.0)->round(mechanic=>'R-F'), 2 );

is( (-2.0)->round(mechanic=>'R-T-Z'), -2 );
is( (-1.7)->round(mechanic=>'R-T-Z'), -1 );
is( (-1.5)->round(mechanic=>'R-T-Z'), -1 );
is( (-1.3)->round(mechanic=>'R-T-Z'), -1 );
is( (-1.0)->round(mechanic=>'R-T-Z'), -1 );
is( (-0.7)->round(mechanic=>'R-T-Z'), -0 );
is( (-0.5)->round(mechanic=>'R-T-Z'), -0 );
is( (-0.3)->round(mechanic=>'R-T-Z'), -0 );
is( (0.0)->round(mechanic=>'R-T-Z'), 0 );
is( (0.3)->round(mechanic=>'R-T-Z'), 0 );
is( (0.5)->round(mechanic=>'R-T-Z'), 0 );
is( (0.7)->round(mechanic=>'R-T-Z'), 0 );
is( (1.0)->round(mechanic=>'R-T-Z'), 1 );
is( (1.3)->round(mechanic=>'R-T-Z'), 1 );
is( (1.5)->round(mechanic=>'R-T-Z'), 1 );
is( (1.7)->round(mechanic=>'R-T-Z'), 1 );
is( (2.0)->round(mechanic=>'R-T-Z'), 2 );

is( (-2.0)->round(mechanic=>'R-AF-Z'), -2 );
is( (-1.7)->round(mechanic=>'R-AF-Z'), -2 );
is( (-1.5)->round(mechanic=>'R-AF-Z'), -2 );
is( (-1.3)->round(mechanic=>'R-AF-Z'), -2 );
is( (-1.0)->round(mechanic=>'R-AF-Z'), -1 );
is( (-0.7)->round(mechanic=>'R-AF-Z'), -1 );
is( (-0.5)->round(mechanic=>'R-AF-Z'), -1 );
is( (-0.3)->round(mechanic=>'R-AF-Z'), -1 );
is( (0.0)->round(mechanic=>'R-AF-Z'), 0 );
is( (0.3)->round(mechanic=>'R-AF-Z'), 1 );
is( (0.5)->round(mechanic=>'R-AF-Z'), 1 );
is( (0.7)->round(mechanic=>'R-AF-Z'), 1 );
is( (1.0)->round(mechanic=>'R-AF-Z'), 1 );
is( (1.3)->round(mechanic=>'R-AF-Z'), 2 );
is( (1.5)->round(mechanic=>'R-AF-Z'), 2 );
is( (1.7)->round(mechanic=>'R-AF-Z'), 2 );
is( (2.0)->round(mechanic=>'R-AF-Z'), 2 );

is( (-2.0)->round(increment=>2), -2 );
is( (-1.7)->round(increment=>2), -2 );
is( (-1.5)->round(increment=>2), -2 );
is( (-1.3)->round(increment=>2), -2 );
is( (-1.0)->round(increment=>2), -2 );
is( (-0.7)->round(increment=>2), -0 );
is( (-0.5)->round(increment=>2), -0 );
is( (-0.3)->round(increment=>2), -0 );
is( (0.0)->round(increment=>2), 0 );
is( (0.3)->round(increment=>2), 0 );
is( (0.5)->round(increment=>2), 0 );
is( (0.7)->round(increment=>2), 0 );
is( (1.0)->round(increment=>2), 2 );
is( (1.3)->round(increment=>2), 2 );
is( (1.5)->round(increment=>2), 2 );
is( (1.7)->round(increment=>2), 2 );
is( (2.0)->round(increment=>2), 2 );

is( (-0.020)->round(increment=>0.01), -0.02 );
is( (-0.017)->round(increment=>0.01), -0.02 );
is( (-0.015)->round(increment=>0.01), -0.02 );
is( (-0.013)->round(increment=>0.01), -0.01 );
is( (-0.010)->round(increment=>0.01), -0.01 );
is( (-0.007)->round(increment=>0.01), -0.01 );
is( (-0.005)->round(increment=>0.01), -0.01 );
is( (-0.003)->round(increment=>0.01), -0 );
is( (0.000)->round(increment=>0.01), 0 );
is( (0.003)->round(increment=>0.01), 0 );
is( (0.005)->round(increment=>0.01), 0.01 );
is( (0.007)->round(increment=>0.01), 0.01 );
is( (0.010)->round(increment=>0.01), 0.01 );
is( (0.013)->round(increment=>0.01), 0.01 );
is( (0.015)->round(increment=>0.01), 0.02 );
is( (0.017)->round(increment=>0.01), 0.02 );
is( (0.020)->round(increment=>0.01), 0.02 );

ok( 12->is_number );
ok(!'FF'->is_number );

ok( 12->is_positive );
ok( "+12"->is_positive );
ok( 12.34->is_positive );
ok( !"foo"->is_positive );
ok( !"-12.2"->is_positive );

ok( !12->is_negative );
ok( "-12"->is_negative );
ok( (-12.34)->is_negative );
ok( !"foo"->is_negative );
ok( "-12.2"->is_negative );

ok !0->is_negative,     "zero is not negative";
ok !0->is_positive,     "zero is not positive";

ok( !11->is_even );
ok( 11->is_odd );
ok( 12->is_even );
ok( !12->is_odd );
ok( "12"->is_even );
ok( !"12"->is_odd );
ok( "-12"->is_even );
ok( !"-12"->is_odd );
ok( !12.34->is_even );
ok( !12.34->is_odd );

ok( 12->is_integer );
ok( (-12)->is_integer );
ok( "+12"->is_integer );
ok(!12.34->is_integer );
ok(!"1.0"->is_integer );
ok(!"1."->is_integer );
ok( 0->is_integer );

ok( 12->is_int );
ok(!12.34->is_int );

ok( 12.34->is_decimal );
ok( ".34"->is_decimal );
ok( "+1."->is_decimal );
ok( "-.0"->is_decimal );
ok( !12->is_decimal );
ok(!'abc'->is_decimal );
ok("1.0"->is_decimal);
ok( !0->is_decimal );

is( '123'->reverse, '321' );

TODO: {
   local $TODO = q{ hex is weird };

   is( 255->hex, 'FF');
   is( 'FF'->dec, 255);
   is( 0xFF->dec, 255);

};

for my $ref ([ 'foo' ], { bar => 1 }, \'baz', sub { 'gorch' }) {
    for my $method (qw(is_decimal is_integer is_int is_negative is_positive)) {
       ok(!$ref->$method);
    }
}


done_testing();
