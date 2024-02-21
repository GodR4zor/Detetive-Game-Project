-- Constants
local ID = "carlos_quest1.start"

-- Dependencies
local Node = require "node"
local Choice = require "choice"

-- Create Node
local node = Node:new(ID)
node.description = "“A primeira sala que visitei foi a sala de artes, aquelas pinturas sao reliquias do passado.”"

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