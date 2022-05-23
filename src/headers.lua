local headers = {}

local headerChecks = {
	{"local store", false, "^add ", "^push "} -- Store
}

function headers.pass(lines) -- O(n^3) O_O
	for i=1,#lines,1 do
		for j=1,#headerChecks,1 do
			for k=3,#headerChecks[j],1 do
				if lines[i]:find(headerChecks[j][k]) then
					headerChecks[j][2] = true
				end
			end
		end
	end
end

function headers.add(file)
	for i=1,#headerChecks,1 do
		if headerChecks[i][2] == true then
			file:write(headerChecks[i][1].."\n")
		end
	end
end

return headers
