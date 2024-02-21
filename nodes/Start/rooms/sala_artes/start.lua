-- Constants
local ID = "artes.start"

-- Dependencies
local Node = require "node"
local Choice = require "choice"

-- Create Node
local node = Node:new(ID)
node.title = "Sala de Artes"
node.description = "Sala composta pelas mais belas artes das idades: Media, Moderna e Contemporânea."
node.header = [[%{red}
    |.----------------------.|
    ||                      ||
    ||                      ||
    ||     .-"````"-.       ||
    ||    /  _.._    `\     ||
    ||   / /`    `-.   ; . .||
    ||   | |__  __  \   |   ||
    ||.-.| | e`/e`  |   |   ||
    ||   | |  |     |   |'--||
    ||   | |  '-    |   |   ||
    ||   |  \ --'  /|   |   ||
    ||   |   `;---'\|   |   ||
    ||   |    |     |   |   ||
    ||   |  .-'     |   |   ||
    ||'--|/`        |   |--.||
    ||   ;    .     ;  _.\  ||
    ||    `-.;_    /.-'     ||
    ||         ````         ||
    ||jgs___________________||
    '------------------------'
]]

-- Node Choices

table.insert(node.choices, Choice:new(
    "sarcofago.start",
    "Investigar pintura: Sarcofago das Amazonas."
))

table.insert(node.choices, Choice:new(
    "persefone.start",
    "Investigar pintura: O Rapto de Persefone."
))

table.insert(node.choices, Choice:new(
    "magos.start",
    "Investigar pintura: Adoração dos Reis Magos."
))

table.insert(node.choices, Choice:new(
    "lixo_artes.start",
    "Investigar lata de lixo."
))

table.insert(node.choices, Choice:new(
    "start",
    "Voltar para a sala principal."
))

return node