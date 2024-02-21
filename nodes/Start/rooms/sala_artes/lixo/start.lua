-- Constants
local ID = "lixo_artes.start"

-- Dependences
local Node = require "node"
local Choice = require "choice"

-- Object
local node = Node:new(ID)
node.title = "Lata de Lixo"
node.description = "Lata de lixo localizada no canto esquerdo da sala de artes."
node.header =  ""

table.insert(node.choices, Choice:new(
    "artes.start",
    "Voltar para a sala de artes."
))

table.insert(node.choices, Choice:new(
    "start",
    "Voltar para a sala principal."
))

return node
