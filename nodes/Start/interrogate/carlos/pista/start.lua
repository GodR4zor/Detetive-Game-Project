-- Constants
local ID = "carlos_quest2.start"

-- Dependencies
local Node = require "node"
local Choice = require "choice"

-- Create Node
local node = Node:new(ID)
node.description = "“Nao vi nada fora do normal, encontrei-me com uma mulher em uma das sala, ela parecia nervosa e carregava uma grande bolsa, achei suspeito.”"

-- Node Choices

table.insert(node.choices, Choice:new(
    "carlos.start",
    "Voltar"
))

table.insert(node.choices, Choice:new(
    "start",
    "Voltar para a sala principal."
))

return node