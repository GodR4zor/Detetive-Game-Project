-- Constants
local ID = "lixo_esculturas.start"

-- Dependencies
local Node = require "node"
local Choice = require "choice"

-- Create Node
local node = Node:new(ID)
node.title = "Lata de Lixo"
node.description = "Lata de lixo localizada no canto direito da sala de esculturas."
node.header = ""

-- Node Choices

table.insert(node.choices, Choice:new(
    "lixo_esculturas.start",
    "Evidencia: Uma foto da relíquia roubada encontrada jogada na lata de lixo. Atrás da foto encontra-se um mapa com os locais do museu e, um “x” marcado no local de uma exposição na sala de artefatos.",
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