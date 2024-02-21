-- Dependences
local GameData = require "gamedata"
local NodeLoader = require "node_loader"
local Engine = require "engine"
local Utils = require "utils"

-- Enable Warnings
warn("@on")

-- Enable UTF-8
Utils.enableUTF8()

-- GameData
local gameData = GameData:new() ---@type GameData
_G.game = gameData

-- Load Nodes
NodeLoader.loadNodes()
game.activeNode = NodeLoader.getInitialNode()

if NodeLoader.error() then
    print("Error has found!")
    os.exit()
end

-- Start Engine
local engine = Engine:new() ---@type Engine
engine:runMainLoop()
