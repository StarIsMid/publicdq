--                                                                                               Functions
--****************************************************************************************************************************************************************************************************


function castspelle()
    local args = {
        [1] = "e",
        [2] = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spinning Blade Smash")
    }
    
    game:GetService("ReplicatedStorage").remotes.abilityUsed:FireServer(unpack(args))
end

function castspellq()
    local args = {
        [1] = "q",
        [2] = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spinning Blade Smash")
    }
    
    game:GetService("ReplicatedStorage").remotes.abilityUsed:FireServer(unpack(args))
end


function castspell2()
    local args = {
        [1] = {
            [1] = {
                ["\t"] = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spinning Blade Smash")
            },
            [2] = "J"
        }
    }
    
    game:GetService("ReplicatedStorage").dataRemoteEvent:FireServer(unpack(args))
end



function mouse1()
    game:GetService("ReplicatedStorage").remotes.weaponUsed:FireServer()
    game:GetService("Players").LocalPlayer.Character.dualRight.swing:FireServer()
end




function faildungeon()
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

function retrydungeon()
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




function startdungeon()
    game:GetService("ReplicatedStorage").remotes.changeStartValue:FireServer()
    print("started!")
end




--                                                                                           AutoFarms
--****************************************************************************************************************************************************************************************************





--                                                                                           Gilded Skies
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function GildedSkiesAutoFarm()

    print("GildedSkiesAutoFarm")

    -- room 1

    startdungeon()
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


    castspelle()
    castspell2()

    task.wait(1.5)

    -- room 2

    if game:GetService("Players").LocalPlayer.PlayerGui.bossHealth.healthFrame.bossName.Text ~= "Gregg" then

        task.wait(5.5)
        

        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(310, 70, 0)
        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false


        task.wait(0.1)

        castspelle()
        castspell2()

        task.wait (2)

    else end

        -- room 3

        if game:GetService("Players").LocalPlayer.PlayerGui.bossHealth.healthFrame.bossName.Text ~= "Gregg" then
            task.wait(7)
            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(622, 100, 27)
            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
            castspelle()
            castspell2()
        else end

            -- room 4

            if game:GetService("Players").LocalPlayer.PlayerGui.bossHealth.healthFrame.bossName.Text ~= "Gregg" then
                task.wait(7)
                game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(700, 100, 176)
                game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
                castspelle()
                castspell2()
            else end

                -- room 5

                if game:GetService("Players").LocalPlayer.PlayerGui.bossHealth.healthFrame.bossName.Text ~= "Gregg" then
                    task.wait(7)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(748, 100, 270)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
                    castspelle()
                    castspell2()
                else end

                    -- room 6

                    if game:GetService("Players").LocalPlayer.PlayerGui.bossHealth.healthFrame.bossName.Text ~= "Gregg" then
                        task.wait(7)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(595, 100, -4)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
                        castspelle()
                        castspell2()
                    else end

                        -- room 7

                        if game:GetService("Players").LocalPlayer.PlayerGui.bossHealth.healthFrame.bossName.Text ~= "Gregg" then
                            task.wait(7)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(738, 100, -158)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
                            castspelle()
                            castspell2()

                            faildungeon()
                            retrydungeon()
                        else end 
                    
                    end              
            
        
    

                    
                

                          







--                                                                                           Enchanted Forest
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function EnchantedForestAutoFarm()
    print("EnchantedForestAutoFarm")

    -- room 1

    startdungeon()

    task.wait(10)

    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
    
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(100, 30, -48)
    task.wait(0.15)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(75, 30, -48)
    task.wait(0.15)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(50, 30, -48)
    task.wait(0.15)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(25, 30, -48)
    task.wait(0.15)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 30, -48)
    task.wait(0.15)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-50, 30, -48)
    task.wait(0.15)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-100, 30, -48)
    task.wait(0.15)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-125, 30, -48)
    task.wait(0.15)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-150, 30, -48)
    task.wait(0.15)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-165, 30, -45)

    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false

    castspelle()
    castspell2()

    task.wait(2)

    if game:GetService("Players").LocalPlayer.PlayerGui.bossHealth.healthFrame.bossName.Text ~= "Gregg" then
        faildungeon()
        retrydungeon()
    end
end





--                                                                                            Aquatic Temple
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function AquaticTempleAutoFarm()
    print("AquaticTempleAutoFarm")

    -- room 1

    startdungeon()

    task.wait(10)

    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true

    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-670, 50, 2325)
    task.wait(0.15)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-700, 50, 2325)
    task.wait(0.15)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-750, 50, 2325)
    task.wait(0.15)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-800, 50, 2325)
    task.wait(0.15)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-853, 50, 2325)

    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
    castspelle()
    castspell2()

    task.wait(7)

    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-946, 50, 2325)
    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
    castspelle()
    castspell2()

    task.wait(2)

    -- first boss

    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1090, 36, 2334)
    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false

    task.wait(1)

    mouse1()

    task.wait(1)

    mouse1()

    task.wait(4.5)

    -- room 2

    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1230, 35, 2325)
    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
    castspelle()
    castspell2()

    task.wait(7)

    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1350, 0, 2131)
    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
    castspelle()
    castspell2()

    task.wait(7)

    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1350, 0, 2221)
    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
    castspelle()
    castspell2()


    task.wait(7)

    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1269, 10, 2500)
    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
    castspelle()
    castspell2()

    task.wait(7)

    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1466, 20, 2500)
    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
    castspelle()
    castspell2()

    task.wait(2)

    if game:GetService("Players").LocalPlayer.PlayerGui.bossHealth.healthFrame.bossName.Text ~= "Gregg" then
        faildungeon()
        retrydungeon()
    end
end





--                                                                                            Orbital Outpost
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function OrbitalOutpostAutoFarm()
    print("OrbitalOutpostAutoFarm")
end





--                                                                                           Auto Farm Selector
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



function findwhattoautofarm()
    if game:GetService("Workspace").dungeonName.Value == "Gilded Skies" then
        GildedSkiesAutoFarm()
    else
        if game:GetService("Workspace").dungeonName.Value == "Aquatic Temple" then
            AquaticTempleAutoFarm()
        else
            if game:GetService("Workspace").dungeonName.Value == "Orbital Outpost" then
                OrbitalOutpostAutoFarm()
            else
                if game:GetService("Workspace").dungeonName.Value == "Enchanted Forest" then
                    EnchantedForestAutoFarm()
                else
                    print("Dungeon Not Found / Lobby 1 Or Lobby 2")
                end
            end
        end
    end
end


findwhattoautofarm()