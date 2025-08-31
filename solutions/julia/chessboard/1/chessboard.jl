function rank_range()
    1:8
end

function file_range()
    'A':1:'H'
end

function ranks()
    collect(rank_range())
end

function files()
    collect(file_range())
end
