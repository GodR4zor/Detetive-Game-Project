-- Constants
local ID = "guerreiro.start"

-- Dependencies
local Node = require "node"
local Choice = require "choice"

-- Create Node
local node = Node:new(ID)
node.title = "Escultura Cavaleiro"
node.description = "Detalhe do Cavaleiro Rampin, com o sorriso característico do período arcaico, c. 550 a.C. Museu da Acrópole de Atenas."
node.header = ""

-- Node Choices

table.insert(node.choices, Choice:new(
    "guerreiro.start",
    "Evidencia: Uma chave de fenda pequena encontrada atras de uma das esculturas, que pode ter sido usada para abrir algum compartimento fechado.",
    true
))

table.insert(node.choices, Choice:new(
    "sala_esculturas.start",
    "Voltar para sala de esculturas."
))

table.insert(node.choices, Choice:new(
    "start",
    "Voltar para a sala principal."
))

return node