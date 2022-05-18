local keywords = {}

local keys = {
	{"^var "},
	{"^add "},
	{"^push "},
	{"^out "},
}

function keywords.getKeyword(line)
	for i=1,#keys,1 do
		if line:find(keys[i][1]) then
			return keys[i][1]
		end
	end
end

return keywords
