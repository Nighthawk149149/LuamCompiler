local replace = require("replace")
local optimize = require("optimize")
local headers = require("headers")
local output = require("output")

function isInvalidLine(line)
	if line == "" or line:find("^%s*$") or line:find("^com") then return true end
	return false
end

function start()
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
	--lines = optimize.pass(lines)

	-- Check for headers
	headers.pass(lines)
	
	-- Replacements
	lines = replace.pass(lines)

	-- Output
	output.pass(lines)
end

start()
