-- Constants
local ID = "maria_quest1.start"

-- Dependencies
local Node = require "node"
local Choice = require "choice"

-- Create Node
local node = Node:new(ID)
node.description = "“E minha primeira vez no museu, entrei pela sala de esculturas, nunca tinha visto esculturas tao bonitas.”"

-- Node Choices


table.insert(node.choices, Choice:new(
    "maria.start",
    "Voltar"
))

table.insert(node.choices, Choice:new(
    "start",
    "Voltar para a sala principal."
))

return node