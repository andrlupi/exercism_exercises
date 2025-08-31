function to_rna(dna)

rna =replace(dna,'G'=>'C','C'=>'G','T'=>'A','A'=>'U')
if !contains(dna,"U") && !contains(dna,"X")
    return rna

else
    println(rna,dna)
    throw(ErrorException("Arguments must be valid DNA"))
end

end

