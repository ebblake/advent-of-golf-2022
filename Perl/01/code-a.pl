#!perl -p
$A[$i+=!/./]+=$_}{$\+=$_ for@A=(sort{$b-$a}@A)[0..2];$_=<@A>.$/