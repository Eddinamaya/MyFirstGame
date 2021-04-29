local player = {
    x = 200,
    y = 300,
    r = 25
}

local obstacles = {{
    x = 200,
    y = 300,
    r = 30
}, {
    x = 100,
    y = 100,
    r = 30
}}

love.keypress = function()

end

love.load = function()
    print('The Game hass started')
    print(love.graphics.getDimensions())

end

love.update = function()

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

    -- Bollarnas förflyttning:
    for i = 1, #obstacles do
        obstacles[i].y = obstacles[i].y + 3
    end

    for i = 1, #obstacles do
        --om bollen har paserat skärmen
        if obstacles[i].y - obstacles[i].r > 600 then
            obstacles[i].y = -obstacles[i].r
            obstacles[i].x = love.math.random(0,600)
            print(obstacles[i].x)
        end
    end
end

love.draw = function()
    love.graphics.setColor(1, 0, 0)
    love.graphics.circle("fill", player.x, player.y, player.r)
    love.graphics.setColor(1, 2, 0)

    for i = 1, #obstacles do
        love.graphics.circle("fill", obstacles[i].x, obstacles[i].y, obstacles[i].r)
    end
end
