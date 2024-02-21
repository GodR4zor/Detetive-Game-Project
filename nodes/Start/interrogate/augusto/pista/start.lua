-- Constants
local ID = "augusto_quest2.start"

-- Dependencies
local Node = require "node"
local Choice = require "choice"

-- Create Node
local node = Node:new(ID)
node.description = "“Bem assim que entrei o artefato estava em seu lugar, ele deve ter sido roubado depois que eu sai da sala.”"

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