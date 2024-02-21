-- Constants
local ID = "interrogate.start"

-- Dependencies
local Node = require "node"
local Choice = require "choice"

-- Create Node
local node = Node:new(ID)
node.title = "Interrogatorio"
node.description = "Qual dos suspeitos deseja interrogar?"
node.header = [[%{red}
                                                            
                  @@@@@@@               
               @@@@@@@@@@@@@            
              @@@@       @@@@           
             @@@@         @@@           
                         @@@@           
                       @@@@@            
                     @@@@@              
                   @@@@                 
                   @@@                  
                                        
                   @@@                  
                   @@@  

]]

-- Node Choices
table.insert(node.choices, Choice:new(
    "joana.start",
    "Interrogar Joana d'arc"
))

table.insert(node.choices, Choice:new(
    "carlos.start",
    "Interrogar Carlos Mendes"
))

table.insert(node.choices, Choice:new(
    "teresa.start",
    "Interrogar Dona Teresa"
))

table.insert(node.choices, Choice:new(
    "augusto.start",
    "Interrogar Augusto Machado"
))

table.insert(node.choices, Choice:new(
    "tomasso.start",
    "Interrogar Tomasso"
))

table.insert(node.choices, Choice:new(
    "maria.start",
    "Interrogar Maria Rosieli"
))

-- Voltar para sala principal
table.insert(node.choices, Choice:new(
    "start",
    "Voltar para a sala principal."
))

return node