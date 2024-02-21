local nodeLoader = {}

local nodeDictionary = {} ---@type table
local initialNode = nil ---@type Node
local hasError = false

---Funcao que carrega o node apartir do ID
---@param path string
local function loadNodes(path)
    local sucess, nodeOrErr = pcall(function ()
        return require (path)
    end)

    if not sucess then
        warn("Tentamos acessar o node ".. path.. " mas ele nao existe!")
        hasError = true
        return
    end

    local node = nodeOrErr ---@type Node
    if nodeDictionary[node.id] ~= nil then
        warn("O node ".. path.. "ja esta registrado!")
        hasError = true
        return
    end

    nodeDictionary[node.id] = node
end

---Carrega os Nodes
function nodeLoader.loadNodes()
    nodeDictionary = {}

    -- Load inicial
    initialNode = require "nodes.menu"
    nodeDictionary[initialNode.id] = initialNode

    -- Lista de Nodes
    loadNodes("nodes.Start.start")
    loadNodes("nodes.Start.evidences.start")
    loadNodes("nodes.Start.interrogate.start")
    loadNodes("nodes.Start.rooms.start")
    loadNodes("nodes.Start.incriminate.start")

    -- Lista de Salas do Museu
    loadNodes("nodes.Start.rooms.sala_artefatos.start")
    loadNodes("nodes.Start.rooms.sala_esculturas.start")
    loadNodes("nodes.Start.rooms.sala_artes.start")

    -- Lista sala de artes
    loadNodes("nodes.Start.rooms.sala_artes.lixo.start")
    loadNodes("nodes.Start.rooms.sala_artes.magos.start")
    loadNodes("nodes.Start.rooms.sala_artes.persefone.start")
    loadNodes("nodes.Start.rooms.sala_artes.sarcofago.start")

    -- Lista sala de esculturas
    loadNodes("nodes.Start.rooms.sala_esculturas.buda.start")
    loadNodes("nodes.Start.rooms.sala_esculturas.guerreiro.start")
    loadNodes("nodes.Start.rooms.sala_esculturas.lixo.start")

    -- Lista sala de artefatos
    loadNodes("nodes.Start.rooms.sala_artefatos.disco.start")
    loadNodes("nodes.Start.rooms.sala_artefatos.dodecaedro.start")
    loadNodes("nodes.Start.rooms.sala_artefatos.lixo.start")

    -- Lista de Characters Nodes

    -- Augusto
    loadNodes("nodes.Start.interrogate.augusto.augusto")
    loadNodes("nodes.Start.interrogate.augusto.first_room.start")
    loadNodes("nodes.Start.interrogate.augusto.pista.start")
    loadNodes("nodes.Start.interrogate.augusto.critical_question.start")

    -- Carlos
    loadNodes("nodes.Start.interrogate.carlos.carlos")
    loadNodes("nodes.Start.interrogate.carlos.first_room.start")
    loadNodes("nodes.Start.interrogate.carlos.pista.start")

    -- Joana
    loadNodes("nodes.Start.interrogate.joana.joana")
    loadNodes("nodes.Start.interrogate.joana.first_room.start")
    loadNodes("nodes.Start.interrogate.joana.pista.start")

    -- Maria
    loadNodes("nodes.Start.interrogate.maria.maria")
    loadNodes("nodes.Start.interrogate.maria.first_room.start")
    loadNodes("nodes.Start.interrogate.maria.pista.start")

    -- Teresa
    loadNodes("nodes.Start.interrogate.teresa.teresa")
    loadNodes("nodes.Start.interrogate.teresa.first_room.start")
    loadNodes("nodes.Start.interrogate.teresa.pista.start")
    loadNodes("nodes.Start.interrogate.teresa.fakePista.start")

    -- Tomasso
    loadNodes("nodes.Start.interrogate.tomasso.tomasso")
    loadNodes("nodes.Start.interrogate.tomasso.first_room.start")
    loadNodes("nodes.Start.interrogate.tomasso.pista.start")

    -- Vitoria e Derrota
    loadNodes("nodes.Start.incriminate.victory.start")
    loadNodes("nodes.Start.incriminate.defeat.start")
    -- Valids Nodes
    for id, node in pairs(nodeDictionary) do
       for _, choice in pairs(node.choices) do
            local destinationID = choice.destination
            local destinationNode = nodeDictionary[destinationID]
            if destinationNode == nil then
                warn(string.format("Uma das escolhas do node %s, tem um destino invalido %s", node.id, destinationID))
                hasError = true
            end
       end 
    end

end

---Retorna a lista de Nodes
---@return table
function nodeLoader.getNodeTable()
    return nodeDictionary
end

---Retorna o node
---@param nodeID string
---@return table
function nodeLoader.getNode(nodeID)
    return nodeDictionary[nodeID]
end

---Retorna o node inicial
---@return Node
function nodeLoader.getInitialNode()
    return initialNode
end

function nodeLoader.error()
    return hasError
end

return nodeLoader