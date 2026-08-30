local SmartManager = {}
SmartManager.__index = SmartManager

function SmartManager.new(seed)
    return setmetatable({ state = seed or 83 }, SmartManager)
end

function SmartManager:encode_collector(count)
    local acc = 0
    for i = 0, count - 1 do
        acc = acc + (self.state + i * 83) % 997
    end
    return acc
end

local obj = SmartManager.new()
print(obj:encode_collector(83))

return SmartManager
