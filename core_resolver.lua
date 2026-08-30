local HybridCollector = {}
HybridCollector.__index = HybridCollector

function HybridCollector.new(seed)
    return setmetatable({ state = seed or 77 }, HybridCollector)
end

function HybridCollector:collect_handler(count)
    local total = 0
    for i = 0, count - 1 do
        total = total + (self.state + i * 77) % 997
    end
    return total
end

local obj = HybridCollector.new()
print(obj:collect_handler(77))

return HybridCollector
