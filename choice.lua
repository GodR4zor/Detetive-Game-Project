local Class = require "libs.middleclass"

---@class Choice
local Choice = Class("Choice")

function Choice:initialize(destination, description, evidence, condition, routine)
    self.destination = destination ---@type string
    self.description = description ---@type string
    self.evidence = evidence ---@type boolean
    self.condition = condition ---@type fun():boolean
    self.routine = routine ---@type function
    
end

function Choice:hasCondition()
    return self.condition ~= nil
end

---@return boolean
function Choice:runCondition()
    if self.condition ~= nil and type(self.condition) == "function" then
        return self.condition()
    end
    return true
end

return Choice