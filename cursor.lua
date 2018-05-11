local m = love.mouse
cursor = class:new()
function cursor:init(x, y)
  m.setVisible(false)
  self.x = x
  self.y = y
  self.radius = 1
end
function cursor:update(dt)
  self.x, self.y = love.mouse.getPosition()
end
function cursor:draw(lg)
  lg.circle("fill", cursor.x, cursor.y, cursor.radius)
end