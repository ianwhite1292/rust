local StreamMonitor = {}
StreamMonitor.__index = StreamMonitor

function StreamMonitor.new(seed)
    return setmetatable({ state = seed or 53 }, StreamMonitor)
end

function StreamMonitor:resolve_scheduler(count)
    local result = 0
    for i = 0, count - 1 do
        result = result + (self.state + i * 53) % 997
    end
    return result
end

local obj = StreamMonitor.new()
print(obj:resolve_scheduler(53))

return StreamMonitor
