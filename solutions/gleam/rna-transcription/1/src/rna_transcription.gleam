import gleam/string

pub fn to_rna(dna: String) -> Result(String, Nil) {
  case dna{
    ""                      -> Ok("")
    x if x != "Error"       -> case dna_to_rna(x){
                                "Error" -> Error(Nil)
                                rna      -> Ok(rna)
    }
    _                       -> Error(Nil)
    
}
}



fn dna_to_rna(dna: String) -> String {

  case string.pop_grapheme(dna){
    Ok(#(l,etters)) -> case nucleotide_transpiler(l){
                            "X" -> "Error"
                             _  -> nucleotide_transpiler(l) <> dna_to_rna(etters)
}
    Error(_)        -> ""
}
}



fn nucleotide_transpiler(nucleotide: String) -> String{
  case nucleotide{
      "A" -> "U"
      "T" -> "A"
      "G" -> "C"
      "C" -> "G"
      _   -> "X"
}
}