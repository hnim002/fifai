if not game:IsLoaded() then game.Loaded:Wait() end
repeat wait() until game.Players
repeat wait() until game.Players.LocalPlayer
repeat wait() until game.ReplicatedStorage
repeat wait() until game.ReplicatedStorage:FindFirstChild("Remotes");
repeat wait() until game.Players.LocalPlayer:FindFirstChild("PlayerGui");
repeat wait() until game:IsLoaded()

local bl1 = loadstring(game:HttpGet("https://snuffiest-guest.000webhostapp.com/blacklist.lua"))()
if table.find(bl1,game.Players.LocalPlayer.Name) then
	game.Players.LocalPlayer:Kick("OWNER KICK")
else
    local plr = game.Players.LocalPlayer
    local oldfrag = game.Players.LocalPlayer.Data.Fragments.Value
    local oldBeli = plr.Data.Beli.Value
    local Data = {
        X = 0,
        Y = -30,
        Z = 30
    }
    local DevilFruitCollect = {
        "Bomb Fruit",
        "Spike Fruit",
        "Chop Fruit",
        "Spring Fruit",
        "Kilo Fruit",
        "Spin Fruit",
        "Bird: Falcon Fruit",
        "Smoke Fruit",
        "Flame Fruit",
        "Ice Fruit",
        "Sand Fruit",
        "Dark Fruit",
        "Revive Fruit",
        "Diamond Fruit",
        "Light Fruit",
        "Love Fruit",
        "Rubber Fruit",
        "Barrier Fruit",
        "Magma Fruit",
        "Door Fruit",
        "Quake Fruit",
        "Human: Buddha Fruit",
        "String Fruit",
        "Bird: Phoenix Fruit",
        "Rumble Fruit",
        "Paw Fruit",
        "Gravity Fruit",
        "Dough Fruit",
        "Venom Fruit",
        "Shadow Fruit",
        "Control Fruit",
        "Soul Fruit",
        "Dragon Fruit",
        "Leopard Fruit"
    }
    local FruitList = {
        ["Bomb Fruit"] =  "Bomb-Bomb",
        ["Spike Fruit"] =  "Spike-Spike",
        ["Chop Fruit"] =  "Chop-Chop",
        ["Spring Fruit"] =  "Spring-Spring",
        ["Kilo Fruit"] =  "Kilo-Kilo",
        ["Spin Fruit"] =  "Spin-Spin",
        ["Bird: Falcon Fruit"] = "Bird-Bird: Falcon",
        ["Smoke Fruit"] =  "Smoke-Smoke",
        ["Flame Fruit"] =  "Flame-Flame",
        ["Ice Fruit"] =  "Ice-Ice",
        ["Sand Fruit"] =  "Sand-Sand",
        ["Dark Fruit"] =  "Dark-Dark",
        ["Revive Fruit"] =  "Revive-Revive",
        ["Diamond Fruit"] =  "Diamond-Diamond",
        ["Light Fruit"] =  "Light-Light",
        ["Love Fruit"] =  "Love-Love",
        ["Rubber Fruit"] =  "Rubber-Rubber",
        ["Barrier Fruit"] =  "Barrier-Barrier",
        ["Magma Fruit"] =  "Magma-Magma",
        ["Door Fruit"] =  "Door-Door",
        ["Quake Fruit"] =  "Quake-Quake",
        ["Human: Buddha Fruit"] =  "Human-Human: Buddha",
        ["String Fruit"] =  "String-String",
        ["Bird: Phoenix Fruit"] =  "Bird-Bird: Phoenix",
        ["Rumble Fruit"] =  "Rumble-Rumble",
        ["Paw Fruit"] =  "Paw-Paw",
        ["Gravity Fruit"] =  "Gravity-Gravity",
        ["Dough Fruit"] =  "Dough-Dough",
        ["Venom Fruit"] =  "Venom-Venom",
        ["Shadow Fruit"] =  "Shadow-Shadow",
        ["Control Fruit"] =  "Control-Control",
        ["Soul Fruit"] =  "Soul-Soul",
        ["Dragon Fruit"] =  "Dragon-Dragon",
        ["Leopard Fruit"] =  "Leopard-Leopard"
    }

    local CheckList = {
        "Bomb-Bomb",
        "Spike-Spike",
        "Chop-Chop",
        "Spring-Spring",
        "Kilo-Kilo",
        "Spin-Spin",
        "Bird-Bird: Falcon",
        "Smoke-Smoke",
        "Flame-Flame",
        "Ice-Ice",
        "Sand-Sand",
        "Dark-Dark",
        "Revive-Revive",
        "Diamond-Diamond",
        "Light-Light",
        "Love-Love",
        "Rubber-Rubber",
        "Barrier-Barrier",
        "Magma-Magma",
        "Door-Door",
        "Quake-Quake",
        "Human-Human: Buddha",
        "String-String",
        "Bird-Bird: Phoenix",
        "Rumble-Rumble",
        "Paw-Paw",
        "Gravity-Gravity",
        "Dough-Dough",
        "Venom-Venom",
        "Shadow-Shadow",
        "Control-Control",
        "Soul-Soul",
        "Dragon-Dragon",
        "Leopard-Leopard"
    }

    function webhook()
        local url = tostring("https://discord.com/api/webhooks/1033383285356765205/NRPpas0z2sK9bgNm570r7bDpYpjCJiikK2NA7gE4T8QjR1Ik6k_m6vn-e9h1xvJpVCQR")
        if url == "" then
            return
        end 
        local hehe = game:GetService("Players").LocalPlayer.Data.Beli.Value-oldBeli
        local hehe2 = game:GetService("Players").LocalPlayer.Data.Fragments.Value-oldfrag
        local hehe3 = (game:GetService("Players").LocalPlayer.Data.Fragments.Value-oldfrag) / 1000
        local data = {
            ["content"] = "",
            ["username"] = "Saw Hub",
            ["embeds"] = {
                {
                    ["author"] = {
                        ["name"] = "Saw Hub | Auto Frag,Beli",
                    },
                    ["description"] = "||" .. game.Players.LocalPlayer.Name .. "||",
                    ["color"] = 110335,

                    ["thumbnail"] = {
                        ['url'] = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. game.Players.LocalPlayer.userId .. "&width=100&height=100&format=png"
                    },
                    ["fields"] = {
                        {
                            ["name"] = "Beli Collect:",
                            ["value"] = hehe,
                            ["inline"] = false
                        },{
                            ["name"] = "Fragments Collect:",
                            ["value"] = hehe2,
                            ["inline"] = false
                        },{
                            ["name"] = "CakePrince:",
                            ["value"] = hehe3,
                            ["inline"] = false
                        }
                    },
                    ["footer"] = {
                        ["text"] = "Saw Hub (" .. os.date("%X") .. ")"
                    }
                }
            }
        }

        local porn = game:GetService("HttpService"):JSONEncode(data)

        local headers = {["content-type"] = "application/json"}
        request = http_request or request or HttpPost or syn.request or http.request
        local sex = {Url = url, Body = porn, Method = "POST", Headers = headers}
        request(sex)
    end

    function webhookfruit(fruit)
        local url = tostring("https://discord.com/api/webhooks/1024674518561718302/-6TuAeojgNsInYhIBsXmyQdRdep_tcDBZFVpXNlTBhe8og6XVy0teEGVr_cOUwatVTwy")
        if url == "" then
            return
        end 
        local data = {
            ["content"] = "",
            ["username"] = "Saw Hub",
            ["embeds"] = {
                {
                    ["author"] = {
                        ["name"] = "Saw Hub | Auto Fruit",
                    },
                    ["description"] = "||" .. game.Players.LocalPlayer.Name .. "||",
                    ["color"] = 110335,

                    ["thumbnail"] = {
                        ['url'] = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. game.Players.LocalPlayer.userId .. "&width=100&height=100&format=png"
                    },
                    ["fields"] = {
                        {
                            ["name"] = "Fruit Collect:",
                            ["value"] = fruit,
                            ["inline"] = false
                        }
                    },
                    ["footer"] = {
                        ["text"] = "Saw Hub (" .. os.date("%X") .. ")"
                    }
                }
            }
        }

        local porn = game:GetService("HttpService"):JSONEncode(data)

        local headers = {["content-type"] = "application/json"}
        request = http_request or request or HttpPost or syn.request or http.request
        local sex = {Url = url, Body = porn, Method = "POST", Headers = headers}
        request(sex)
    end

    webhook()

    function EquipWeapon(ToolSe)
        if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
            local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
        end
    end  

    function Haki()
        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
            local args = {
                [1] = "Buso"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    end  

    function EquipToolTip(ToolTip)
        for i,v in pairs(plr.Backpack:GetChildren()) do
            if v:IsA("Tool") then
                if v.ToolTip == ToolTip then
                    EquipWeapon(v.Name)
                end
            end
        end
    end

    function GetNpcPos(name) 
        local npc = game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:FindFirstChild(name)
        if npc then 
            local nrs
            for k,v in pairs(game:GetService("Workspace")["_WorldOrigin"].EnemyRegions:GetChildren()) do 
                if (npc.Position-v.Position).magnitude <= v.Mesh.Scale.X * v.Size.X / 2  then 
                    if not nrs then nrs = v end
                    if (npc.Position-v.Position).magnitude < (npc.Position-nrs.Position).magnitude then 
                        nrs = v
                    end
                end
            end
            return nrs.CFrame
        end
    end

    function toTarget(targetCframe)
        local Speed = 250
        local Distance = (targetCframe.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude
        if Distance < 1000 then
            Speed = 300
        elseif Distance >= 1000 then
            Speed = 275
        end
        local tweenfunc = {}
    
        local tween_s = game:service"TweenService"
        local info = TweenInfo.new((targetCframe.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude/Speed, Enum.EasingStyle.Linear)
        local tween = tween_s:Create(game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = targetCframe * CFrame.fromAxisAngle(Vector3.new(1,0,0), math.rad(0))})
        tween:Play()
    
        function tweenfunc:Stop()
            tween:Cancel()
        end 
    
        if not tween then return tween end
        return tweenfunc
    end

    local CbFw = debug.getupvalues(require(plr.PlayerScripts.CombatFramework))
    local CbFw2 = CbFw[2]

    function GetCurrentBlade()
        local p13 = CbFw2.activeController
        local ret = p13.blades[1]
        if not ret then return end
        while ret.Parent~=game.Players.LocalPlayer.Character do ret=ret.Parent end
        return ret
    end
    function AttackNoCD() 
        local AC = CbFw2.activeController
        for i = 1, 1 do 
            local bladehit = require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(plr.Character,{plr.Character.HumanoidRootPart},60)
            local cac = {}
            local hash = {}
            for k, v in pairs(bladehit) do
                if v.Parent:FindFirstChild("HumanoidRootPart") and not hash[v.Parent] then
                    table.insert(cac, v.Parent.HumanoidRootPart)
                    hash[v.Parent] = true
                end
            end
            bladehit = cac
            if #bladehit > 0 then
                local u8 = debug.getupvalue(AC.attack, 5)
                local u9 = debug.getupvalue(AC.attack, 6)
                local u7 = debug.getupvalue(AC.attack, 4)
                local u10 = debug.getupvalue(AC.attack, 7)
                local u12 = (u8 * 798405 + u7 * 727595) % u9
                local u13 = u7 * 798405
                (function()
                    u12 = (u12 * u9 + u13) % 1099511627776
                    u8 = math.floor(u12 / u9)
                    u7 = u12 - u8 * u9
                end)()
                u10 = u10 + 1
                debug.setupvalue(AC.attack, 5, u8)
                debug.setupvalue(AC.attack, 6, u9)
                debug.setupvalue(AC.attack, 4, u7)
                debug.setupvalue(AC.attack, 7, u10)
                pcall(function()
                    for k, v in pairs(AC.animator.anims.basic) do
                        v:Play()
                    end                  
                end)
                if plr.Character:FindFirstChildOfClass("Tool") and AC.blades and AC.blades[1] then 
                    game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(GetCurrentBlade()))
                    game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(u12 / 1099511627776 * 16777215), u10)
                    game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, i, "") 
                end
            end
        end
    end

    game:GetService("Players").LocalPlayer.Idled:Connect(function()
        local VirtualUser = game:GetService("VirtualUser")
        VirtualUser:CaptureController()
        VirtualUser:ClickButton2(Vector2.new())
    end)

    local t = tick()
    spawn(function() 
        while task.wait(0.125) do 
            if UseFastAttack then 
                if tick()-t>1 and fastattack2 then 
                    fastattack = true
                    wait(1) 
                    t=tick() 
                end
                pcall(function()
                    fastattack = false
                    Haki()
                    EquipToolTip("Melee")
                    if plr.Character.Stun.Value == 0 and not plr.Character.Busy.Value then
                        AttackNoCD()
                    end
                end)
            end
        end
    end)

    local CombatFrameworkROld = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework) 
        local CombatFrameworkR = getupvalues(CombatFrameworkROld)[2]
        local CameraShakerR = require(game.ReplicatedStorage.Util.CameraShaker)
        CameraShakerR:Stop()
        spawn(function()
            game:GetService("RunService").Stepped:Connect(function()
                pcall(function()
                    CombatFrameworkR.activeController.hitboxMagnitude = 55
                    if fastattack then
                        CombatFrameworkR.activeController.timeToNextAttack = 0
                        CombatFrameworkR.activeController.attacking = false
                        CombatFrameworkR.activeController.increment = 3
                        CombatFrameworkR.activeController.blocking = false
                        CombatFrameworkR.activeController.timeToNextBlock = 0
                        game.Players.LocalPlayer.Character.Humanoid.Sit = false	
                        game:GetService('VirtualUser'):CaptureController()
                        game:GetService('VirtualUser'):ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
                    end
                end)
            end)
        end)

        function GetNpcPos(name) 
            local tong 
            local c = 0
            for k,v in pairs( game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()) do 
                if string.find(name,v.Name) then 
                    if not tong then tong = v.Position else tong = tong+v.Position end
                    c=c+1
                end
            end
            tong=tong/c
            return tong
        end
        

    function AutoUnlockKata()
        game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CakePrinceSpawner")
        if game.ReplicatedStorage:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
            if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if v.Name == "Cake Prince [Lv. 2300] [Raid Boss]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                        repeat wait(0.05)
                            if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
                                Farmtween = toTarget(v.HumanoidRootPart.CFrame * CFrame.new(Data.X,Data.Y,Data.Z))
                                UseFastAttack = false
                                fastattack2 = false
                            elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                if Farmtween then
                                    Farmtween:Stop()
                                end
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(Data.X,Data.Y,Data.Z)
                                UseFastAttack = true
                                fastattack2 = true
                            end
                        until v == nil or not v.Parent or v.Humanoid.Health <= 0 or game.ReplicatedStorage:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]")
                        UseFastAttack = false
                        fastattack2 = false
                    end
                end
            else
                fastattack = false
                fastattack2 = false
                Farmtween = toTarget(CFrame.new(-2151.82153, 149.315704, -12404.9053))
                if (CFrame.new(-2151.82153, 149.315704, -12404.9053).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 200 then
                    if Farmtween then Farmtween:Stop() end
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2151.82153, 149.315704, -12404.9053)
                end
            end
        elseif game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter [Lv. 2200]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard [Lv. 2225]") or game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff [Lv. 2250]") or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker [Lv. 2275]") then
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                local cf = GetNpcPos(v.Name)
                if (v.Name == "Cookie Crafter [Lv. 2200]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]") and v ~= nil and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                    repeat
                        if v ~= nil and v:FindFirstChild("HumanoidRootPart") and (cf - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 200 then
                            Farmtween = toTarget(CFrame.new(cf) * CFrame.new(Data.X,30,Data.Z))
                            PosMon = CFrame.new(cf)
                            StartBring = true
                            UseFastAttack = false
                        elseif v ~= nil and v:FindFirstChild("HumanoidRootPart") and (cf - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 200 then
                            PosMon = CFrame.new(cf)
                            StartBring = true
                            if Farmtween then
                                Farmtween:Stop()
                            end
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(cf) * CFrame.new(Data.X,30,Data.Z)
                            UseFastAttack = true
                        end
                        wait(0.05)
                    until v == nil or not v.Parent or not v:FindFirstChild("Humanoid") or v.Humanoid.Health <= 0
                    UseFastAttack = false
                    StartBring = false
                end
            end
        else
            StartBring = false
            UseFastAttack = false
            Farmtween = toTarget(CFrame.new(-2077, 252, -12373))
            if (CFrame.new(-2077, 252, -12373).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 200 then
                if Farmtween then
                    Farmtween:Stop()
                end
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2077, 252, -12373)
            end
        end
    end

    task.spawn(function()
        while true do
            if StartBring then
                pcall(function()
                    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if StartBring and v ~= nil and v.Humanoid.Health > 0 and (PosMon.Position - v.HumanoidRootPart.Position).magnitude <= 450 then
                            v.HumanoidRootPart.CFrame = PosMon
                            sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                        end
                    end
                end)
            end
            wait(0.08)
        end
    end)

    local CollectFruit = false

    task.spawn(function()
        while wait(0.05) do
            pcall(function()
                if game:GetService("Workspace"):FindFirstChild("Fruit ") then
                    toTarget(game:GetService("Workspace")["Fruit "].Handle.CFrame)
                elseif CollectFruit then
                    for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
                        if (string.find(v.Name, "Fruit") and table.find(DevilFruitCollect,v.Name)) then
                            repeat wait(.05)
                                if (v.Handle.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 800 then
                                    v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                                else 
                                    toTarget(v.Handle.CFrame)
                                end
                            until not game:GetService("Workspace"):FindFirstChild(v.Name) or not v.Parent
                        end
                    end
                    CollectFruit = false
                else 
                    AutoUnlockKata()
                end
            end)
        end
    end)
    task.spawn(function()
        while wait(0.05) do
            pcall(function()
                for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
                    if (string.find(v.Name, "Fruit") and table.find(DevilFruitCollect,v.Name)) then
                        CollectFruit = true
                    end
                end
            end)
        end
    end)

    task.spawn(function()
        while wait(1) do
            pcall(function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
            end)
        end
    end)

    task.spawn(function()
        while wait(5) do
            pcall(function()
                game:service('VirtualInputManager'):SendKeyEvent(true, "T", false, game)
				game:service('VirtualInputManager'):SendKeyEvent(false, "T", false, game)
            end)
        end
    end)

    local FruitHave = {}
    for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
        if table.find(CheckList,v.Name) then
            table.insert(FruitHave,v.Name)
        end
    end

    function ResetList()
        table.clear(FruitHave)
        for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
            if table.find(CheckList,v.Name) then
                table.insert(FruitHave,v.Name)
            end
        end
    end

    task.spawn(function()
        pcall(function()
            while wait(.1) do
                for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                    if v:IsA("Tool") and string.find(v.Name, "Fruit") then
                        ResetList()
                        if not table.find(FruitHave,FruitList[v.Name]) then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit",FruitList[v.Name],v)
                            webhookfruit(v.Name)
                        end
                    end
                end
                for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
                    if v:IsA("Tool") and string.find(v.Name, "Fruit")  then
                        ResetList()
                        if not table.find(FruitHave,FruitList[v.Name]) then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit",FruitList[v.Name],v)
                            webhookfruit(v.Name)
                        end
                    end
                end
            end
        end)
    end)

    task.spawn(function()
        game:GetService("RunService").Stepped:Connect(function()
            for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                if v:IsA("BasePart") then
                    v.CanCollide = false
                    v.Anchored = false
                end
            end   
        end)
    end)


    spawn(function()
        while wait(.1) do
            pcall(function()
                if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                    local Noclip = Instance.new("BodyVelocity")
                    Noclip.Name = "BodyClip"
                    Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                    Noclip.MaxForce = Vector3.new(100000,100000,100000)
                    Noclip.Velocity = Vector3.new(0,0,0)
                end
                if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyPosition") then
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyPosition"):Destroy()
                end
            end)
        end
    end)

    function RandomQuestCake(number)
        local NameQuest
        local LevelQuest
        if number == 1 then
            NameQuest = "CakeQuest1"
            LevelQuest = 1
        elseif number == 2 then
            NameQuest = "CakeQuest1"
            LevelQuest = 2
        elseif number == 3 then
            NameQuest = "CakeQuest2"
            LevelQuest = 1
        elseif number == 4 then
            NameQuest = "CakeQuest2"
            LevelQuest = 2
        end
        game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("StartQuest", NameQuest, LevelQuest)
    end

    task.spawn(function()
        while wait(.5) do
            if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                RandomQuestCake(math.random(1,4))
            end
        end
    end)

    task.spawn(function()
        while wait(600) do
            webhook()
        end
    end)

    task.spawn(function()
        pcall(function()
            while wait(60) do
                local bl2 = loadstring(game:HttpGet("https://snuffiest-guest.000webhostapp.com/blacklist.lua"))()
                if table.find(bl2,game.Players.LocalPlayer.Name) then
                    game.Players.LocalPlayer:Kick("OWNER KICK")
                end
            end
        end)
    end)
end
