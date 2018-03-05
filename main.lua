--Title: Moving Objects
-- Name: Ms Raffin
-- Course: ICSO2
-- This program displays an image that move across the screen

-- Hide the status bar
display.setStatusBar ( display.HiddenStatusBar)

-- global Variables
scrollSpeed = 3

-- background image with width and height
local backgroundImage = display.newImageRect("Images/space.png", 2048, 1536)

--caharcter image with width and height
local beetleship = display.newImageRect("Images/beetleship.png", 200, 200)

--set the image to be transparent
beetleship.alpha = 0

-- set the initial x and y position of beetleship
beetleship.x = 0
beetleship.y = display.contentHeight/3

-- Function: MoveShip
--Input: this function accepts and event listener
--Output: none
-- Description: Thsi function adds the scrool speed to the x-value of the ship
local function MoveShip( event )
  -- print to the console the position of the beetleship
  print ("***beetleship.x = " .. beetleship.x)

  -- add the scroll speed to the x-value of the ship
  beetleship.x = beetleship.x + scrollSpeed
  -- change the transperancy of the ship every time it moves so that it fades out
  beetleship.alpha = beetleship.alpha + 0.01
  
end

-- MoveShip will be called over and over again
Runtime:addEventListener("enterFrame", MoveShip)

<<<<<<< HEAD

local octopus = display.newImageRect("Images/octopus.png", 200, 200)

local scrollSpeed2 = 4
=======
-- character image with width and height
local octopus = display.newImageRect("Images/octopus.png", 200, 200)


>>>>>>> a47f18127b2f23786b22e10ae7514741a0a9f880

-- set the initial x and y position of the octopus
octopus.x = 0
octopus.y = 0
<<<<<<< HEAD
octopus.alpha = 0
=======
>>>>>>> a47f18127b2f23786b22e10ae7514741a0a9f880

--Funnction: MoveOctopus
--Input
--Output
--Description: This function adda the scrool
--Condition: AppearOctopus
--Description: when beetleship dissapear, then make the octopus appear
<<<<<<< HEAD
local function MoveOctopus( event )

  if (beetleship.x >= 1200) then
    print ("***octopus.x" .. octopus.x)
    octopus.x = octopus.x + scrollSpeed2
    octopus.y = octopus.y + scrollSpeed2
    octopus.alpha  = octopus.alpha + 0.02
  end
end 

-- MoveShip will be called over and over again
Runtime:addEventListener("enterFrame", MoveOctopus)

-- create a new object 
=======
if beetleship.x == 90 then
 local function MoveOctopus( event)
	  -- add the scroll speed to the x-value and y-value of the octopus
     octopus.x = octopus.x + scrollSpeed
      octopus.y = octopus.y + scrollSpeed
      -- add opacity to the object
      octopus.alpha = octopus.alpha + 0.01
 end
   --MoveOctopus will be called over and over again
  Runtime:addEventListener("enterFrame", MoveOctopus)
end

>>>>>>> a47f18127b2f23786b22e10ae7514741a0a9f880
