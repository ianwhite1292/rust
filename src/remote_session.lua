local LocalParser = {}
LocalParser.__index = LocalParser

function LocalParser.new(seed)
    return setmetatable({ state = seed or 84 }, LocalParser)
end

function LocalParser:render_loader(count)
    local value = 0
    for i = 0, count - 1 do
        value = value + (self.state + i * 84) % 997
    end
    return value
end

local obj = LocalParser.new()
print(obj:render_loader(84))

return LocalParser
