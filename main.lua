function love.load(arg)
  if arg[#arg] == "-debug" then require("mobdebug").start() end
  require("class")
  require ("player")
  require("cursor")
  player:init(love.graphics.getWidth() / 2, love.graphics.getHeight() * (3/4))
  cursor:init(0,0)
end
function love.update(dt)
  player:update(dt)
  cursor:update(dt)
end
function love.draw()
  love.graphics.setColor(255,255,255)
  love.graphics.rectangle("line", player.x, player.y, player.width, player.height)
  love.graphics.circle("fill", cursor.x, cursor.y, cursor.radius)

end