-- AWPC Program (awpc.lua)
local playerName = "" -- Initialize player's name
 
-- Function to input player's name
local function getPlayerName()
   term.clear() -- Clear the screen (if it's supported)
   term.setCursorPos(1, 1) -- Set cursor position (if it's supported)
   write("Enter your name: ")
   playerName = read()
end
 

	
	
local function drawMenu()

    term.setCursorPos(w-11,1)
    if nOption == 1 then
        term.write("Back")
    elseif nOption == 2 then 
        term.write("Bottom")
    elseif nOption == 3 then
        term.write("Top")
    elseif nOption == 4 then
        term.write("Left")
    elseif nOption == 5 then
    	term.write("Right")
    else 
   end
end

--Gui
    
local function drawFrontend()
    term.clear()  -- Clear the terminal screen

    term.setCursorPos(5, math.floor(h/2) - 2)
    term.setTextColor(colors.green)  -- Set text color to green
    term.write("Wireless Modem side:")

    term.setCursorPos(1, math.floor(h/2) - 1)
    term.write("")

    term.setCursorPos(1, math.floor(h/2) + 0)
    term.setTextColor(nOption == 1 and colors.green or colors.white)
    term.write(nOption == 1 and "[   back   ]" or "back")

    term.setCursorPos(1, math.floor(h/2) + 1)
    term.setTextColor(nOption == 2 and colors.green or colors.white)
    term.write(nOption == 2 and "[  bottom  ]" or "bottom")

    term.setCursorPos(1, math.floor(h/2) + 2)
    term.setTextColor(nOption == 3 and colors.green or colors.white)
    term.write(nOption == 3 and "[   top    ]" or "top")

    term.setCursorPos(1, math.floor(h/2) + 3)
    term.setTextColor(nOption == 4 and colors.green or colors.white)
    term.write(nOption == 4 and "[   left   ]" or "left")

	term.setCursorPos(1, math.floor(h/2) + 4)
	term.setTextColor(nOption == 3 and colors.green or color.white)
	term.write(nOption == 5 and "[  right   ]" or "right")

end

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
          print("test")
      elseif nOption == 2 then
          print("test")
      elseif nOption == 3 then
          print("test")
      elseif nOption == 4 then
      	 print("test") 
      else
          shell.run("/os/.uninstall")
      end	
	
	
	
	
 -- Function to display messages on the screen
local function displayMessage(message)
   term.clear() -- Clear the screen (if it's supported)
   term.setCursorPos(1, 2) -- Set cursor position (if it's supported)
   print(playerName .. ": " .. message)
end

term(clear)
getPlayerName()
drawFrontend()
 
-- Open a Rednet connection on the back side
rednet.open("back")
 
-- Main loop to listen for messages
while true do
   -- Ask the user to input a message
   term.clear()
   term.setCursorPos(1, 1)
   write("-----------[V0.3]---------")
   term.setCursorPos(1, 2)
   write("Enter your message")
   term.setCursorPos(1, 3) 
   write("or 'exit' to quit :")
   term.setCursorPos(1, 4)  
    local inputMessage = read()
 
   if inputMessage == "exit" then
      break -- Exit the program if 'exit' is entered
   end
 
   -- Display the user's message on the screen
   displayMessage(inputMessage)
 
   -- Transmit the message to the server using Rednet
   local messageData = playerName .. ": " .. inputMessage
   rednet.send(1705, messageData) -- Adjust the recipient computer ID as needed
end
 
-- Close the Rednet connection when the program exits
rednet.close("back")
