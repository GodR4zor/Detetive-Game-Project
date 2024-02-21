-- Constants
local ID = "teresa.start"

-- Dependencies
local Node = require "node"
local Choice = require "choice"

-- Create Node
local node = Node:new(ID)
node.title = "Dona Teresa"
node.description = [[
Aposentada e milionaria, Dona Teresa é CEO de uma loja de roupas famosa na cidade de São Paulo. 
Dona Teresa é uma especialista quando se trata de vendas, adora criar modelos diferentes de roupas que ela acredita ser tendencia.
]]

-- Noide Choices
table.insert(node.choices, Choice:new(
    "teresa_quest1.start",
    "Qual foi a primeira sala que voce visitou ao chegar ao museu?"
))

table.insert(node.choices, Choice:new(
    "teresa_quest2.start",
    "Tem alguma pista que possa nos fornecer?"
))

table.insert(node.choices, Choice:new(
    "teresa_quest3.start",
    "Perguntar sobre papel de bala.",
    false,
    function ()
        return game.fakeEvidence
    end
))

table.insert(node.choices, Choice:new(
    "interrogate.start",
    "Voltar."
))

return node