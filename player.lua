player = class:new()
require "bullet"
function player:init(x, y)
  self.x = x
  self.y = y
  self.width, self.height = 20, 20
  self.bullets = {}
end
function player:update(dt)
  angle = math.atan2((cursor.y - self.y), (cursor.x - self.x))
  for i, b in ipairs(player.bullets) do
    b:update(dt)
    if b.x < 0 or b.x > w or b.y < 0 or b.y > h then table.remove(player.bullets, i) end
  end
end
function player:draw(lg)
  lg.rectangle("line", self.x, self.y, self.width, self.height)
  for i, b in ipairs(self.bullets) do
    b:draw(lg)
  end
end
function player:fire(x, y)
  table.insert(self.bullets, bullet:init(x, y, angle))
end