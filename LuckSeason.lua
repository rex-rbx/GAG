-- chunk: main
-- lua51 decompiler engaged
local game = game
local players = game:GetService("Players")
local starterGui = game:GetService("StarterGui")
local localPlayer = players.LocalPlayer
localPlayer:SetAttribute("SeasonTimeLucky", 100)
localPlayer:SetAttribute("SessionTime", 100)
localPlayer:SetAttribute("SessionTimeLuck", 100)
localPlayer:SetAttribute("SessionTimeLuckIndex", 100)
localPlayer:SetAttribute("Lucky", 100)
local function modifyPlaytimeTexts()
    -- chunk 2: proto for loop
    for _, descendant in ipairs(localPlayer.PlayerGui:GetDescendants()) do
        if descendant:IsA("TextLabel") then
            local text = descendant.Text
            if text:match("%% Playtime Luck") then
                descendant.Text = text:gsub("%+%d+%%", "+100%%")
            end
        end
    end
end
local function mainLoop()
    -- chunk 3: proto call & while loop
    starterGui:SetCore("SendNotification", {
        Title = "Buffed!",
        Text = "Success!",
        Duration = 4
    })
    while true do
        task.wait(0.01)
        modifyPlaytimeTexts()
        localPlayer:SetAttribute("SeasonTimeLucky", 100)
        localPlayer:SetAttribute("SessionTime", 100)
        localPlayer:SetAttribute("SessionTimeLuck", 100)
        localPlayer:SetAttribute("SessionTimeLuckIndex", 100)
        localPlayer:SetAttribute("Lucky", 100)
    end
end
task.delay(0.9, mainLoop)
modifyPlaytimeTexts()
