local busted = require("busted")
local assert = require("luassert")

describe("heap test", function()
    it("", function()
       local heap = 9
       heap = nil
       local memory = collectgarbage('count')
       collectgarbage()
       
       assert.is_true(collectgarbage('count') < memory)
    end)
end)