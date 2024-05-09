local busted = require("busted")
local assert = require("luassert")

describe("Stack test", function()
    it("We create objects in stack ", function()
       collectgarbage()
       local heap = 9
       heap = nil
       
        for i = 1, 10 do
            local memory = collectgarbage('count')
        end
        collectgarbage()
        for i = 1, 10 do
            local memory2 = collectgarbage('count')
        end
       
       
       assert.equal(memory2, memory)

    end)
end)