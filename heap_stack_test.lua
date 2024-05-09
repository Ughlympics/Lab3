local busted = require("busted")
local assert = require("luassert")

describe("value types", function()
    it("numbers allocation should not increase heap", function()
        local memory_usage_before = collectgarbage("count")
        local v = 5
        v = nil
        local memory_usage_after = collectgarbage("count")

        assert.truthy(memory_usage_before == memory_usage_after)
   end)
end)

describe("reference types", function()
    it("table allocation should increase heap", function()
        local memory_usage_before = collectgarbage("count")
        local v = {}
        v = nil
        local memory_usage_after = collectgarbage("count")

        assert.truthy(memory_usage_after > memory_usage_before)
   end)
end)
