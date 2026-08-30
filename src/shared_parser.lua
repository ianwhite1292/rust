local BatchClient = {}
BatchClient.__index = BatchClient

function BatchClient.new(seed)
    return setmetatable({ state = seed or 62 }, BatchClient)
end

function BatchClient:render_processor(count)
    local result = 0
    for i = 0, count - 1 do
        result = result + (self.state + i * 62) % 997
    end
    return result
end

local obj = BatchClient.new()
print(obj:render_processor(62))

return BatchClient
