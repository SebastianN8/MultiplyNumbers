-----------------------------------------------------------------------------------------
--
-- main.lua
-- Created by: Sebastian N
-- Created on: April
-- 
-- This program multiplies positive numbers
-----------------------------------------------------------------------------------------

-- Visual elements
display.setDefault('background', 0.1, 0.1, 0.3)
local myTitle = display.newText('ICS2O MULTIPLICATION', display.contentCenterX, 200, native.SystemFont, 100)
local mySign = display.newText('X', display.contentCenterX - 100, 600, native.SystemFont, 100)
local myEqual = display.newText('=', display.contentCenterX + 500, 600, native.SystemFont, 100)


-- Multiples boxes
local mutlipleOneBox = native.newTextField(display.contentCenterX - 400, 600, 350, 150)
mutlipleOneBox.id = 'the multiple one'

local mutlipleTwoBox = native.newTextField(display.contentCenterX + 200, 600, 350, 150)
mutlipleTwoBox.id = 'the multiple two'

-- Initiator button
local myButton = display.newImageRect('./Assets/Sprites/enterButton.png', 350, 250)
myButton.x = display.contentCenterX - 80
myButton.y = display.contentCenterY + 200
myButton.id = 'the initiator'

-- the result
local myResult = display.newText('', display.contentCenterX + 700, 600, native.SystemFont, 150)

--function
local function addingUp(event)
	-- Variables
	local multipleOne = tonumber(mutlipleOneBox.text)
	local multipleTwo = tonumber(mutlipleTwoBox.text)
	local theAddition = 0

	-- If statement
	if multipleTwo > 0 then
		repeat
			theAddition = theAddition + multipleOne
			multipleTwo = multipleTwo - 1 
		until multipleTwo == 0
		myResult.text = theAddition
	elseif multipleTwo < 0 then
		repeat
			theAddition = theAddition + multipleOne
			multipleTwo = multipleTwo + 1 
		until multipleTwo == 0
		myResult.text = theAddition
	end
end





-- Event Listener
myButton:addEventListener('touch', addingUp)