-- Constants
local ID = "maria_quest2.start"

-- Dependencies
local Node = require "node"
local Choice = require "choice"

-- Create Node
local node = Node:new(ID)
node.description = "“Não notei nada suspeito, pergunte a aquele rapaz que se parece com um empressario, ele parece saber alguma coisa.”"

-- Node Choices

table.insert(node.choices, Choice:new(
    "maria.start",
    "Voltar"
))

table.insert(node.choices, Choice:new(
    "start",
    "Voltar para a sala principal."
))

return node