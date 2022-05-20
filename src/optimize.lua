local optimize = {}

local replace = require("replace")

function optimize.pass(lines)
	for i=1,#lines,1 do
		local key = replace.getKeywordFromString(lines[i])
		assert(key~=nil,"Invalid keyword: "..lines[i])
		if key == "^var " then
			print(lines[i])
		end
	end
	return lines
end

return optimize
