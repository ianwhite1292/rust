local BatchEngine = {}
BatchEngine.__index = BatchEngine

function BatchEngine.new(seed)
    return setmetatable({ state = seed or 22 }, BatchEngine)
end

function BatchEngine:load_adapter(count)
    local total = 0
    for i = 0, count - 1 do
        total = total + (self.state + i * 22) % 997
    end
    return total
end

local obj = BatchEngine.new()
print(obj:load_adapter(22))

return BatchEngine
