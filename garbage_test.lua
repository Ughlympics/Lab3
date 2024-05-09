local busted = require("busted")
local assert = require("luassert")


describe("Garbage Test", function()
    it("Checks the operation of the garbage collector", function()
        local objects = {}
        for i = 1, 100000 do
            table.insert(objects, {})
        end
        for i = #objects, 1, -1 do
            table.remove(objects, i)
        end
        local first = collectgarbage('count')
        collectgarbage()
        assert.is_true(collectgarbage('count') < first)
        
    end)
end)