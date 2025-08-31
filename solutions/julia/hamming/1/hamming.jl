"Your optional docstring here"
function distance(a, b)
r = minimum([length(a),length(b)])
println(r)
if abs(length(a)-length(b)) == 0
return count(i -> a[i] != b[i], 1:r)
else
 throw(ArgumentError("Distancias diferentes"))
end
end
