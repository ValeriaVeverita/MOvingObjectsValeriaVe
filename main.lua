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
<<<<<<< HEAD
  beetleship.alpha = beetleship.alpha + 0.01
  --make the object to spin
  beetleship:rotate(50) 
=======
  beetleship.alpha = beetleship.alpha -0.005
  --rotate
  beetleship:rotate(100)
  
>>>>>>> 21705d9a5815bf2d6e2180101ab46b616c7446ec
end

-- MoveShip will be called over and over again
Runtime:addEventListener("enterFrame", MoveShip)

<<<<<<< HEAD
--create another character and add the scroll spedd
=======
--create another image

>>>>>>> 21705d9a5815bf2d6e2180101ab46b616c7446ec
local octopus = display.newImageRect("Images/octopus.png", 200, 200)
local scrollSpeed2 = 4
<<<<<<< HEAD
-- set the initial x and y position of the octopus
octopus.x = 0
octopus.y = 0
--set the transperancy of the object
octopus.alpha = 0
--set the scale of the object
octopus:scale(1,1)
=======
octopus.xScale = 1
octopus.yScale = 1

-- set the initial x and y position of the octopus
octopus.x = 0
octopus.y = 0

octopus.alpha = 0

>>>>>>> 21705d9a5815bf2d6e2180101ab46b616c7446ec

--Funnction: MoveOctopus
--Input: this function accepts and event listener
--Output: none
--Description: This function adda the scrool
--Condition: AppearOctopus
--Description: when beetleship dissapear, then make the octopus appear

local function MoveOctopus( event )

  if (beetleship.x >= 1200) then
<<<<<<< HEAD
    print ("***octopus.x" .. octopus.x)
    --make the vharacter to move diagonoly by adding the scroll Speed to the x-value and y-value
=======
    print ("***octopus.x=".. octopus.x)
>>>>>>> 21705d9a5815bf2d6e2180101ab46b616c7446ec
    octopus.x = octopus.x + scrollSpeed2
    octopus.y = octopus.y + scrollSpeed2
    --cahnge the transperency of the ship every time it moves
    octopus.alpha  = octopus.alpha + 0.02
<<<<<<< HEAD
    --make the object grow by adding value to the xScale and yScale
    octopus.xScale = octopus.xScale + 0.01
    octopus.yScale = octopus.yScale + 0.01
=======
    --Scale the image by (200 - x and by 50 - y)
    octopus.xScale = octopus.xScale + 0.01
    octopus.yScale = octopus.yScale + 0.01

>>>>>>> 21705d9a5815bf2d6e2180101ab46b616c7446ec
  end
end 
-- MoveShip will be called over and over again
Runtime:addEventListener("enterFrame", MoveOctopus)


-- create a new object 
<<<<<<< HEAD
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
=======
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
 
>>>>>>> 21705d9a5815bf2d6e2180101ab46b616c7446ec
end
Runtime:addEventListener("enterFrame",MoveRocket)