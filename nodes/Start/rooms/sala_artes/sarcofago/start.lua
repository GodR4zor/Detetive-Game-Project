-- Constants
local ID = "sarcofago.start"

-- Dependences
local Node = require "node"
local Choice = require "choice"

-- Object
local node = Node:new(ID)
node.title = "Sarcofago das Amazonas"
node.description = "Pintura da Grecia antiga de aproximadamente 350-325 a.C."
node.header =  ""


table.insert(node.choices, Choice:new(
    "sarcofago.start",
    "Evidencia: Um cartão com as letras AM escritas.",
    true
))

table.insert(node.choices, Choice:new(
    "artes.start",
    "Voltar para a sala de artes."
))

table.insert(node.choices, Choice:new(
    "start",
    "Voltar para a sala principal."
))

return node

