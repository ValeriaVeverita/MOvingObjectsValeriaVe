--Title: Moving Objects
-- Name: Ms Raffin
-- Course: ICSO2
-- This program displays an image that move across the screen

-- Hide the status bar
display.setStatusBar ( display.HiddenStatusBar)

-- global Variables
scrollSpeed = 3

-- background image with width and height
local backgroundImage = display.newImageRect("Images/background.png", 2048, 1536)

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
  -- add the scroll speed to the x-value of the ship
  beetleship.x = beetleship.x + scrollSpeed
  -- change the transperancy of the ship every time it moves so that it fades out
   beetleship.alpha = beetleship.alpha + 0.01
end

-- MoveShip will be called over and over again
Runtime:addEventListener("enterFrame", MoveShip)

-- character image with width and height
local octopus = display.newImageRect("Images/octopus.png", 200, 200)



-- set the initial x and y position of the octopus
octopus.x = 0
octopus.y = 0

--Funnction: MoveOctopus
--Input
--Output
--Description: This function adda the scrool
--Condition: AppearOctopus
--Description: when beetleship dissapear, then make the octopus appear
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

