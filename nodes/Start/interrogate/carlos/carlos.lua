-- Constants
local ID = "carlos.start"

-- Dependencies
local Node = require "node"
local Choice = require "choice"

-- Create Node
local node = Node:new(ID)
node.title = "Carlos Mendes"
node.description = [[
Carlos Mendes é um contador talentoso que trabalha para uma empresa alimentícia no estado de Goias. 
Com uma mente analítica, Carlos é capaz de resolver muitos problemas complexos com relação aos ganhos 
e gastos da empresa em que trabalha. 
]]

-- Node Choices
table.insert(node.choices, Choice:new(
    "carlos_quest1.start",
    "Qual foi a primeira sala que voce visitou ao chegar ao museu?"
))

table.insert(node.choices, Choice:new(
    "carlos_quest2.start",
    "Tem alguma pista que possa nos fornecer?"
))

table.insert(node.choices, Choice:new(
    "interrogate.start",
    "Voltar."
))

return node