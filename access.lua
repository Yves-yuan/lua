--
-- Created by IntelliJ IDEA.
-- User: Administrator
-- Date: 27/10/2017
-- Time: 下午 5:49
-- To change this template use File | Settings | File Templates.
--

function declare (name, initval)
    rawset(_G, name, initval or false)
end

setmetatable(_G, {
    __newindex = function (_, n)
        error("attempt to write to undeclared variable "..n, 2)
    end,
    __index = function (_, n)
        error("attempt to read undeclared variable "..n, 2)
    end,
})

declare("a")

_G.a = 1

print(a)

