-- Constants
local ID = "tomasso_quest1.start"

-- Dependencies
local Node = require "node"
local Choice = require "choice"

-- Create Node
local node = Node:new(ID)
node.description = "“Assim que cheguei ao museu fui diretamente para a sala de artefatos antigos, alias, aquele dodecaedro e impressionante.”"

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