"""
    count_nucleotides(strand)

The count of each nucleotide within `strand` as a dictionary.

Invalid strands raise a `DomainError`.

"""
function count_nucleotides(strand)
    n_a = 0
    n_g = 0
    n_c = 0
    n_t = 0
    
    n_a = count('A', strand)
    n_g = count('G', strand)
    n_t = count('T', strand)
    n_c = count('C', strand)
    
    valid = filter(x-> (uppercase(x)  in "AGTC"), strand) == strand

    println(filter(x-> (uppercase(x)  in "AGTC"), strand)==strand)


    
    if valid ||  strand == ""
       return Dict('A'=> n_a, 'C'=> n_c, 'G'=> n_g, 'T'=> n_t)
    else
     throw(DomainError(strand, "sqrt only accepts non-negative inputs"))
    end
    
                
end
