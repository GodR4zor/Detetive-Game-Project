-- Constants
local ID = "tomasso_quest2.start"

-- Dependencies
local Node = require "node"
local Choice = require "choice"

-- Create Node
local node = Node:new(ID)
node.description = "“Para falar a verdade eu não vi nada muito suspeito, bem… Acho que aquela garota estava animada até demais.”"

-- Node Choices

table.insert(node.choices, Choice:new(
    "tomasso.start",
    "Voltar"
))

table.insert(node.choices, Choice:new(
    "start",
    "Voltar para a sala principal."
))

return node