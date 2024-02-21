-- Constants
local ID = "joana_quest1.start"

-- Dependencies
local Node = require "node"
local Choice = require "choice"

-- Create Node
local node = Node:new(ID)
node.description = "“A primeira sala que visitei ao chegar ao museu foi a Sala de Artefatos antigos, ja viu as coisas que tem la? E demais!!!”"

-- Node Choices


table.insert(node.choices, Choice:new(
    "joana.start",
    "Voltar"
))

table.insert(node.choices, Choice:new(
    "start",
    "Voltar para a sala principal."
))

return node