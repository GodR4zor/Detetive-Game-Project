-- Constants
local ID = "joana_quest2.start"

-- Dependencies
local Node = require "node"
local Choice = require "choice"

-- Create Node
local node = Node:new(ID)
node.description = "“Não fiquei prestando atenção em ninguém, tem tantas obras incríveis neste lugar.”"

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