# Time-stamp: "2001-05-25 21:50:58 MDT"
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    'NAME'	=> 'Pod::PXML',
    'VERSION_FROM' => 'lib/Pod/PXML.pm', # finds $VERSION
    'EXE_FILES' => [qw(pod2pxml pxml2pod)],
    'PREREQ_PM' => {
		    'Pod::Tree' => 1.06,
		    'Pod::Text' => 2.09,
		    'HTML::Entities' => 1,
		    'XML::Parser' => 2,
		   },
    'dist'        => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
);

package MY;

sub libscan
{ # Determine things that should *not* be installed
    my($self, $path) = @_;
    return '' if $path =~ m/~/;
    $path;
}

__END__
