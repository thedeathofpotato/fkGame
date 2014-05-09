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
    lFs = windowWidth / 20
    mFs = windowWidth / 30
    sFs = windowWidth / 40
    tFs = windowWidth / 85

    wTenth = windowWidth / 10
end

function love.draw()

	if gamestate == 0 then

        love.mouse.setVisible(true)

        -- Draw background
        love.graphics.setColor(255, 255, 255, 255)
        love.graphics.draw(bg, 0, 0, 0, windowWidth / bg:getWidth(), windowHeight / bg:getHeight())
        love.graphics.setColor(0, 0, 0, 255)

		-- title
		love.graphics.setNewFont(sourceCodePro, lFs)
    	love.graphics.printf('Blahblahblah', 0, 30, windowWidth, "center")
	
    	-- enum
    	local yDist = windowHeight / 4
    	local eDotDist = windowWidth / 30

    	love.graphics.setNewFont(droidSans, sFs)
    	love.graphics.print(">", wTenth - eDotDist, yDist)
    	love.graphics.printf("Ein erster Stichpunkt", wTenth, yDist, windowWidth - 2 * wTenth)
    	yDist = yDist + sFs * 2
    	love.graphics.print(">", wTenth - eDotDist, yDist)
    	love.graphics.printf("Noch einer", wTenth, yDist, windowWidth - 2 * wTenth)
    	yDist = yDist + sFs * 2
    	love.graphics.print(">", wTenth - eDotDist, yDist)
    	love.graphics.printf("Ich bin die drei!!!!111einself", wTenth, yDist, windowWidth - 2 * wTenth)
    	yDist = yDist + sFs * 2
    	love.graphics.print(">", wTenth - eDotDist, yDist)
    	love.graphics.printf("Der vierte von fünf..", wTenth, yDist, windowWidth - 2 * wTenth)
    	yDist = yDist + sFs * 2
    	love.graphics.print(">", wTenth - eDotDist, yDist)
    	love.graphics.printf("Der letzte.", wTenth, yDist, windowWidth - 2 * wTenth)
	end
end