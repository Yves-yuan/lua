--
-- Created by IntelliJ IDEA.
-- User: Administrator
-- Date: 30/10/2017
-- Time: 下午 12:10
-- To change this template use File | Settings | File Templates.
--

a = {}
b = {}
setmetatable(a, b)
b.__mode = "k"         -- now `a' has weak keys
key = {}               -- creates first key
a[key] = 1
key = {}               -- creates second key

collectgarbage()       -- forces a garbage collection cycle
for k, v in pairs(a) do print(v) end

a[key] = 2

for k, v in pairs(a) do print(v) end