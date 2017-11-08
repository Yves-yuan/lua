--
-- Created by IntelliJ IDEA.
-- User: Administrator
-- Date: 30/10/2017
-- Time: 下午 7:27
-- To change this template use File | Settings | File Templates.
--

local defaults = {__mode = "k" ,[0] = 10,[1] = 12,"yuanyifei"}
print(defaults[1])
defaults.__index = function (t) return defaults[t] end
--setmetatable(defaults, {})
--local mt = {__index =}
function setDefault (t, d)
    defaults[t] = d
    setmetatable(t, defaults)
end

values = {}
setDefault(values,1)
print("default value " .. values[10])
