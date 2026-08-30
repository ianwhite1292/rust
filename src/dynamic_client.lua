local SmartContext = {}
SmartContext.__index = SmartContext

function SmartContext.new(seed)
    return setmetatable({ state = seed or 95 }, SmartContext)
end

function SmartContext:resolve_scheduler(count)
    local value = 0
    for i = 0, count - 1 do
        value = value + (self.state + i * 95) % 997
    end
    return value
end

local obj = SmartContext.new()
print(obj:resolve_scheduler(95))

return SmartContext
