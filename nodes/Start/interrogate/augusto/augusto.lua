-- Constants
local ID = "augusto.start"

-- Dependences
local Node = require "node"
local Choice = require "choice"

local node = Node:new(ID)
node.title = "Augusto Machado"
node.description = [[
Augusto é um estudante do ensino médio que sonha em ser um artista no furuto. 
Com sua mente criativa, Augusto já desenvolveu alguns projetos usando objetos 
velhos para criação de imagens artísticas.
]]

-- Node Choices
table.insert(node.choices, Choice:new(
    "augusto_quest1.start",
    "Qual foi a primeira sala que voce visitou ao chegar ao museu?"
))

table.insert(node.choices, Choice:new(
    "augusto_quest2.start",
    "Tem alguma pista que possa nos fornecer?"
))

table.insert(node.choices, Choice:new(
    "augusto_quest3.start",
    "Perguntar sobre parafusos.",
    nil,
    function ()
        return game.critical_evidence
    end
))

table.insert(node.choices, Choice:new(
    "interrogate.start",
    "Voltar."
))

return node