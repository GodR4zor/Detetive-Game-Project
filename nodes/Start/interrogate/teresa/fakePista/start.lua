-- Constants
local ID = "teresa_quest3.start"

-- Dependencies
local Node = require "node"
local Choice = require "choice"

-- Create Node
local node = Node:new(ID)
node.description = [[Lembro-me de ter visto o garoto mastigando um papel de bala, sabe... ele me parece bem suspeito.]]

-- Noide Choices

table.insert(node.choices, Choice:new(
    "interrogate.start",
    "Voltar."
))

return node