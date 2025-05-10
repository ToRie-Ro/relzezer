print("Script success")
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "ZeZer Hub-Blox fruits",
    SubTitle = "by ZeZerover",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = false, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})


--Fluent provides Lucide Icons https://lucide.dev/icons/ for the tabs, icons are optional
local Tabs = {
    Shop = Window:AddTab({ Title = "Tab Shop", Icon = "" }),
    Status = Window:AddTab({ Title = "Status Server", Icon = "" }),
    Players = Window:AddTab({ Title = "Local Players", Icon = "" }),
    Settingsfarm = Window:AddTab({ Title = "Settings farm", Icon = "" }),
    Autofarm = Window:AddTab({ Title = "Auto farm", Icon = "" }),
    Race = Window:AddTab({ Title = "Race V4", Icon = "" }),
    Tp = Window:AddTab({ Title = "Teleport", Icon = "" }),
    Settings = Window:AddTab({ Title = "Get Quest/Item", Icon = "" })
}

local Options = Fluent.Options

do



    Tabs.Tp:AddButton({
        Title = "Teleport 1 Sea",
        Callback = function()
            print("Coming Soon Update")
        end,
    })
    
    Tabs.Tp:AddButton({
        Title = "Teleport 2 Sea",
        Callback = function()
            print("Coming Soon Update")
        end,
    })
    
    Tabs.Tp:AddButton({
        Title = "Teleport 3 Sea",
        Callback = function()
            print("Coming Soon Update")
        end,
    })    

    Tabs.Shop:AddParagraph({
        Title = "Fighting Styles Shop",
        Content = "..."
    })



    Tabs.Shop:AddButton({
        Title = "Dark Step",
        Callback = function()
            local args = {
                "BuyBlackLeg"
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
        end,
    })

    Tabs.Shop:AddButton({
        Title = "Electric",
        Callback = function()
            local args = {
                "BuyElectro"
             }
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
        end,
    })

    Tabs.Shop:AddButton({
        Title = "Water Kung Fu",
        Callback = function()
        local args = {
            "BuyFishmanKarate"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))    
        end,
    })

    Tabs.Shop:AddButton({
        Title = "Dragon Breath",
        Callback = function()
        -- Function
        end,
    })

    Tabs.Shop:AddButton({
        Title = "Superhuman",
        Callback = function()
        -- Function
        end,
    })

    Tabs.Shop:AddButton({
        Title = "Death Step",
        Callback = function()
        -- Function
        end,
    })

    Tabs.Shop:AddButton({
        Title = "Sharkman Karate",
        Callback = function()
        -- Function
        end,
    })

    Tabs.Shop:AddButton({
        Title = "Electric Claw",
        Callback = function()
        -- Function
        end,
    })

    Tabs.Shop:AddButton({
        Title = "Talon Dragon",
        Callback = function()
        -- Function
        end,
    })

    Tabs.Shop:AddButton({
        Title = "Godhuman",
        Callback = function()
        -- Function
        end,
    })

    Tabs.Shop:AddButton({
        Title = "Sanguine Art",
        Callback = function()
        -- Function
        end,
    })



    Tabs.Shop:AddParagraph({
        Title = "Haki Shop",
        Content = "..."
    })

        Tabs.Shop:AddButton({
        Title = "Buy Soru",
        Callback = function()
            print("Coming Soon Update")
        end,
    })
    
        Tabs.Shop:AddButton({
        Title = "Buy Ken",
        Callback = function()
            print("Coming Soon Update")
        end,
    }) 
   
        Tabs.Shop:AddButton({
        Title = "Buy Skyjump",
        Callback = function()
            print("Coming Soon Update")
        end,
    }) 
    


    local Input = Tabs.Status:AddInput("Input", {
        Title = "Input Jobid",
        Placeholder = "Jobid",
        Numeric = true, -- Only allows numbers
        Finished = true, -- Only calls callback when you press enter
        Callback = function(Value)
            print("Input changed:", Value)
        end
    })

    Input:OnChanged(function()
        print("Input updated:", Input.Value)
    end)
end

    local Toggle = Tabs.Autofarm:AddToggle("Autofarm", {Title = "Auto farm", Default = false })

    Toggle:OnChanged(function()
        print("Hello")
    end)

    local Input = Tabs.Players:AddInput("Input", {
        Title = "Walkspeed",
        Placeholder = "Walkspeed",
        Numeric = true, -- Only allows numbers
        Finished = false, -- Only calls callback when you press enter
        Callback = function(Value)
            print("Input changed:", Value)
        end
    })

    Input:OnChanged(function()
        print("Input updated:", Input.Value)
    end)

    local Toggle = Tabs.Players:AddToggle("Walkspeed", {Title = "Walkspeed", Default = true })

    Toggle:OnChanged(function()
        print("Toggle changed:", Options.Walkspeed.Value)
    end)

    Options.Walkspeed:SetValue(false)

    local MultiDropdown = Tabs.Players:AddDropdown("Teleport island", {
        Title = "Teleport island",
        Description = "Selete your island",
        Values = {"Port town", "Sea Castal", "Masion", "Hydra island", "", "", "", "", "", "", "", "", "", ""},
        Multi = true,
        Default = {"Port town"},
    })

    MultiDropdown:SetValue({
        three = true,
        five = true,
        seven = false
    })

    MultiDropdown:OnChanged(function(Value)
        local Values = {}
        for Value, State in next, Value do
            table.insert(Values, Value)
        end
        print("Mutlidropdown changed:", table.concat(Values, ", "))
    end)

    local Toggle = Tabs.Players:AddToggle("Teleport", {Title = "Teleport", Default = true })

    Toggle:OnChanged(function()
        print("Toggle changed:", Options.Teleport.Value)
    end)

    Options.Teleport:SetValue(false)


Fluent:Notify({
    Title = "ZeZer",
    Content = "The script has been loaded.",
    Duration = 8
})

-- You can use the SaveManager:LoadAutoloadConfig() to load a config
-- which has been marked to be one that auto loads!
SaveManager:LoadAutoloadConfig()
