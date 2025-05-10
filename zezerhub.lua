print("Script success")
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "ZeZer Hub-Blox fruits [Free]",
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
    Settingsfarm = Window:AddTab({ Title = "Settings farm", Icon = "" }),
    Autofarm = Window:AddTab({ Title = "Auto farm", Icon = "" }),
    Tp = Window:AddTab({ Title = "Teleport", Icon = "" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "" })
}

local Options = Fluent.Options

do




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



    local Input = Tabs.Status:AddInput("Input", {
        Title = "Input Jobid",
        Placeholder = "Code Join",
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



Fluent:Notify({
    Title = "ZeZer",
    Content = "The script has been loaded.",
    Duration = 8
})

-- You can use the SaveManager:LoadAutoloadConfig() to load a config
-- which has been marked to be one that auto loads!
SaveManager:LoadAutoloadConfig()
