local games = {
    [4924922222] = {
        ["Name"] = "Brookhaven RP",
        ["Source"] = loadstring(game:HttpGet("https://raw.githubusercontent.com/MinecraftCardioMessageDeus/DeusLegalOpdemais/refs/heads/main/MorangosFritosCongelantesEMaciosBro.lua"))
    },
    [142823291] = {
        ["Name"] = "Murder Mystery 2",
        ["Source"] = loadstring(game:HttpGet("https://raw.githubusercontent.com/MinecraftCardioMessageDeus/DeusLegalOpdemais/refs/heads/main/AmeixasFrescasEDeliciosasNoFornoMm"))
    },
    [115110570222234] = {
        ["Name"] = "Blue Lock: Rivals (First Match)",
        ["Source"] = loadstring(game:HttpGet("https://raw.githubusercontent.com/MinecraftCardioMessageDeus/DeusLegalOpdemais/refs/heads/main/FrancosPasteisEscassosDeFeBLR.lua"))
    },
    [18668065416] = {
        ["Name"] = "Blue Lock: Rivals",
        ["Source"] = loadstring(game:HttpGet("https://raw.githubusercontent.com/MinecraftCardioMessageDeus/DeusLegalOpdemais/refs/heads/main/FrancosPasteisEscassosDeFeBLR.lua"))
    }
}

local supportedGames = {}

function CheckId()
    return game.PlaceId
end

for i, v in next, games do
    table.insert(supportedGames, v.Name)
end

local player = game:GetService("Players").LocalPlayer
local CurrentGame = games[CheckId()]

if not CurrentGame then
    player:Kick("This game isn't supported for Chaos Hub. Check the supported games:\n" .. table.concat(supportedGames, ", "))
end

CurrentGame["Source"]()
print("[CHAOS HUB] Loading script:" .. CurrentGame.Name)
