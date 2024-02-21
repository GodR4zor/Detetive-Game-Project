-- Constants
local ID = "sala_esculturas.start"

-- Dependencies
local Node = require "node"
local Choice = require "choice"

-- Create Node
local node = Node:new(ID)
node.title = "Sala de Esculturas"
node.description = "Uma sala composta por esculturas antigas ate a era moderna."
node.header = [[%{red}

                          _)\.-.
         .-.__,___,_.-=-. )\`  a`\_
     .-.__\__,__,__.-=-. `/  \     `\
     {~,-~-,-~.-~,-,;;;;\ |   '--;`)/
      \-,~_-~_-,~-,(_(_(;\/   ,;/
       ",-.~_,-~,-~,)_)_)'.  ;;(
         `~-,_-~,-~(_(_(_(_\  `;\
   ,          `"~~--,)_)_)_)\_   \
   |\              (_(_/_(_,   \  ;
   \ '-.       _.--'  /_/_/_)   | |
    '--.\    .'          /_/    | |
        ))  /       \      |   /.'
       //  /,        | __.'|  ||
      //   ||        /`    (  ||
     ||    ||      .'       \ \\
     ||    ||    .'_         \ \\
      \\   //   / _ `\        \ \\__
       \'-'/(   _  `\,;        \ '--:,
        `"`  `"` `-,,;         `"`",,;

]]

-- Node Choices

table.insert(node.choices, Choice:new(
    "buda.start",
    "Investigar escultura de pedra do buda."
))

table.insert(node.choices, Choice:new(
    "guerreiro.start",
    "Investigar escultura de guerreiro do seculo VIII a.C."
))

table.insert(node.choices, Choice:new(
    "lixo_esculturas.start",
    "Investigar lata de lixo."
))

table.insert(node.choices, Choice:new(
    "start",
    "Voltar para a sala principal."
))



return node