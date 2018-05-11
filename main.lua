function love.load(arg)
  if arg[#arg] == "-debug" then require("mobdebug").start() end
  w, h = love.graphics.getDimensions()
  require "class"
  require "cursor"
  require "player"
  
  player:init(w / 2, h * (3/4))
  cursor:init(0,0)
end
function love.update(dt)
  player:update(dt)
  cursor:update(dt)
end
function love.draw()
  local lg = love.graphics
  lg.setColor(255,255,255)
  player:draw(lg)
  cursor:draw(lg)
end
function love.mousepressed(x, y, button)
  if button == 1 then
		player:fire(x, y)
	end
end