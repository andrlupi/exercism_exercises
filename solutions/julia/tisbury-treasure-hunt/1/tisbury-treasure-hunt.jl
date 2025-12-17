function get_coordinate(line)
    line[2]
    
end

function convert_coordinate(coordinate)
    Tuple(coordinate)
end

function compare_records(azara_record, rui_record)
    convert_coordinate(azara_record[2]) == rui_record[2]
end

function create_record(azara_record, rui_record)
    t, c = azara_record
    l, _, q = rui_record
    compare_records(azara_record, rui_record) ? (c,l,q,t) : ()
end
