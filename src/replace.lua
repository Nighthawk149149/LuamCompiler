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

function replace.replaceWithoutOp(line)
	for i=1,#keys,1 do
		if line:find(keys[i][1]) then
			for j=1,#keys[i],2 do
				if keys[i][j+1] ~= nil then
					line = line:gsub(keys[i][j], keys[i][j+1])
				end
			end
			return line
		end
	end
	return nil
end

return replace
