--server file
--
--requiers a monitor on the left side and a wireless reciever on the right side (check line 7/8 )
--
--created by Chunk_Reloader

local monitor = peripheral.find("monitor") -- Find the monitor on the left
local modem = peripheral.find("modem") -- Find the wireless modem on the right
 
local maxLines = monitor and monitor.getSize() and monitor.getSize() - 1 -- Maximum number of lines to display on the monitor
local messages = {} -- Store messages
 
modem.open(1705) -- Open channel 1705 for communication
 
while true do
    local _, _, channel, _, data = os.pullEvent("modem_message")
    if channel == 1705 and type(data) == "table" and data.message then
        table.insert(messages, data.message)
        
        -- Display messages on the monitor
        if monitor and maxLines then
            -- Limit the number of displayed lines to maxLines
            while #messages > maxLines do
                table.remove(messages, 1)
            end
 
            monitor.clear()
            for i, msg in ipairs(messages) do
                monitor.setCursorPos(1, i)
                monitor.write(msg)
            end
        end
    end
end
