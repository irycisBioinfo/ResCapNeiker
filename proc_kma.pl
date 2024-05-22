#!/bin/perl

foreach $ar (@ARGV)
{
	$r1 = $ar;
	$r2 = $ar;
	$r2 =~ s/R1/R2/;
	
	$name = $ar;
	$name =~ s/.R\d.fastq.gz//;
	
	print("kma -ipe $r1 $r2 -t_db /storage/BD/kma/rescap.kma -o $name -t 40\n");
}
