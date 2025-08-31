function condition_append(currentLetterCount,currentLetter,encodedStr)
            	if currentLetterCount == 1
                	encodedStr = encodedStr * currentLetter
            	else
                	encodedStr = encodedStr * string(currentLetterCount) * currentLetter
            	end
	return encodedStr
end

function encode(s)
	
if s==""
return s
end
	
encodedStr= ""
currentLetter = s[1]
currentLetterCount = 1
	
for i in 1:length(s)
	
if i == 1
continue
else

if s[i] == currentLetter
currentLetterCount+=1
	
else
	
encodedStr = condition_append(currentLetterCount,currentLetter,encodedStr)
currentLetter = s[i]
currentLetterCount = 1
end
	
end
if i == lastindex(s)
encodedStr = condition_append(currentLetterCount,currentLetter,encodedStr)
return encodedStr
end
end
	
end


function decode(s)
n = ""
decodedStr = ""
if s==""
return s
end
for i in 1:length(s)
if isdigit(s[i])
n = n * s[i]
else
if n!= ""
decodedStr = decodedStr * repeat(s[i],parse(Int,n))
else
decodedStr = decodedStr * s[i]
end
n=""
end
end
return decodedStr
end
