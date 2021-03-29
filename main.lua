obstacle = {

  [1] = (x = 400)
    y = 600
    r = 50,


    x = 200,
    y = 300,
    r = 25


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
    love.graphics.setColor(1, 0, 2)
    love.graphics.circle("fill", obstacle.x, obstacle.y, obstacle.r)


      
    --print('draw')
end