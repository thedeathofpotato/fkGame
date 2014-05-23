-- LÖVEver: 0.9

function love.load()
	love.window.setMode(1280, 800, {
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
    -- TODO
end

function love.draw()

	if gamestate == 0 then

        love.mouse.setVisible(true)

        -- Draw background
        love.graphics.setColor(255, 255, 255, 255)
        love.graphics.draw(bg, 0, 0, 0, windowWidth / bg:getWidth(), windowHeight / bg:getHeight())
        love.graphics.setColor(0, 0, 0, 255)
        love.graphics.setColor(242, 227, 190, 255)
        love.graphics.rectangle("fill", 0, 0, love.window.getWidth(), 70)
        love.graphics.rectangle("fill", (love.window.getWidth()-250), 0, 250, love.window.getHeight())
        love.graphics.setColor(0, 0, 0, 200)
        love.graphics.rectangle("line", (love.window.getWidth()-250), 0, 250, love.window.getHeight())
	end
end