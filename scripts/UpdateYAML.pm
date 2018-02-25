use strict;
use warnings;
use YAML::XS 'LoadFile';
use Data::Dumper;
    
my $config = LoadFile('tmp.settings.yml');

   $config->[2]->{NavBar} = 'none';

print "Disable settings\n";
#print $config->[2]->{NavBar};
#print Dumper($config);
