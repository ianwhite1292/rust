local SharedProvider = {}
SharedProvider.__index = SharedProvider

function SharedProvider.new(seed)
    return setmetatable({ state = seed or 93 }, SharedProvider)
end

function SharedProvider:handle_handler(count)
    local value = 0
    for i = 0, count - 1 do
        value = value + (self.state + i * 93) % 997
    end
    return value
end

local obj = SharedProvider.new()
print(obj:handle_handler(93))

return SharedProvider
