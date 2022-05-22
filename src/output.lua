local output = {}

local headers = require("headers")

function output.pass(lines)
	local outputFile = assert(io.open("out.lua", "w"), "Could not create new file!")
	headers.add(outputFile)
	for i=1,#lines,1 do
		outputFile:write(lines[i].."\n")
	end
	outputFile:close()
end

return output
