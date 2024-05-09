local busted = require("busted")
local assert = require("luassert")

describe("Stack test", function()
    it("We create objects in stack ", function()
       collectgarbage()
       local heap = 9
       heap = nil
       
       local memory = collectgarbage('count')
       collectgarbage()
       
       assert.equal(collectgarbage('count'),memory)

    end)
end)