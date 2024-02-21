-- Constants
local ID = "incriminate.start"

-- Dependencies
local Node = require "node"
local Choice = require "choice"

-- Create Node
---@class Node
local node = Node:new(ID)
node.title = "Incriminar Suspeito"
node.description = "Qual dos suspeitos deseja incriminar?"
node.header = [[%{red}
    ,   /\   ,
    / '-'  '-' \
   |   POLICE   |
   \    .--.    /
    |  ( 19 )  |
    \   '--'   /
     '--.  .--'
         \/
]]

-- Dona Teresa
table.insert(node.choices, Choice:new(
    "defeat.start",
    "Incriminar Dona Teresa."
))

-- Augusto Machado
table.insert(node.choices, Choice:new(
    "defeat.start",
    "Incriminar Augusto Machado."
))

-- Carlos Mendes
table.insert(node.choices, Choice:new(
    "victory.start",
    "Incriminar Carlos Mendes."
))

-- Joana d'Arc
table.insert(node.choices, Choice:new(
    "defeat.start",
    "Incriminar Joana d'Arc"
))

-- Tommaso
table.insert(node.choices, Choice:new(
    "defeat.start",
    "Incriminar Tommaso."
))

-- Maria Rosieli
table.insert(node.choices, Choice:new(
    "defeat.start",
    "Incriminar Maria Rosieli."
))

-- Voltar para a sala principal
table.insert(node.choices, Choice:new(
    "start",
    "Voltar para a sala principal."
))

return node