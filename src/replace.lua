local replace = {}

local keys = {
	{"^var ", "local ", ",", " = "},
	{"^add ", "store = ", ",", " + "},
	{"^push ", "", "$", " = store"},
	{"^out ", "print(", "$", ")"},
}

function replace.getKeywordFromString(line)
	for i=1,#keys,1 do
		if line:find(keys[i][1]) then
			return keys[i][1]
		end
	end
	return nil
end

function replace.pass(lines) -- O(n^3) Again O_O
	for i=1,#lines,1 do
		for j=1,#keys,1 do
			if lines[i]:find(keys[j][1]) then
				for k=1,#keys[j],2 do
					if keys[j][k+1] ~= nil then
						lines[i] = lines[i]:gsub(keys[j][k], keys[j][k+1])
					end
				end
			end
		end
	end
	return lines
end

return replace
