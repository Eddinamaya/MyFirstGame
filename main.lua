
local player = {
x = 200,
y = 300,
r = 25
}
local obstacles = {
    {
        x = 100,
        y = 300,
        r = 50
    },

    {
        x = 100,
        y = 100,
        r = 100
    }
}


love.keypress = function ()
    
end

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

        for i = 1, #obstacles do
            obstacles[i].y = obstacles[i].y + 3
        end
        -- obstacle1.y = obstacle1.y + 2
        -- obstacle2.y = obstacle2.y + 2.7
        -- obstacle3.y = obstacle3.y + 3
        -- obstacle4.y = obstacle4.y + 3.5
        -- obstacle5.y = obstacle5.y + 4
        -- obstacle6.y = obstacle6.y + 5
        -- obstacle7.y = obstacle7.y + 9
        -- obstacle8.y = obstacle8.y + 2.5

        

end

love.draw = function ()
   
    love.graphics.setColor(1, 0, 0)
    love.graphics.circle("fill", player.x, player.y, player.r)
    love.graphics.setColor(1, 2, 0)

    for i = 1, #obstacles do
        love.graphics.circle("fill", obstacles[i].x, obstacles[i].y, obstacles[i].r)
    end

    


      
    --print('draw')
end