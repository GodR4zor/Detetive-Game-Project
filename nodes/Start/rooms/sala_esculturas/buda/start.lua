-- Constants
local ID = "buda.start"

-- Dependencies
local Node = require "node"
local Choice = require "choice"

-- Create Node
local node = Node:new(ID)
node.title = "Escultura de Buda"
node.description = "Escultura moderna de Buda."
node.header = ""

-- Node Choices

table.insert(node.choices, Choice:new(
    "sala_esculturas.start",
    "Voltar para sala de esculturas."
))

table.insert(node.choices, Choice:new(
    "start",
    "Voltar para a sala principal."
))

return node