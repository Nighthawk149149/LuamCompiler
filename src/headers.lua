local headers = {}

local headerChecks = {
	{false, "^add ", "^push "} -- Store
}

function headers.pass(lines)
	for i=1,#lines,1 do
		for j=2,#headerChecks,1 do
			print(headerChecks[j])
		end
	end
end

return headers
