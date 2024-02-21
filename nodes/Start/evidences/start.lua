-- Constants
local ID = "evidences.start"

-- Dependencies
local Node = require "node"
local Choice = require "choice"

-- Create Node
---@class Node
local node = Node:new(ID)
node.title = "Sala de Evidencias"
node.description = "Qual informacao deseja analisar?"
node.header = [[%{red}

               @@@@@@@@@@@@       
            @@@@@@@@@@@@@@@@@     
          @@@@@@@       @@@@@@@   
         @@@@@  @@@@@@@@@  @@@@@@ 
        @@@@@ @@@@@@@@@@@    @@@@ 
       @@@@@ @@@@             @@@@
       @@@@  @@@              @@@@
       @@@@                   @@@@
       @@@@@                  @@@@
        @@@@                 @@@@@
        @@@@@               @@@@@ 
        @@@@@@@           @@@@@@  
      @@@@@@@@@@@@@   @@@@@@@@@   
    @@@@@@@@@@@@@@@@@@@@@@@@      
   @@@@@@@@@     @@@@@@@          
 @@@@@@@@@                        
 @@@@@@@                          
 @@@@@@  

]]

function node:dontHaveEvidence(newChoice)
    for _, choice in pairs(self.choices) do
        if choice.description == newChoice.description then
            return true
        end
    end
end

-- Voltar para a sala principal
table.insert(node.choices, Choice:new(
    "start",
    "Voltar para a sala principal."
))

return node