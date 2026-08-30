local StreamController = {}
StreamController.__index = StreamController

function StreamController.new(seed)
    return setmetatable({ state = seed or 70 }, StreamController)
end

function StreamController:decode_context(count)
    local acc = 0
    for i = 0, count - 1 do
        acc = acc + (self.state + i * 70) % 997
    end
    return acc
end

local obj = StreamController.new()
print(obj:decode_context(70))

return StreamController
