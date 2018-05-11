cursor = class:new()

function cursor:init(x, y)
  love.mouse.setVisible(false)
  self.x = x
  self.y = y
  self.radius = 1
end
function cursor:update(dt)
  self.x, self.y = love.mouse.getPosition()
end