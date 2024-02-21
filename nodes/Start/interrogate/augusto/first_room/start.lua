-- Constants
local ID = "augusto_quest1.start"

-- Dependencies
local Node = require "node"
local Choice = require "choice"

-- Create Node
local node = Node:new(ID)
node.description = "“Entrei pela sala de artefatos antigos senhor, aqueles artefatos devem valer muito.”"

-- Node Choices


table.insert(node.choices, Choice:new(
    "augusto.start",
    "Voltar"
))

table.insert(node.choices, Choice:new(
    "start",
    "Voltar para a sala principal."
))

return node