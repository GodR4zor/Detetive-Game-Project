local Class = require "libs.middleclass"

---@class GameData
local GameData = Class("GameData")

function GameData:initialize()
    self.activeNode = nil
    self.isOver = nil
    self.evidences = {}
    self.banana = false
    self.critical_evidence = false ---@type boolean
    self.fakeEvidence = false ---@type boolean
end

return GameData