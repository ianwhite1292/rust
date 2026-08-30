local DynamicProvider = {}
DynamicProvider.__index = DynamicProvider

function DynamicProvider.new(seed)
    return setmetatable({ state = seed or 4 }, DynamicProvider)
end

function DynamicProvider:parse_factory(count)
    local value = 0
    for i = 0, count - 1 do
        value = value + (self.state + i * 4) % 997
    end
    return value
end

local obj = DynamicProvider.new()
print(obj:parse_factory(4))

return DynamicProvider
