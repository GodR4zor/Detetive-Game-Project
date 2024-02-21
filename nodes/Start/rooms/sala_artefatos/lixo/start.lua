-- Constants
local ID = "lixo_artefatos.start"

-- Dependencies
local Node = require "node"
local Choice = require "choice"

-- Create Node
local node = Node:new(ID)
node.title = "Lata de lixo"
node.description = "Lata de lixo localizada perto do banheiro na sala de artefatos antigos."
node.header = ""

-- Node Choices

table.insert(node.choices, Choice:new(
    "lixo_artefatos.start",
    "Evidencia: Parafusos encontrados jogados no chão ao lado da lata de lixo. Parecem ser os parafusos removidos da caixa de vidro que continha o artefato.",
    true
))

table.insert(node.choices, Choice:new(
    "lixo_artefatos.start",
    "Evidencia: Um pano com alcool jogado em uma das latas de lixo. Pode ter sido usado para cobrir impressoes digitais.",
    true,
    nil,
    function ()
        game.critical_evidence = true
    end
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