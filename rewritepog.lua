--                                                                                               Functions
--****************************************************************************************************************************************************************************************************



function walk(X, Y, Z)
    game.Players.LocalPlayer.Character.Humanoid.WalkToPoint = Vector3.new(X, Y, Z)
end
function tp(X, Y, Z)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(X, Y, Z)
end





function lerpZ(playercoordsZ, coinZ, alphaZ)
    return playercoordsZ + (coinZ - playercoordsZ)*alphaZ
end

function lerpX(playercoordsX, coinX, alphaX)
    return playercoordsX + (coinX - playercoordsX)*alphaX
end





function Mouse1()
    game:GetService("ReplicatedStorage").remotes.weaponUsed:FireServer()
    game:GetService("Players").LocalPlayer.Character.dualRight.swing:FireServer()
end

function FailDungeon()

    local args = {
        [1] = {
        [1] = {
                ["\3"] = "closeRevive"
            },
            [2] = "\13"
        }
    }

    game:GetService("ReplicatedStorage").dataRemoteEvent:FireServer(unpack(args))
end

function RetryDungeon()
     while true do
         task.wait(0.1)
         local args = {
             [1] = {
                 [1] = {
                     ["\3"] = "vote",
                     ["vote"] = true
                 },
                 [2] = "4"
             }
         }

         game:GetService("ReplicatedStorage").dataRemoteEvent:FireServer(unpack(args))
     end
 end



function StartDungeon()
    game:GetService("ReplicatedStorage").remotes.changeStartValue:FireServer()
    print("started!")
end



function GetTheDamnCoin()
    while true do
        task.wait(0.5)

        game:GetService("Workspace"):WaitForChild("Coin")

        local rootpartmeow = game.Players.LocalPlayer.Character.HumanoidRootPart
        local playerscframe = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        local coincframemeow = game:GetService("Workspace").Coin.Coin.CFrame
        rootpartmeow.Anchored = false

        local function lerpZ(playercoordsZ, coinZ, alphaZ)
            return playercoordsZ + (coinZ - playercoordsZ)*alphaZ
        end

        local function lerpX(playercoordsX, coinX, alphaX)
            return playercoordsX + (coinX - playercoordsX)*alphaX
        end

        -- --CastSpellData()
        -- --CastSpellE()
        rootpartmeow.CFrame = CFrame.new(lerpX(playerscframe.X, coincframemeow.X, 0.2), coincframemeow.Y, lerpZ(playerscframe.Z, coincframemeow.Z, 0.2))
        task.wait(0.35)
        rootpartmeow.CFrame = CFrame.new(lerpX(playerscframe.X, coincframemeow.X, 0.4), coincframemeow.Y, lerpZ(playerscframe.Z, coincframemeow.Z, 0.4))
        task.wait(0.35)
        rootpartmeow.CFrame = CFrame.new(lerpX(playerscframe.X, coincframemeow.X, 0.6), coincframemeow.Y, lerpZ(playerscframe.Z, coincframemeow.Z, 0.6))
        task.wait(0.35)
        rootpartmeow.CFrame = CFrame.new(lerpX(playerscframe.X, coincframemeow.X, 0.8), coincframemeow.Y, lerpZ(playerscframe.Z, coincframemeow.Z, 0.8))
        task.wait(0.35)
        rootpartmeow.CFrame = CFrame.new(coincframemeow.X, coincframemeow.Y, coincframemeow.Z)
    end
end



--                                                                                           AutoFarms
--****************************************************************************************************************************************************************************************************

function DesertTempleAutoFarm()
    print("Desert Temple AutoFarm")
end

function WinterOutpostAutoFarm()
    print("Winter Outpost AutoFarm")
end

function PiarteIslandAutoFarm()
    print("Piarte Island AutoFarm")
end

function KingsCastleAutoFarm()
    print("Kings Castle AutoFarm")
end

function TheUnderworldAutoFarm()
    print("The Underworld AutoFarm")
end

function SamuraiPalaceAutoFarm()
    print("Samurai Palace AutoFarm")
end

function TheCanalsAutoFarm()
    print("The Canals AutoFarm")
end

function GhastlyHarborAutoFarm()
    print("Ghastly Harbor AutoFarm")
end

function SteampunkSewersAutoFarm()
    print("Steampunk Sewers AutoFarm")
end

function OrbitalOutpostAutoFarm()
    print("Orbital Outpost AutoFarm")
end

function VolcanicChambersAutoFarm()
    print("Volcanic Chambers AutoFarm")
end

function AquaticTempleAutoFarm()

    print("Aquatic Temple AutoFarm")

    local PlayerHumanoid = game.Players.LocalPlayer.Character.Humanoid
    local PlayerHumanoidRootPart = game.Players.LocalPlayer.Character.HumanoidRootPart

    PlayerHumanoid.WalkSpeed = 35

    StartDungeon()

    task.wait(8)


    tp(-690, 36, 2326)


    -- group 1
    walk(-835, 35, 2326)
    task.wait(3.5)
    tp(-835, 35, 2326)
    task.wait(2)

    -- group 2
    walk(-940, 35, 2326)
    task.wait(1.5)
    tp(-940, 35, 2326)
    task.wait(1)

    -- boss 1
    walk(-1090, 35, 2326)
    task.wait(3.5)
    tp(-1090, 35, 2326)

    Mouse1()
    task.wait(0.6)
    Mouse1()
    task.wait(1.5)

    -- group 1
    walk(-1236, 35, 2326)
    task.wait(3.5)
    tp(-1236, 35, 2326)
    task.wait(2)

    walk(-1263, -10, 2175)
    task.wait(3.5)
    tp(-1263, -10, 2175)

    walk(-1328, -23, 2174)
    task.wait(3.5)

    -- group 2 & 3
    tp(-1350, -22, 2129)
    task.wait(3)
    tp(-1345, -23, 2220)
    task.wait(2)

    -- group 4
    walk(-1313, -24, 2227)
    task.wait(2)
    walk(-1262, -13, 2496)
    task.wait(5)
    tp(-1262, -13, 2496)
    task.wait(2)

    walk(-1467, 5, 2489)
    task.wait(2)
    tp(-1467, 5, 2489)

    task.wait(2)


    if game:GetService("Players").LocalPlayer.PlayerGui.bossHealth.healthFrame.bossName.Text ~= "Gregg" then
        FailDungeon()
    else
        GetTheDamnCoin()
    end           
end


function EnchantedForestAutoFarm()
    print("EnchantedForestAutoFarm")
end

function NorthernLandsAutoFarm()
    print("Northern Lands AutoFarm")
end

function GildedSkiesAutoFarm()
    print("GildedSkiesAutoFarm")
end

function YokaiPeakAutoFarm ()
    print("Yokai Peak AutoFarm")
end




--                                                                                           Auto Farm Finder
--****************************************************************************************************************************************************************************************************




-- function findwhattoautofarm()
--     if game:GetService("Workspace").dungeonName.Value == "Desert Temple" then
--         DesertTempleAutoFarm()
--     else
--         if game:GetService("Workspace").dungeonName.Value == "Winter Outpost" then
--             WinterOutpostAutoFarm()
--         else
--             if game:GetService("Workspace").dungeonName.Value == "Pirate Island" then
--                 PiarteIslandAutoFarm()
--             else
--                 if game:GetService("Workspace").dungeonName.Value == "King's Castle" then
--                     KingsCastleAutoFarm()
--                 else
--                     function findwhattoautofarm()
--                         if game:GetService("Workspace").dungeonName.Value == "The Underworld" then
--                             TheUnderworldAutoFarm()
--                         else
--                             if game:GetService("Workspace").dungeonName.Value == "Samurai Palace" then
--                                 SamuraiPalaceAutoFarm()
--                             else
--                                 if game:GetService("Workspace").dungeonName.Value == "The Canal's" then
--                                     TheCanalsAutoFarm()
--                                 else
--                                     if game:GetService("Workspace").dungeonName.Value == "Ghastly Harbor" then
--                                         GhastlyHarborAutoFarm()
--                                     else
--                                         function findwhattoautofarm()
--                                             if game:GetService("Workspace").dungeonName.Value == "Steampunk Sewers" then
--                                                 SteampunkSewersAutoFarm()
--                                             else
--                                                 if game:GetService("Workspace").dungeonName.Value == "Orbital Outpost" then
--                                                     OrbitalOutpostAutoFarm()
--                                                 else
--                                                     if game:GetService("Workspace").dungeonName.Value == "Volcanic Chambers" then
--                                                         VolcanicChambersAutoFarm()
--                                                     else
--                                                         if game:GetService("Workspace").dungeonName.Value == "Aquatic Temple" then
--                                                             AquaticTempleAutoFarm()
--                                                         else
--                                                             function findwhattoautofarm()
--                                                                 if game:GetService("Workspace").dungeonName.Value == "Enchanted Forest" then
--                                                                     EnchantedForestAutoFarm()
--                                                                 else
--                                                                     if game:GetService("Workspace").dungeonName.Value == "Northern Lands" then
--                                                                         AquaticTempleAutoFarm()
--                                                                     else
--                                                                         if game:GetService("Workspace").dungeonName.Value == "Gilded Skies" then
--                                                                             GildedSkiesAutoFarm()
--                                                                         else
--                                                                             if game:GetService("Workspace").dungeonName.Value == "Yokai Peak" then
--                                                                                 YokaiPeakAutoFarm()
--                                                                             else
--                                                                                 warn("Dungeon Not Found / In Lobby / Line 282")
--                                                                             end
--                                                                         end
--                                                                     end
--                                                                 end
--                                                             end
--                                                         end
--                                                     end
--                                                 end
--                                             end
--                                         end
--                                     end
--                                 end
--                             end
--                         end
--                     end
--                 end
--             end
--         end
--     end
-- end


-- findwhattoautofarm()

AquaticTempleAutoFarm()
