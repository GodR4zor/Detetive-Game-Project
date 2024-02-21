-- Constants
local ID = "start"

-- Dependencies
local Node = require "node"
local Choice = require "choice"
local Evidences = require "nodes.Start.evidences.start"

-- Create Node
local node = Node:new(ID)
node.title = "Sala Principal"
node.description = "Uma joia preciosa sumiu da sala de artefatos antigos. O que deseja investigar?"
node.header = [[
%{red}
                  M
                 ' `
                |  :|`-._
                |  :|`-._`-._
               /   ::\   `-._`-._
              /     ::\      `-(_)
             |_________|      / /
                 `-'         / /
                            / /
                           / /
                          / /
         ________________/ _&_______
        /8P'             `'    Y888/
       /P'        ____________  Y8/
      /'  /\     /           /   /
     /  . \ \   /           /   /
    /  //  \ \ /           /   /
   /  //    \ \___________/   /
  / ///      \ \       __    /
 /8 `'        \/      /_/  ./
/88b.____________________.8/
]]

-- Node Choices
table.insert(node.choices, Choice:new(
    "interrogate.start",
    "Interrogar os visitantes do museu."
))

table.insert(node.choices, Choice:new(
    "rooms.start",
    "Investigar as salas do museu."
))

table.insert(node.choices, Choice:new(
    "evidences.start",
    "Ir para a sala de evidencias"
))

table.insert(node.choices, Choice:new(
    "incriminate.start",
    "Julgamento final.",
    nil,
    function()
        return #Evidences.choices >= 4
    end
))

return node