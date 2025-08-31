function wordcount(subtitle)
    # Substitui todos os caracteres não alfanuméricos (exceto apóstrofos entre letras) por espaços
    no_punct = replace(subtitle, r"[^\w']|'(?![a-z])|(?<![a-z])'" => " ")
    # Divide em palavras (case insensitive)
    words = split(lowercase(no_punct))
    # Filtra strings vazias
    words = filter(!isempty, words)
    # Remove aspas simples restantes que não são parte de contrações
    words = map(w -> replace(w, r"^'+|'+$" => ""), words)
    # Filtra novamente caso tenha criado strings vazias
    words = filter(!isempty, words)
    # Conta as ocorrências
    word_counts = Dict{String,Int}()
    for word in words
        word_counts[word] = get(word_counts, word, 0) + 1
    end
    return word_counts
end

