if type(oldtime) == "function" then
  os.time = oldtime
end

oldtime = os.time
write("Enter new time:")
local newtime = tonumber(read())

if newtime == nil then
  print("Please enter number")
  return
end

local nowtime = os.time()
diftime = newtime-nowtime

function os.time()
return oldtime()+diftime
end