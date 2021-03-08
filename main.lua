local x = 400
local y = 600
local r = 50

local x1 = 400
local y1 = 300
local r1 = 50



love.load = function ()
    print('The Game hass started')
    print(love.graphics.getDimensions( ))

end

love.update = function ()
    --print('uptaderat')

    if love.keyboard.isDown("d") then
        x = x + 5
        end

    if love.keyboard.isDown("a") then
        x = x - 5
    end 

    if love.keyboard.isDown("w") then
        y = y - 5
    end 

    if love.keyboard.isDown("s") then
        y = y + 5
    end 



end

love.draw = function ()
   
    love.graphics.circle("fill", x, y, r)
    love.graphics.circle("fill", x1, y1, r1)
       
    --print('draw')
end
