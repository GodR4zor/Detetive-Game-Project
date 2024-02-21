-- Constants
local ID = "menu"

-- Dependencies
local Node = require "node"
local Choice = require "choice"

-- Create Node
local node = Node:new(ID) ---@type Node
node.title = "Detetive Game"
node.description = [[
%{blue}Historia

%{white} de um museu na cidade de São Paulo.
Um dos artefatos do museu é roubado faltando poucos minutos para o encerramento do museu. 
Um dos funcionários percebe a falta de um artefato e aciona o alarme poucos minutos depois do crime.
Todas as portas são trancadas, e um detetive é chamado até o local do crime para investigar os visitantes.
Todos são proibidos de sair do museu até que o responsável seja encontrado.
    
%{blue}Jogo 

%{white}Encontre pistas e intorrogue os suspeitos para ajudar no julgamento final.
Algumas pistas podem ser falsas e alguem pode estar mentindo, encontre o verdadeiro culpado.]]
node.header = [[
%{yellow}                  _ _.-'`-._ _
%{yellow}                 ;.'________'.;
%{yellow}      _________n.[____________].n_________
%{yellow}     |""_""_""_""||==||==||==||""_""_""_""]
%{yellow}     |"""""""""""||..||..||..||"""""""""""|
%{yellow}     |LI LI LI LI||LI||LI||LI||LI LI LI LI|
%{yellow}     |.. .. .. ..||..||..||..||.. .. .. ..|
%{yellow}     |LI LI LI LI||LI||LI||LI||LI LI LI LI|
%{green}    ,,;;,;;;,;;;,;;;,;;;,;;;,;;;,;;,;;;,;;;,;;,,
%{green}   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
]]

table.insert(node.choices, Choice:new(
    "start",
    "Iniciar o jogo!"
))

return node