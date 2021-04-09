local player = {
x = 200,
y = 300,
r = 25
}

local obstacle = {
		x = 100,
		y = 100,
		r = 30,
    

     
}

local obstacle2 = {
        x = 150,
        y = 100,
        r = 50
    
}

love.load = function ()
    print('The Game hass started')
    print(love.graphics.getDimensions( ))

end

love.update = function ()
    --print('uptaderat')

    if love.keyboard.isDown("d") then
        player.x = player.x + 5
        end

    if love.keyboard.isDown("a") then
        player.x = player.x - 5
    end 

    if love.keyboard.isDown("w") then
        player.y = player.y - 5
    end 

    if love.keyboard.isDown("s") then
        player.y = player.y + 5
    end 



end

love.draw = function ()
   
    love.graphics.setColor(1, 0, 0)
    love.graphics.circle("fill", player.x, player.y, player.r)
    love.graphics.setColor(1, 2, 0)
    love.graphics.circle("fill", obstacle.x, obstacle.y, obstacle.r)
    love.graphics.setColor(1, 5, 1)
    love.graphics.circle("fill", obstacle2.x, obstacle2.y, obstacle2.r)

      
    --print('draw')
end