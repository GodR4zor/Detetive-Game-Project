-- Constants
local ID = "maria.start"

-- Dependencies
local Node = require "node"
local Choice = require "choice"

-- Create Node
local node = Node:new(ID)
node.title = "Maria Rosieli"
node.description = [[
Maria Rosieli mãe de 3 filhos, trabalha a mais de 20 anos como cozinheira chefe em um restaurante famoso no estado de São Paulo.
]]

-- Noide Choices
table.insert(node.choices, Choice:new(
    "maria_quest1.start",
    "Qual foi a primeira sala que voce visitou ao chegar ao museu?"
))

table.insert(node.choices, Choice:new(
    "maria_quest2.start",
    "Tem alguma pista que possa nos fornecer?"
))

table.insert(node.choices, Choice:new(
    "interrogate.start",
    "Voltar."
))

return node