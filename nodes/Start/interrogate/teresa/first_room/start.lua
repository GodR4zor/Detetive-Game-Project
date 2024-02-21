-- Constants
local ID = "teresa_quest1.start"

-- Dependencies
local Node = require "node"
local Choice = require "choice"

-- Create Node
local node = Node:new(ID)
node.description = "“Lembro de ser a sala de esculturas antigas, e impressionante pensar que aquelas obras foram criadas a tanto tempo...”"

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