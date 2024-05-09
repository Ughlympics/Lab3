local busted = require("busted")
local assert = require("luassert")

describe("Reference Test", function()
    it("", function()
        --stack test
        local stack = {}
    
        assert.is_true(#stack == 0)
        
        table.insert(stack, "1")
        table.insert(stack, "2")
        
        assert.is_true(#stack == 2)
        
        local removedItem = table.remove(stack)
        
        assert.is_true(removedItem == "2")
        
        assert.is_true(#stack == 1)  
        
        -- heap test
        local heap = {}
        
        assert.is_true(next(heap) == nil)
        
        heap["key1"] = "1"
        heap["key2"] = "2"
        
        assert.is_true(heap["key1"] == "1")
        assert.is_true(heap["key2"] == "2")
        
        heap["key1"] = nil
        
        assert(heap["key1"] == nil)
        
    end)
end)