-- Constants
local ID = "magos.start"

-- Dependences
local Node = require "node"
local Choice = require "choice"

-- Object
local node = Node:new(ID)
node.title = "Adoracao dos Reis Magos"
node.description = [[
A Adoração dos Magos'de Botticelli destaca-se por sua beleza estética, com cores vibrantes e detalhes finos.
A composição inclui várias figuras, incluindo os Reis Magos ajoelhados diante do Menino Jesus, Maria e José. 
O uso magistral das cores e a atenção aos detalhes são características típicas do estilo de Botticelli, que é 
conhecido por suas obras delicadas e expressivas.    
]]
node.header =  ""


table.insert(node.choices, Choice:new(
    "magos.start",
    "Evidencia: Papel de bala jogado no chão.",
    true,
    nil,
    function ()
        game.fakeEvidence = true
    end
))

table.insert(node.choices, Choice:new(
    "artes.start",
    "Voltar para a sala de artes."
))

table.insert(node.choices, Choice:new(
    "start",
    "Voltar para a sala principal."
))

return node

