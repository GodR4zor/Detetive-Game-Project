-- Constants
local ID = "teresa_quest2.start"

-- Dependencies
local Node = require "node"
local Choice = require "choice"

-- Create Node
local node = Node:new(ID)
node.description = "“Lembro-me de ver o garoto meio nervoso, ele mastigava muito rapido, acho que deveriam investiga-lo.”"

-- Node Choices


table.insert(node.choices, Choice:new(
    "teresa.start",
    "Voltar"
))

table.insert(node.choices, Choice:new(
    "start",
    "Voltar para a sala principal."
))

return node