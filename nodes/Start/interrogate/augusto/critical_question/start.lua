-- Constants
local ID = "augusto_quest3.start"

-- Dependences
local Node = require "node"
local Choice = require "choice"

local node = Node:new(ID)
node.description = "Bem, eu vi esses parafusos cairem do bolso de um rapaz, mas nao me lembro como ele era. So sei que os sapatos dele eram caros."


table.insert(node.choices, Choice:new(
    "interrogate.start",
    "Voltar."
))

return node