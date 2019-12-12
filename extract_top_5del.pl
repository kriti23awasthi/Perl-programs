#open (FILE,"output_1_D");
open(FILE,"output_1_SI");
@empty_array = [0,1,3,4,5];
while (<FILE>)
{
	chomp;
	$_=~s/\r//g;
	#print "$_\n";
	if (/^\d/)
	{	
	@header= split ("\t",$_);
	#print "$header[1]\t $header[8]\n";
	@D = split ("\D ",$header[1]);  #for deletion
	@D = split ("\I ",$header[1]);  #for insertion
 	#print "$D[1]\n";
	@seq_length= split ("\Supports ", $header[8]);
	#print "$seq_length[1]\n";
	#$length = sort $D[1];
	$hash{$D[1]}= "$seq_length[1]";
	if ($D[1] >50 && $seq_length[1] >5)
	{	
		print "$header[1]\t $header[8]\n";
		print "$_\n"
	}	
	
	#print "me $hash{$D[1]}\n";
	#print "$length\n"; 
	}
	#foreach $k (keys%hash)
		#{
        		#$fix=$hash{$k};
			#print "this $hash{$k}\t $seq_length[1]\n";
        		#if($hash{$k} > 50 && $seq_length[1] >1)
        		#{
                	#	print "$hash{$k}\t$seq_length[1]\n";
        		#}
		#} 
			
	#@each_entry = split ("\d+",$header[0]);
	#print "$each_entry[1]\n";

}

