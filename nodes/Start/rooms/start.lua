-- Constants
local ID = "rooms.start"

-- Dependencies
local Node = require "node"
local Choice = require "choice"

-- Create Node
local node = Node:new(ID)
node.title = "Mapa do Museu"
node.description = "Qual sala deseja investigar?"
node.header = [[
%{red}
▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃
│                    │                        │
│                    │                        │
│ Sala de Esculturas │    Sala de Artefatos   │
│                    │                        │
│                    │                        │
│                    │                        │
▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃
        │                        │
        │                        │
        │      Sala de Artes     │
        │                        │
        │                        │
        │                        │
        ▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃

]]

-- Node Choices
table.insert(node.choices, Choice:new(
    "artes.start",
    "Investigar a sala de artes."
))

table.insert(node.choices, Choice:new(
    "sala_esculturas.start",
    "Investigar a sala de esculturas."
))

table.insert(node.choices, Choice:new(
    "sala_artefatos.start",
    "Investigar a sala de artefatos antigos."
))

-- Voltar para a sala principal
table.insert(node.choices, Choice:new(
    "start",
    "Voltar para a sala principal."
))

return node