-- Constants
local ID = "persefone.start"

-- Dependences
local Node = require "node"
local Choice = require "choice"

-- Object
local node = Node:new(ID)
node.title = "O Rapto de Persefone"
node.description = [[Hades, deus do mundo subterrâneo e soberano dos mortos, carrega a jovem Perséfone, filha de Deméter, 
em sua carruagem. O anônimo autor desta bela cena, pintada na parede de um dos túmulos reais de Vergina, 
recorreu à perspectiva para tentar produzir efeito espacial (roda da carruagem) e 
ao jogo de sombras para dar a impressão de volume (face de Hades, vestes de Perséfone).]]
node.header =  ""


table.insert(node.choices, Choice:new(
    "persefone.start",
    "Evidencia: Luvas de borrachas descartáveis de tamanho grande.",
    true
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
