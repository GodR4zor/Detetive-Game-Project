-- Constants
local ID = "tomasso.start"

-- Dependencies
local Node = require "node"
local Choice = require "choice"

-- Create Node
local node = Node:new(ID)
node.title = "Tomasso"
node.description = [[
Tomasso de nacionalidade Italiana é formado na universidade Sapienza em arquitetura. 
Tomasso adora visitar outros países para ter uma visão nova e diferente na hora de trabalhar em seus projetos.
]]

-- Noide Choices
table.insert(node.choices, Choice:new(
    "tomasso_quest1.start",
    "Qual foi a primeira sala que voce visitou ao chegar ao museu?"
))

table.insert(node.choices, Choice:new(
    "tomasso_quest2.start",
    "Tem alguma pista que possa nos fornecer?"
))

table.insert(node.choices, Choice:new(
    "interrogate.start",
    "Voltar."
))


return node