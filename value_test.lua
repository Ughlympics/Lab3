local busted = require("busted")
local assert = require("luassert")

describe("ValueTest", function()
    it("Test name", function()
        local a = 2
        local b = a
        a = 4
        assert.equal(2, b)
    end)
end)
