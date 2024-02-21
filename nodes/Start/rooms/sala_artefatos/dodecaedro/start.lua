-- Constants
local ID = "dodecaedro.start"

-- Constants
local ID = "dodecaedro.start"

-- Dependencies
local Node = require "node"
local Choice = require "choice"

-- Create Node
local node = Node:new(ID)
node.title = "O dodecaedro romano"
node.description = [[
Em vários pontos do continente europeu foram encontrados exemplares desse objeto, formado por 12 faces pentagonais 
planas com cavidades circular no centro e pequenos botões nos ângulos. A versão mais comum é feita de bronze, embora 
também existam algumas feitas de pedra.
]]
node.header = [[
%{red}
      _----------_,
    ,"__         _-:, 
   /    ""--_--""...:\
  /         |.........\
 /          |..........\
/,         _'_........./:
! -,    _-"   "-_... ,;;:
\   -_-"         "-_/;;;;
 \   \             /;;;;'
  \   \           /;;;;
   '.  \         /;;;'
     "-_\_______/;;'
]]
-- Node Choices


table.insert(node.choices, Choice:new(
    "sala_artefatos.start",
    "Voltar para sala de artefatos."
))

table.insert(node.choices, Choice:new(
    "start",
    "Voltar para a sala principal."
))

return node