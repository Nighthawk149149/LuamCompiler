local optimize = require("optimize")

function isInvalidLine(line)
	if line == "" or line:find("^%s*$") or line:find("^com") then return true end
	return false
end

function start()
	print("Starting compiler!")
	-- Get file
	local filePath = assert(arg[1], "Could not find file argument (compiler.lua file.luam)!")
	local canOpen = assert(io.open(filePath, "r"), "Could not open file!")
	canOpen:close()
	-- Get lines from file
	local lines = {}
	for line in io.lines(filePath) do
		line = line:gsub("\t", "")
		if isInvalidLine(line) then goto continue end
		lines[#lines+1] = line
		::continue::
	end

	-- Optimize
	lines = optimize.pass(lines)
	
	for i=1,#lines,1 do
		print(lines[i])
	end
end

start()
