-- Constants
local ID = "disco.start"

-- Dependencies
local Node = require "node"
local Choice = require "choice"

-- Create Node
local node = Node:new(ID)
node.title = "O disco de Festos"
node.description = [[Ao sul da ilha de Creta, estão as ruínas do palácio minoico de Festos. 
Em 1908, o arqueólogo italiano Luigi Pernier encontrou ali um disco de argila que 
até hoje intriga especialistas e gera polêmica.]]
node.header = ""

-- Node Choices

table.insert(node.choices, Choice:new(
    "disco.start",
    "Evidencia: Papel toalha com impressões digitais encontrados em cima do vidro de uma das exposições.",
    true
))

table.insert(node.choices, Choice:new(
    "sala_artefatos.start",
    "Voltar para sala de artefatos."
))

table.insert(node.choices, Choice:new(
    "start",
    "Voltar para a sala principal."
))

return node