-- Constants
local ID = "victory.start"

-- Dependencies
local Node = require "node"
local Choice = require "choice"

-- Create Node
---@class Node
local node = Node:new(ID)
node.description = [[%{green}
Voce encontrou o verdadeiro culpado, Carlos se ve desesperado tentando achar uma forma de fugir da situacao. Nao ha mais para onde correr...
Carlos se ve no fim do tuneo e tenta ataca-lo mas e detido e acaba confessando o crime. O artefato e encontrado perto da tubulacao de ar bem escondido.Constants

Obrigado por jogar, espero que tenha se divertido bastante!
]]
node.gameWon = true

return node