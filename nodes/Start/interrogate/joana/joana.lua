-- Constants
local ID = "joana.start"

-- Dependencies
local Node = require "node"
local Choice = require "choice"

-- Create Node
local node = Node:new(ID)
node.title = "Joana d'arc"
node.description = [[
Joana estuda filosofia em uma das faculdades mais renomadas do Brasil a USP. 
Além de sua paixão por filosofia Joana também é escritora nas horas livres tendo 
escrito um livro sobre questões sociais.
]]

-- Node Choices
table.insert(node.choices, Choice:new(
    "joana_quest1.start",
    "Qual foi a primeira sala que voce visitou ao chegar ao museu?"
))

table.insert(node.choices, Choice:new(
    "joana_quest2.start",
    "Tem alguma pista que possa nos fornecer?"
))

table.insert(node.choices, Choice:new(
    "interrogate.start",
    "Voltar."
))

return node