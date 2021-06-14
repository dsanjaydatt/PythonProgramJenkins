#!/usr/bin/perl -w
use strict;
use warnings;

my @chars = ('0'..'9', 'A'..'F');
my $len = 3;
my $string;
while($len--){ $string .= $chars[rand @chars] };
print "$string\n";


my $file = "E:/PerlTesting/PRIN.csv";
#print $file,"\n";

#open(FH, '>', $filename) or die $!;

open(my $FILE, '<', $file) or die "cannot open file $file";
while (my $line = <$FILE>){
  chomp $line;
  my @fields = split /,/, $line;
  #print @fields,"\n";
  print $line,"\n";
  print $fields[1],"\n";
  #$line =~s/^($fields[1])$/$string $1/g;
  my $row =$string . $fields[1];
  print $row,"\n";
  $fields[1]=$row;
  print $FILE,"\n";
  #open($line, "> $file) or die "Couldn't open file file.txt, $!";
  print $FILE $row;
}
close $FILE;