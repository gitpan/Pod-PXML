# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl test.pl'

# Time-stamp: "2001-05-25 21:53:35 MDT"

use strict;
use Test;
# use a BEGIN block so we print our plan before MyModule is loaded
BEGIN { plan tests => 1 }
ok(1);

use Pod::PXML;
print " Perl v$], Pod::PXML v$SPod::PXML::VERSION\n\n";
# TODO: write some real tests.
