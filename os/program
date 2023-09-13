-- os.pullEvent = os.pullEventRaw
 
local w,h = term.getSize()
 
function printCentered (y,s)
    local x = math.floor((w - string.len(s)) /2)
    term.setCursorPos(x,y)
    term.clearLine()
    term.write(s)
end
 
-- draw menu
local nOption = 1 
 
--menu
local function drawMenu()
	--	term.clear
    --	term.setCursorPos(1,1)
    --	term.write("Pixel.Os v0.1")
    
    term.setCursorPos(w-11,1)
    if nOption == 1 then
        term.write("Command")
    elseif nOption == 2 then 
        term.write("Programs")
    elseif nOption == 3 then
        term.write("Shutdown")
    elseif nOption == 4 then
        term.write("Uninstall")
    else
   end
end

--Gui
    
term.clear()
local function drawFrontend()
    term.clear()  -- Clear the terminal screen
    term.setCursorPos(5, math.floor(h/1) - 1)
    term.setTextColor(colors.white)  -- Set text color to white
    term.write("Pixel Os")

    term.setCursorPos(5, math.floor(h/2) - 2)
    term.setTextColor(colors.green)  -- Set text color to green
    term.write("Start Menu")

    term.setCursorPos(5, math.floor(h/2) - 1)
    term.write("")

    term.setCursorPos(5, math.floor(h/2) + 0)
    term.setTextColor(nOption == 1 and colors.green or colors.white)
    term.write(nOption == 1 and "[   Chat    ]" or "Chat")

    term.setCursorPos(5, math.floor(h/2) + 1)
    term.setTextColor(nOption == 2 and colors.green or colors.white)
    term.write(nOption == 2 and "[           ]" or "Empty")

    term.setCursorPos(5, math.floor(h/2) + 2)
    term.setTextColor(nOption == 3 and colors.green or colors.white)
    term.write(nOption == 3 and "[           ]" or "Empty")

    term.setCursorPos(5, math.floor(h/2) + 3)
    term.setTextColor(nOption == 4 and colors.green or colors.white)
    term.write(nOption == 4 and "[    Back   ]" or "Back")
end

--local function drawFrontend()
--   printCentered(math.floor(h/2) - 3, "")    
--    printCentered(math.floor(h/2) - 2, "Start Menu")
--    printCentered(math.floor(h/2) - 1, "")
--    printCentered(math.floor(h/2) + 0, ((nOption == 1) and "[    Chat   ]") or "Chat")
--    printCentered(math.floor(h/2) + 1, ((nOption == 2) and "[ Programs  ]") or "Programs")
--    printCentered(math.floor(h/2) + 2, ((nOption == 3) and "[ Shutdown  ]") or "Shutdown")
--    printCentered(math.floor(h/2) + 3, ((nOption == 4) and "[    Back   ]") or "Back")
--end 
 
-- Display
 
drawMenu()
drawFrontend()
 
while true do 
    local e,p = os.pullEvent()
        if e == "key" then
          local key = p 
          if key == 17 or key == 200 then
            
                if nOption > 1 then
                 nOption = nOption -1
                 drawMenu()
                 drawFrontend()
               end
             elseif key == 31 or key == 208 then
               if nOption < 4 then 
                 nOption = nOption + 1
                 drawMenu()
                 drawFrontend()
               end
          elseif key == 28 then 
            break
            
          end
      end
  end
      
      term.clear()
      
      -- Conditions
      
      if nOption == 1 then
          shell.run("/os/programs/Chat.V0.3")
      elseif nOption == 2 then
      	  print("there is nothing here")
      	  print("you have to wait for a update")
      	  sleep(1)
      	  print("going back to the menu")
      	  sleep(1)
          shell.run(".menu")
      elseif nOption == 3 then
            print("there is nothing here")
      	  print("you have to wait for a update")
      	  sleep(1)
      	  print("going back to the menu")
      	  sleep(1)
          shell.run(".menu")
      else
          shell.run(".menu")
      end
      
