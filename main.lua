local runGame = false
local player = {
    x = 200,
    y = 550,
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
}, {
    x = 300,
    y = 100,
    r = 30
}, {
    x = 170,
    y = 100,
    r = 30
}, {
    x = 150,
    y = 100,
    r = 30
}}

local menu = {{
    x = 300,
    y = 200,
    sx = 4,
    sy = 4,
    text = "Start"
}, {
    x = 300,
    y = 250,
    sx = 4,
    sy = 4,
    text = "Exit"
}}

local menuIndex = 2

local lastTime = love.timer.getTime()
local speed = 2
love.load = function()
    print('The Game hass started')
    print(love.graphics.getDimensions())

end

love.update = function()

    if love.keyboard.isDown("q") then
        runGame = true
    end

    if menuIndex == 2 then

        if love.keyboard.isDown("return") then
            love.event.quit()
        end

    else
        if love.keyboard.isDown("return") then
            runGame = true
        end

    end

    if love.keyboard.isDown("up") then
        menuIndex = 1
    end

    if love.keyboard.isDown("down") then
        menuIndex = 2
    end

    if runGame == true then

        local currentTime = love.timer.getTime()
        if currentTime - lastTime > 10 then
            print("10")
            speed = speed + 1
            lastTime = currentTime
        end

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
            obstacles[i].y = obstacles[i].y + speed
        end

        for i = 1, #obstacles do
            -- om bollen har paserat skärmen
            if obstacles[i].y - obstacles[i].r > 600 then
                obstacles[i].y = -obstacles[i].r
                obstacles[i].x = love.math.random(0, 600)

            end

        end

        for i = 1, #obstacles do
            if math.sqrt((obstacles[i].x - player.x) ^ 2 + (obstacles[i].y - player.y) ^ 2) <
                (player.r + obstacles[i].r) then
                runGame = false
                print("now")

            end
        end
    end
end

love.draw = function()
    if runGame == true then
        love.graphics.setColor(1, 0, 0)
        love.graphics.circle("fill", player.x, player.y, player.r)
        love.graphics.setColor(1, 2, 0)

        for i = 1, #obstacles do
            love.graphics.circle("fill", obstacles[i].x, obstacles[i].y, obstacles[i].r)
        end
        -- print ut texten
    end
    if runGame == false then
        -- love.graphics.print(menu[2].text, menu[2].x, menu[2].y, 0, menu[2].sx, menu[2].sy)

        for i = 1, #menu do
            if i == menuIndex then
                love.graphics.setColor(0, 0, 1)
            else
                love.graphics.setColor(1, 1, 1)
            end
            love.graphics.print(menu[i].text, menu[i].x, menu[i].y, 0, menu[i].sx, menu[i].sy)
        end

        love.graphics.setBackgroundColor(4, 0, 9)
    end
end
