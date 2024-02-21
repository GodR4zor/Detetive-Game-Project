local ansicolorsx = require "libs.ansicolorx"
local Class = require "libs.middleclass"
local NodeLoader = require "node_loader"
local Evidences = require "nodes.Start.evidences.start"
local utils     = require "utils"

---@class Engine
local Engine = Class("Engine")

local function changeColor(choice)
    if choice.evidence == true then
        return ansicolorsx(string.format("%s%s", "%{yellow}",choice.description))
    end

    return choice.description
end

local function print(...)
    _G.print(ansicolorsx(...))
end

local function iowrite(...)
    io.write(ansicolorsx(...))
end

function Engine:initialize()

end

function Engine:runMainLoop()

    -- Loop principal
    while not game.isOver do

        -- Get Active Node
        local node = game.activeNode

        -- Limpar o terminal
        utils.clearScreen()
        -- TODO

        -- Printar Node
        self:printNode(node)
        
        -- Processa o fim do jogo
       if node.gameOver then
            print()
            print("%{red}======== GAME OVER ========")
            print()
            os.exit()
       elseif node.gameWon then
            print()
            print("%{green}======= VOCE VENCEU O JOGO! =======")
            print()
            os.exit()
       end

        -- Obter escolhas válidas
        local validChoices = self:getValidChoices(node)

        -- Mostrar Escolhas
        self:showChoices(validChoices)

        -- Perguntar pro usuário
        local choiceIndex = self:getChoice(#validChoices)
        local choice = validChoices[choiceIndex]

        -- Executa a evidencia caso exista.
        self:getEvidence(choice)

        -- Executa rotina caso exista.
        self:runRoutine(choice)

        -- Avança pro próximo NODE
        local destinationID = choice.destination
        local destinationNode = NodeLoader.getNode(destinationID)
        game.activeNode = destinationNode
        

        -- TODO condições de vitória e derrota
    end

end

---@param node Node
function Engine:printNode(node)
    if node.header then
        print(node.header)
    
    elseif node.gameOver then
        print(utils.gameOverHeader())

    elseif node.gameWon then
        print(utils.gameWonHeader())
    end

    if node.title then
        print(string.format("%%{white}━━━━━━━━━━━━━━━━━━━━━━━ 「%%{yellow}%s」 %%{white}━━━━━━━━━━━━━━━━━━━━━━━", node.title:upper()))
    else
        print("%{white}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━✦✗✦━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━")
    end
    
    print(node.description)
    print("━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━✦✗✦━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━")
end

---@param node Node
---@return Choice[]
function Engine:getValidChoices(node)
    local result = {}
    for _, choice in pairs(node.choices) do
        if (not choice:hasCondition()) or (choice:hasCondition() and choice:runCondition()) then
            table.insert(result, choice)
        end
    end
    return result
end

---@param choices Choice[]
function Engine:showChoices(choices)
    for i, choice in pairs(choices) do
        print(string.format("(%d) : %s", i, changeColor(choice)))
    end
end

--- Recebe um numero de escolhas e retorna a escolha do usuário
---@param amount number
function Engine:getChoice(amount)
    while true do
        iowrite("%{blue}=> ")
        local answer = io.read("*number") or io.read()
        if type(answer) == "number" then
            local validAnswer = answer ~= nil and answer >= 1 and answer <= amount

            if validAnswer then return answer end
        end
        print("%{red}Escolha inválida. Tente novamente!")
    end
end

function Engine:getEvidence(choice)
    if choice.evidence == true then
        local dontHaveEvidence = Evidences:dontHaveEvidence(choice)
        if not dontHaveEvidence then
            table.insert(Evidences.choices, choice)
        end
    end
end

function Engine:runRoutine(choice)
    if choice.routine ~= nil then
        return choice.routine()
    end
end

return Engine