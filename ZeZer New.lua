repeat wait() until game:IsLoaded() and game.Players.LocalPlayer
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "ZeZer |",
    Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
    LoadingTitle = "Loading...",
    LoadingSubtitle = "by ZeZerover",
    Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes
 
    DisableRayfieldPrompts = false,
    DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface
 
    ConfigurationSaving = {
       Enabled = true,
       FolderName = nil, -- Create a custom folder for your hub/game
       FileName = "ZeZer New"
    },
 
    Discord = {
       Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
       Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
 
    KeySystem = false, -- Set this to true to use our key system
    KeySettings = {
       Title = "Untitled",
       Subtitle = "Key System",
       Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
       FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
       SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
 })

 local AutofarmTab = Window:CreateTab("Auto farm", nil) -- Title, Image
 local AutofarmSection = AutofarmTab:CreateSection("Main farm")

 local AutofarmToggle = AutofarmTab:CreateToggle({
    Name = "Auto farm",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
    -- The function that takes place when the toggle is pressed
    -- The variable (Value) is a boolean on whether the toggle is true or false
    end,
 })

 local ShopTab = Window:CreateTab("Tab Shop", nil) -- Title, Image
 local ShopSection = ShopTab:CreateSection("Melee")

 local ShopButton = ShopTab:CreateButton({
    Name = "Dark Step",
    Callback = function(args)
        local args = {
            "BuyBlackLeg"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
        
    end,
 })

 local ShopButton = ShopTab:CreateButton({
    Name = "Electric",
    Callback = function(args)
        local args = {
            "BuyElectro"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    end,    
 })

 local ShopButton = ShopTab:CreateButton({
    Name = "Water Kung Fu",
    Callback = function(args)
        local args = {
            "BuyFishmanKarate"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))        
    end,    
 })

 local ShopButton = ShopTab:CreateButton({
    Name = "Dragon Breath",
    Callback = function(args)
        local args = {
            "BlackbeardReward",
            "DragonClaw",
            "1"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
        wait()
        local args = {
            "BlackbeardReward",
            "DragonClaw",
            "2"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
        
    end,    
 })

 local ShopButton = ShopTab:CreateButton({
    Name = "Superhuman",
    Callback = function(args)
        local args = {
            "BuySuperhuman"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    end,    
 })

 local ShopButton = ShopTab:CreateButton({
    Name = "Death Step",
    Callback = function(args)
        local args = {
            "BuyDeathStep"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))        
    end,
 })

 local ShopButton = ShopTab:CreateButton({
    Name = "Sharkman Karate",
    Callback = function(args)
        local args = {
            "BuySharkmanKarate"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))        
    end,
 })

 local ShopButton = ShopTab:CreateButton({
    Name = "Electric Claw",
    Callback = function(args)
        local args = {
            "BuyElectricClaw"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))        
    end,
 })

 local ShopButton = ShopTab:CreateButton({
    Name = "Dragon Talon",
    Callback = function(args)
        local args = {
            "BuyDragonTalon"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))        
    end,    
 })

 local ShopButton = ShopTab:CreateButton({
    Name = "Godhuman",
    Callback = function(args)
        local args = {
            "BuyGodhuman"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))        
    end,
 })

 local ShopButton = ShopTab:CreateButton({
    Name = "Look Input",
    Callback = function(args)
        print("Coming soon")
    end,
 })

 local FarmSettingsTab = Window:CreateTab("Farm Settings", nil) -- Title, Image
 local FarmSettingsSection = FarmSettingsTab:CreateSection("Player")

 local FarmSettingsSlider = FarmSettingsTab:CreateSlider({
    Name = "WalkSpeed",
    Range = {0, 300},
    Increment = 1,
    Suffix = "WalkSpeed",
    CurrentValue = 16,
    Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoid = character:FindFirstChild("Humanoid")

        if humanoid then
            humanoid.WalkSpeed = Value
        end
    end,
 })

 local FarmSettingsEnabled = false

 local FarmSettings = FarmSettingsfarmTab:CreateToggle({
    Name = "On V3",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        SettingsEnabled = Value

        if SettingsEnabled then
            task.spawn(function()
                while SettingsEnabled do
                    local args = {
                        "ActivateAbility"
                    }
                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommE"):FireServer(unpack(args))
                    task.wait(3.0) -- Adjust delay as needed (3.0 = fast, 1 = slow)
                end
            end)
        end
    end,
 })