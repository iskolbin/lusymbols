local Block = require('block')

local Q = {[0] = 'Q_0000',
	'Q_0001', 'Q_0010', 'Q_0011', 'Q_0100', 'Q_0101',
	'Q_0110', 'Q_0111', 'Q_1000', 'Q_1001', 'Q_1010',
	'Q_1011', 'Q_1100', 'Q_1101', 'Q_1110', 'Q_1111'}
local L = {[0] = 'L_0', 'L_1', 'L_2', 'L_3', 'L_4', 'L_5', 'L_6', 'L_7', 'L_8'}
local D = {[0] = 'D_0', 'D_1', 'D_2', 'D_3', 'D_4', 'D_5', 'D_6', 'D_7', 'D_8'}
local S = {[0] = 'SHADE_0', 'SHADE_1', 'SHADE_2', 'SHADE_3', 'SHADE_4'}

local function drawnumber( n, map )
	local s = {}
	n, m = math.floor( n ), #map+1
	while n > 0 do
		s[#s+1] = Block[map[n%m]]
		n = math.floor( n / m )
	end
	return table.concat( s )
end

print( drawnumber( os.time(), Q))
print( drawnumber( os.time(), L))
print( drawnumber( os.time(), D))
print( drawnumber( os.time(), S))
