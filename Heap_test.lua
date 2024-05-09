local busted = require("busted")
local assert = require("luassert")

describe("Heap test", function()
    it("We create objects in heap", function()
       local memoryy = collectgarbage('count')
       local table = {1}
       table = nil
       collectgarbage()
       assert.is_true(collectgarbage('count') < memoryy)
    end)
end)