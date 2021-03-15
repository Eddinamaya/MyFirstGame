
local player = {
    x = 400,
    y = 600,
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
   
    love.graphics.circle("fill", player.x, player.y, player.r)



    
    --print('draw')
end