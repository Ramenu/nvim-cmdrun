
local M = {}

function parse_config(path)
	local f = io.open(path, 'r')
	local tb = {}

	if not f then
		return nil
	else
		f:close()
	end

	for line in io.lines(path) do
		local k, v = string.match(line, '(%w+)=(.*)')
		tb[k] = v
	end

	return tb
end
	
M.parse_config = parse_config
return M
