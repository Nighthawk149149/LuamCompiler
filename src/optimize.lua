local optimize = {}

local keywords = require("keywords")

function optimize.pass(lines)
	for i=1,#lines,1 do
		lines[i] = keywords.getKeyword(lines[i]).." : "..lines[i]
	end
	return lines
end

return optimize
