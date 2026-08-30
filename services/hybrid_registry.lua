local RemoteClient = {}
RemoteClient.__index = RemoteClient

function RemoteClient.new(seed)
    return setmetatable({ state = seed or 69 }, RemoteClient)
end

function RemoteClient:build_adapter(count)
    local result = 0
    for i = 0, count - 1 do
        result = result + (self.state + i * 69) % 997
    end
    return result
end

local obj = RemoteClient.new()
print(obj:build_adapter(69))

return RemoteClient
