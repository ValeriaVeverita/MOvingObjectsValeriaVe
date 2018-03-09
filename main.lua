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
  --make the object to spin
  beetleship:rotate(50) 
end

-- MoveShip will be called over and over again
Runtime:addEventListener("enterFrame", MoveShip)

--create another character and add the scroll spedd
local octopus = display.newImageRect("Images/octopus.png", 200, 200)
local scrollSpeed2 = 4
-- set the initial x and y position of the octopus
octopus.x = 0
octopus.y = 0
--set the transperancy of the object
octopus.alpha = 0
--set the scale of the object
octopus:scale(1,1)

--Funnction: MoveOctopus
--Input: this function accepts and event listener
--Output: none
--Description: This function adda the scrool
--Condition: AppearOctopus
--Description: when beetleship dissapear, then make the octopus appear

local function MoveOctopus( event )

  if (beetleship.x >= 1200) then
    print ("***octopus.x" .. octopus.x)
    --make the vharacter to move diagonoly by adding the scroll Speed to the x-value and y-value
    octopus.x = octopus.x + scrollSpeed2
    octopus.y = octopus.y + scrollSpeed2
    --cahnge the transperency of the ship every time it moves
    octopus.alpha  = octopus.alpha + 0.02
    --make the object grow by adding value to the xScale and yScale
    octopus.xScale = octopus.xScale + 0.01
    octopus.yScale = octopus.yScale + 0.01
  end
end 

-- MoveShip will be called over and over again
Runtime:addEventListener("enterFrame", MoveOctopus)


-- create a new object 
local rocket = display.newImageRect("Images/rocketship.png", 300, 300)
--Make it transparent
rocket.alpha = 1
--set the coordinates of the object
rocket.x = -150
rocket.y = 350

--Set the local variable of tyhe scroll speed
local scrollSpeed3 = 3

--Function: MoveRocket
--Condition: Appear rocket
--Input: this function accepts and event listener
--Output: none
--Description: when octopus dissapear, then rocket will move in one direction a nd when it reaches one point it will move in opposite direction
local function MoveRocket( event )
  if (octopus.x >= 500) then
   rocket.x = rocket.x +scrollSpeed3
  end
 if (rocket.x<0) then
    scrollSpeed3 = 3
    rocket.xScale= 1
 end
 if (rocket.x>1000) then
    scrollSpeed3 = -3
    rocket.xScale= -1
  end
end
Runtime:addEventListener("enterFrame",MoveRocket)