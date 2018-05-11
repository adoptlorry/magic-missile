bullet = class:new()

function bullet:init(x, y, angle)
  self.x = x
  self.y = y
  self.d = {x = 2 * math.cos(angle),
            y = 2 * math.sin(angle)}
  self.radius = 5
  return bullet
end
function bullet:update(dt)
  self.x = self.x + (self.d.x)
  self.y = self.y + (self.d.y)
end
function bullet:draw(lg)
  lg.setColor(255,255,255)
  lg.circle("fill", self.x, self.y, self.radius)
end