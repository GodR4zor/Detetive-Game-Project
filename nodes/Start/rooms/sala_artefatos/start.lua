-- Constants
local ID = "sala_artefatos.start"

-- Dependencies
local Node = require "node"
local Choice = require "choice"

-- Create Node
local node = Node:new(ID)
node.title = "Sala de Artefatos Antigos"
node.description = [[
Uma sala com artefatos desconhecidos pela maioria da população que pode ter pertencido a uma civilização antiga.
]]
node.header = [[%{red}

    |\                     /)
    /\_\\__               (_//
   |   `>\-`     _._       //`)
    \ /` \\  _.-`:::`-._  //
     `    \|`    :::    `|/
           |     :::     |
           |.....:::.....|
           |:::::::::::::|
           |     :::     |
           \     :::     /
            \    :::    /
             `-. ::: .-'
              //`:::`\\
             //   '   \\
            |/         \\

]]

-- Node Choices

table.insert(node.choices, Choice:new(
    "disco.start",
    "Investigar artefato: O disco de Festos."
))

table.insert(node.choices, Choice:new(
    "dodecaedro.start",
    "Investigar escultura: O dodecaedro romano."
))

table.insert(node.choices, Choice:new(
    "lixo_artefatos.start",
    "Investigar lata de lixo."
))

table.insert(node.choices, Choice:new(
    "start",
    "Voltar para a sala principal."
))

return node