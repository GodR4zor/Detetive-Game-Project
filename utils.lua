local Utils = {}

function Utils.enableUTF8()
    os.execute("chcp 65001")
end

function Utils.isWindows()
    return type(package) == 'table' and type(package.config) == 'string' and package.config:sub(1,1) == '\\'
end

function Utils.clearScreen()
    if Utils.isWindows() then
        os.execute("cls")
    else
        os.execute("clear")
    end
end

function Utils.gameOverHeader()
    return [[%{red}
  ▄▄ •  ▄▄▄· • ▌ ▄ ·. ▄▄▄ .         ▌ ▐·▄▄▄ .▄▄▄  
 ▐█ ▀ ▪▐█ ▀█ ·██ ▐███▪▀▄.▀·   ▄█▀▄ ▪█·█▌▀▄.▀·▀▄ █·
 ▄█ ▀█▄▄█▀▀█ ▐█ ▌▐▌▐█·▐▀▀▪▄  ▐█▌.▐▌▐█▐█•▐▀▀▪▄▐▀▀▄ 
 ▐█▄▪▐█▐█▪ ▐▌██ ██▌▐█▌▐█▄▄▌  ▐█▌.▐▌ ███ ▐█▄▄▌▐█•█▌
 ·▀▀▀▀  ▀  ▀ ▀▀  █▪▀▀▀ ▀▀▀    ▀█▄▀▪. ▀   ▀▀▀ .▀  ▀
    ]]
end

function Utils.gameWonHeader()
    return [[%{green}
  ▌ ▐·▪  ▄▄▄▄▄      ▄▄▄  ▪   ▄▄▄· 
 ▪█·█▌██ •██   ▄█▀▄ ▀▄ █·██ ▐█ ▀█ 
 ▐█▐█•▐█· ▐█.▪▐█▌.▐▌▐▀▀▄ ▐█·▄█▀▀█ 
  ███ ▐█▌ ▐█▌·▐█▌.▐▌▐█•█▌▐█▌▐█▪ ▐▌
 . ▀  ▀▀▀ ▀▀▀  ▀█▄▀▪.▀  ▀▀▀▀ ▀  ▀ 
    ]]
end

return Utils