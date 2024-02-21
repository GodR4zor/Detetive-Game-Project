-- Constants
local ID = "defeat.start"

-- Dependencies
local Node = require "node"
local Choice = require "choice"

-- Create Node
---@class Node
local node = Node:new(ID)
node.description = "Voce incriminou a pessoa errada, o verdadeiro ladrao conseguiu fugir com as joias sem levantar suspeita."
node.gameOver = true

return node