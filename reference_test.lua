local busted = require("busted")
local assert = require("luassert")

describe("Reference Test", function()
    it("", function()
        local table1 = {1, 2, 3}
        local table2 = table1
        table1[1] = 100

        assert.is_same(table1, table2)

    end)
end)