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


--function RetryDungeon()
--      while true do
--          task.wait(0.1)
--          local args = {
--              [1] = {
--                  [1] = {
--                      ["\3"] = "vote",
--                      ["vote"] = true
--                  },
--                  [2] = "4"
--              }
--          }

--          game:GetService("ReplicatedStorage").dataRemoteEvent:FireServer(unpack(args))
--      end
--end



function StartDungeon()
    game:GetService("ReplicatedStorage").remotes.changeStartValue:FireServer()
    print("started!")
end







function GetTheDamnCoin()
    while true do
        task.wait(0.5)

        local rootpartmeow = game.Players.LocalPlayer.Character.HumanoidRootPart

        local playerscframe = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        local coincframemeow = game:GetService("Workspace").Coin.Coin.CFrame

         while true do
             task.wait(0.1)
             game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(playerscframe.X, playerscframe.Y + 50, playerscframe.Z)
         end

        game:GetService("Workspace"):WaitForChild("Coin")

        rootpartmeow.Anchored = false

        local function lerpZ(playercoordsZ, coinZ, alphaZ)
            return playercoordsZ + (coinZ - playercoordsZ)*alphaZ
        end

        local function lerpX(playercoordsX, coinX, alphaX)
            return playercoordsX + (coinX - playercoordsX)*alphaX
        end


        rootpartmeow.CFrame = CFrame.new(lerpX(playerscframe.X, coincframemeow.X, 0.1), coincframemeow.Y, lerpZ(playerscframe.Z, coincframemeow.Z, 0.1))
        task.wait(0.5)
        rootpartmeow.CFrame = CFrame.new(lerpX(playerscframe.X, coincframemeow.X, 0.2), coincframemeow.Y, lerpZ(playerscframe.Z, coincframemeow.Z, 0.2))
        task.wait(0.5)
        rootpartmeow.CFrame = CFrame.new(lerpX(playerscframe.X, coincframemeow.X, 0.3), coincframemeow.Y, lerpZ(playerscframe.Z, coincframemeow.Z, 0.3))
        task.wait(0.5)
        rootpartmeow.CFrame = CFrame.new(lerpX(playerscframe.X, coincframemeow.X, 0.4), coincframemeow.Y, lerpZ(playerscframe.Z, coincframemeow.Z, 0.4))
        task.wait(0.5)
        rootpartmeow.CFrame = CFrame.new(lerpX(playerscframe.X, coincframemeow.X, 0.6), coincframemeow.Y, lerpZ(playerscframe.Z, coincframemeow.Z, 0.6))
        task.wait(0.5)
        rootpartmeow.CFrame = CFrame.new(lerpX(playerscframe.X, coincframemeow.X, 0.8), coincframemeow.Y, lerpZ(playerscframe.Z, coincframemeow.Z, 0.8))
        task.wait(0.5)
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

print("AquaticTempleAutoFarm")

-- room 1
function AquaticTempleAutoFarm()

    StartDungeon()

    local cframeplr = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame 

    task.wait(6)

    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 35
    game.Players.LocalPlayer.Character.Humanoid.WalkToPoint = Vector3.new(-853, 50, 2325)
    task.wait(7)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16

    --CastSpellE()
    --CastSpellData()
    --CastSpellData()

    task.wait(2)

    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-946, 50, 2325)
    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
    --CastSpellE()
    --CastSpellData()

    task.wait(2)

    -- first boss

    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1090, 36, 2334)
    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false

    task.wait(2)

    Mouse1()

    task.wait(2)

    Mouse1()

    task.wait(2)

    -- room 2

    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1230, 35, 2325)
    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
    --CastSpellE()
    --CastSpellData()

    task.wait(2.5)

    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1350, 0, 2131)
    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
    --CastSpellE()
    --CastSpellData()

    task.wait(4)

    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1350, 0, 2221)
    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
    --CastSpellE()
    --CastSpellData()


    task.wait(2.5)

    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1269, 10, 2500)
    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
    --CastSpellE()
    --CastSpellData()

    task.wait(2.5)

    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1466, 20, 2500)
    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
    --CastSpellE()
    --CastSpellData()

    task.wait(3)

    if game:GetService("Players").LocalPlayer.PlayerGui.bossHealth.healthFrame.bossName.Text ~= "Gregg" then
        print("No Greg!")
        FailDungeon()
        -- RetryDungeon()
    else 
        GetTheDamnCoin()
    end
end



function EnchantedForestAutoFarm()
    print("EnchantedForestAutoFarm")

    -- room 1

    StartDungeon()
    

    task.wait(10)

    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
    
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(100, 30, -48)
    task.wait(0.22)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(75, 30, -48)
    task.wait(0.22)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(50, 30, -48)
    task.wait(0.22)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(25, 30, -48)
    task.wait(0.22)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 30, -48)
    task.wait(0.22)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-50, 30, -48)
    task.wait(0.22)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-100, 30, -48)
    task.wait(0.22)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-125, 30, -48)
    task.wait(0.22)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-150, 30, -48)
    task.wait(0.22)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-165, 30, -45)

    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false

    --CastSpellE()
    --CastSpellData()

    task.wait(2)

    if game:GetService("Players").LocalPlayer.PlayerGui.bossHealth.healthFrame.bossName.Text ~= "Gregg" then
        FailDungeon()
        -- RetryDungeon()
    else
        GetTheDamnCoin()
    end
end

function NorthernLandsAutoFarm()
    print("Northern Lands AutoFarm")
end

function GildedSkiesAutoFarm()

    local currentroom

    currentroom = currentroom

    print("GildedSkiesAutoFarm")

    -- room 1

    StartDungeon()
    local currentroom = 1
    
    task.wait(10)

    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true

    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-75, 50, 0)
    task.wait(0.36)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-25, 50, 0)
    task.wait(0.36)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(25, 50, 0)
    task.wait(0.36)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(50, 50, 0)
    task.wait(0.36)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(75, 50, 0)
    task.wait(0.36)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(125, 50, 0)
    task.wait(0.55)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(150, 50, 0)
    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false


    --CastSpellE()
    --CastSpellData()

    task.wait(1.5)

    -- room 2

    if game:GetService("Players").LocalPlayer.PlayerGui.bossHealth.healthFrame.bossName.Text ~= "Gregg" then

        task.wait(5.5)

        currentroom = currentroom + 1
        

        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(310, 70, 0)
        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false


        task.wait(0.1)

        --CastSpellE()
        --CastSpellData()

        task.wait (2)

    else
        --currentroomfunction(currentroom)
        GetTheDamnCoin()
    end

        -- room 3

        task.wait(2)
        if game:GetService("Players").LocalPlayer.PlayerGui.bossHealth.healthFrame.bossName.Text ~= "Gregg" then
            currentroom = currentroom + 1
            task.wait(5)
            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(622, 100, 27)
            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
            --CastSpellE()
            --CastSpellData()
        else
            --currentroomfunction(currentroom)
            GetTheDamnCoin()
        end

            -- room 4

            task.wait(2)
            if game:GetService("Players").LocalPlayer.PlayerGui.bossHealth.healthFrame.bossName.Text ~= "Gregg" then
                currentroom = currentroom + 1
                task.wait(5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(700, 100, 176)
                game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
                --CastSpellE()
                --CastSpellData()
            else
                --currentroomfunction(currentroom)
                GetTheDamnCoin()
            end

                -- room 5
                
                task.wait(2)
                if game:GetService("Players").LocalPlayer.PlayerGui.bossHealth.healthFrame.bossName.Text ~= "Gregg" then
                    currentroom = currentroom + 1
                    task.wait(5)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(748, 100, 270)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
                    --CastSpellE()
                    --CastSpellData()
                else
                    --currentroomfunction(currentroom)
                    GetTheDamnCoin()
                end

                    -- room 6
                    task.wait(2)
                    if game:GetService("Players").LocalPlayer.PlayerGui.bossHealth.healthFrame.bossName.Text ~= "Gregg" then
                        currentroom = currentroom + 1
                        task.wait(5)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(595, 100, -4)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
                        --CastSpellE()
                        --CastSpellData()
                    else
                        --currentroomfunction(currentroom)
                        GetTheDamnCoin()
                    end

                        -- room 7
                        task.wait(2)
                        if game:GetService("Players").LocalPlayer.PlayerGui.bossHealth.healthFrame.bossName.Text ~= "Gregg" then
                            currentroom = currentroom + 1
                            task.wait(5)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(738, 100, -158)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
                            --CastSpellE()
                            --CastSpellData()
                        else
                            --currentroomfunction(currentroom)
                            GetTheDamnCoin()
                        end

                            task.wait(2)
                            if game:GetService("Players").LocalPlayer.PlayerGui.bossHealth.healthFrame.bossName.Text ~= "Gregg" then
                                currentroom = currentroom + 1
                                FailDungeon()
                                -- RetryDungeon()
                            else
                                --currentroomfunction(currentroom)
                                GetTheDamnCoin()
                            end           
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

EnchantedForestAutoFarm()
