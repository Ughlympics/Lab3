local busted = require("busted")
local assert = require("luassert")

describe("garbage collection", function()

    it("numbers should not affect collected memory", function()
        collectgarbage('collect');
        collectgarbage('collect');
        collectgarbage('collect');

        local v = 5

        local memory_usage_before = collectgarbage('count')
        v = nil
        collectgarbage('collect');
        local memory_usage_after = collectgarbage('count')

        assert.equal(memory_usage_before, memory_usage_after)
   end)

   it("tables without references should be collected", function()
        collectgarbage('collect');
        collectgarbage('collect');
        collectgarbage('collect');

        local v = {}

        local memory_usage_before = collectgarbage('count')
        v = nil
        collectgarbage('collect');
        local memory_usage_after = collectgarbage('count')

        assert.truthy(memory_usage_after < memory_usage_before)
   end)
end)
