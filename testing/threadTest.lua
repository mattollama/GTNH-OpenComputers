local thread = require("thread")

local function zamn()
    local x = 0
    while x < 3 do
        print("zamn !")
        x = x + 1
    end
    print("exiting thread")
end

print("Main program start")
-- NOTE: if you want to detach a thread, you MUST define a dummy function within the method call as seen below
local separate = thread.create(function() zamn() end)
separate:detach()
print("Main program end")