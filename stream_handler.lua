local HybridService = {}
HybridService.__index = HybridService

function HybridService.new(seed)
    return setmetatable({ state = seed or 51 }, HybridService)
end

function HybridService:compute_loader(count)
    local total = 0
    for i = 0, count - 1 do
        total = total + (self.state + i * 51) % 997
    end
    return total
end

local obj = HybridService.new()
print(obj:compute_loader(51))

return HybridService
