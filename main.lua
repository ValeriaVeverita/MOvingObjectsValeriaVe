--Title: Moving Objects
-- Name: Ms Raffin
-- Course: ICSO2
-- This program displays an image that move across the screen

-- Hide the status bar
display.setStatusBar ( display.HiddenStatusBar)

-- global Variables
scrollSpeed = 7

-- background image with width and height
local backgroundImage = display.newImageRect("Images/space.png", 2048, 1536)

--caharcter image with width and height
local beetleship = display.newImageRect("Images/beetleship.png", 200, 200)

--set the image to be transparent
beetleship.alpha = 1

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
  beetleship.alpha = beetleship.alpha -0.005
  --rotate
  beetleship:rotate(100)
  
end

-- MoveShip will be called over and over again
Runtime:addEventListener("enterFrame", MoveShip)

--create another image

local octopus = display.newImageRect("Images/octopus.png", 200, 200)

local scrollSpeed2 = 4
octopus.xScale = 1
octopus.yScale = 1

-- set the initial x and y position of the octopus
octopus.x = 0
octopus.y = 0

octopus.alpha = 0


--Funnction: MoveOctopus
--Input
--Output
--Description: This function adda the scrool
--Condition: AppearOctopus
--Description: when beetleship dissapear, then make the octopus appear

local function MoveOctopus( event )

  if (beetleship.x >= 1200) then
    print ("***octopus.x=".. octopus.x)
    octopus.x = octopus.x + scrollSpeed2
    octopus.y = octopus.y + scrollSpeed2
    octopus.alpha  = octopus.alpha + 0.02
    --Scale the image by (200 - x and by 50 - y)
    octopus.xScale = octopus.xScale + 0.01
    octopus.yScale = octopus.yScale + 0.01

  end
end 
-- MoveShip will be called over and over again
Runtime:addEventListener("enterFrame", MoveOctopus)

-- create a new object 
local rocket = display.newImageRect("Images/rocketship.png", 200, 200)
--Make it transparent
rocket.alpha = 0
--set the coordinates of the object
rocket.x = 0
rocket.y = 0
--Function: MoveRocket
--Condition: Appear rocket
--Description: when octopus dissapear, then rocket will move in a parabolic direction
local function MoveRocket( event )
  if (octopus.y >= 500)then
    rocket.y = rocket.y + 2
    rocket.x = rocket.y^2
    rocket.alpha = rocket.alpha + 0.02
  end
  if (rocket.x >= 500)then
    rocket.y = rocket.y - 5
    rocket.x = rocket.y ^ -2
  end
 
end
Runtime:addEventListener("enterFrame",MoveRocket)