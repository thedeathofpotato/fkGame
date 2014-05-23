-- LÖVEver: 0.9

STANDARD_WINDOW_WIDTH = 1280
STANDARD_WINDOW_HEIGHT = 800

function love.load()
    love.window.setMode(STANDARD_WINDOW_WIDTH, STANDARD_WINDOW_HEIGHT, {
        resizable = true,
        vsync = true,
        minwidth = 800,
        minheight = 600})
    love.graphics.setBackgroundColor(100, 100, 100)
    bg = love.graphics.newImage("bg.png")

    love.window.setTitle("FK-Game")

    -- load fonts
    droidSans = love.filesystem.newFile("DroidSans.ttf")
    sourceCodePro = love.filesystem.newFile("SourceCodePro-Regular.otf")
    freeMono = love.filesystem.newFile("FreeMono.ttf")

    defaultFont = love.graphics.newFont(droidSans, STANDARD_FONT_SIZE)
    love.graphics.setFont(defaultFont)

    gamestate = 0
end

function love.mousepressed(x, y, button)

end

function love.mousereleased(x, y, button)

end

function love.keypressed(key, unicode)
    if key == "escape" then
        love.event.quit()
    end
end

function love.keyreleased(key, unicode)

end

function love.update(dt)

    windowWidth = love.window.getWidth()
    windowHeight = love.window.getHeight()

    -- Set fontsizes relative to window size
end

function love.draw()

    if gamestate == 0 then

        love.graphics.newFont(droidSans, 12)

        love.mouse.setVisible(true)

        -- Draw background
        love.graphics.setColor(255, 255, 255, 255)
        love.graphics.draw(bg, 0, 0, 0, windowWidth / bg:getWidth(), windowHeight / bg:getHeight())
        love.graphics.setColor(0, 0, 0, 255)

        love.window.setTitle(love.timer.getFPS())

        local y = 0
        local nextYDiff = calcParagraph(fontSize(18))
        love.graphics.print("hallo font test baum 1234", 0, y)
        y = y + nextYDiff
        local nextYDiff = calcParagraph(fontSize(12))
        love.graphics.print("hallo font test baum 1234", 0, y)
        y = y + nextYDiff
        local nextYDiff = calcParagraph(fontSize(24))
        love.graphics.print("hallo font test baum 1234", 0, y)
    end
end

function fontSize(orientationFontSize)
    local windowWidth = love.window.getWidth()
    local windowHeight = love.window.getHeight()
    local ratioWidth = windowWidth / STANDARD_WINDOW_WIDTH
    local ratioHeight = windowHeight / STANDARD_WINDOW_HEIGHT
    local ratio = (ratioWidth + ratioHeight) / 2
    local fontSize = ratio * orientationFontSize
    local theFont = love.graphics.newFont(droidSans, fontSize)
    love.graphics.setFont(theFont)
    return fontSize
end

function calcParagraph(orientationFontSize)
    local paragraph = orientationFontSize * 1.5
    if paragraph > 14 then
        paragraph = orientationFontSize + 4
    end
    return paragraph
end