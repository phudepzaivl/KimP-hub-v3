
        if not LPH_OBFUSCATED then
    function LPH_JIT_MAX(...)
        return ...
    end
    function LPH_NO_VIRTUALIZE(...)
        return ...
    end
    function LPH_NO_UPVALUES(...)
        return ...
    end
end
spawn(
    function()
        for v832, v833 in pairs(game:GetService("ReplicatedStorage").Effect.Container:GetChildren()) do
            if ((v833.Name == "Death") or (v833.Name == "Spawn")) then
                v833:Destroy()
            end
        end
    end
)
spawn(
    function()
        for v834, v835 in pairs(game:GetDescendants()) do
            if (v835:IsA("ParticleEmitter") or v835:IsA("Trail")) then
                v835.Lifetime = NumberRange.new(0)
            elseif v835:IsA("Explosion") then
                v835.BlastPressure = 1
                v835.BlastRadius = 1
            elseif (v835:IsA("Fire") or v835:IsA("SpotLight") or v835:IsA("Smoke")) then
                v835.Enabled = false
            end
        end
    end
)
do
    local v171 = game.CoreGui:FindFirstChild("MyLibrary")
    if v171 then
        v171:Destroy()
    end
end
do
    local v172 = game.CoreGui:FindFirstChild("openshit")
    if v172 then
        v172:Destroy()
    end
end
do
    local v173 = game.CoreGui:FindFirstChild("Balaraja")
    if v173 then
        v173:Destroy()
    end
end
do
    local v174 = game:GetService("CoreGui"):FindFirstChild("RippleFPS")
    if v174 then
        v174:Destroy()
    end
end
do
    local v175 = game:GetService("CoreGui"):FindFirstChild("Rippletime")
    if v175 then
        v175:Destroy()
    end
end
if (_G.Fast_Delay == nil) then
    _G.Fast_Delay = 0.15
end
local v0 = Instance.new("ScreenGui")
local v1 = Instance.new("TextButton")
local v2 = Instance.new("UICorner")
local v3 = Instance.new("ImageLabel")
local v4 = Instance.new("UIStroke")
v0.Name = "openshit"
v0.Parent = game.CoreGui
v0.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
local v10 = Instance.new("UICorner")
local v11 = Instance.new("UICorner")
local v12 = Instance.new("Frame")
local v13 = Instance.new("ImageButton")
v12.Parent = v0
v12.Name = "buttonframe"
v12.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
v12.BorderColor3 = Color3.fromRGB(0, 0, 0)
v12.BackgroundTransparency = 1
v12.BorderSizePixel = 0
v12.Position = UDim2.new(0.00790273491, 0, 0.233524337, 0)
v12.Size = UDim2.new(0, 51, 0, 50)
v10.Parent = v12
v11.Parent = v13
v2.Parent = v1
v3.Name = "loki"
v3.Parent = v1
v3.BackgroundColor3 = Color3.fromRGB(224, 224, 224)
v3.BackgroundTransparency = 1
v3.Position = UDim2.new(-0.0529999994, 0, -0.244000003, 0)
v3.Size = UDim2.new(0, 69, 0, 62)
v3.Image = "https://i.pinimg.com/564x/08/25/06/082506876327d31cb742bdfa55ebef87.jpg"
v4.Name = "posto"
v4.Parent = v1
v4.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
v4.Color = Color3.fromRGB(224, 224, 224)
v4.LineJoinMode = Enum.LineJoinMode.Round
v4.Thickness = 1
v4.Transparency = 0
v4.Enabled = true
v4.Archivable = true
local v43 = game:GetService("UserInputService")
local v44 = game:GetService("TweenService")
local function v45(v176, v177)
    local v178 = nil
    local v179 = nil
    local v180 = nil
    local v181 = nil
    local function v182(v836)
        local v837 = v836.Position - v180
        local v838 = UDim2.new(v181.X.Scale, v181.X.Offset + v837.X, v181.Y.Scale, v181.Y.Offset + v837.Y)
        local v839 = v44:Create(v177, TweenInfo.new(0.15), {Position = v838})
        v839:Play()
    end
    v176.InputBegan:Connect(
        function(v840)
            if
                ((v840.UserInputType == Enum.UserInputType.MouseButton1) or
                    (v840.UserInputType == Enum.UserInputType.Touch))
             then
                v178 = true
                v180 = v840.Position
                v181 = v177.Position
                v840.Changed:Connect(
                    function()
                        if (v840.UserInputState == Enum.UserInputState.End) then
                            v178 = false
                        end
                    end
                )
            end
        end
    )
    v176.InputChanged:Connect(
        function(v841)
            if
                ((v841.UserInputType == Enum.UserInputType.MouseMovement) or
                    (v841.UserInputType == Enum.UserInputType.Touch))
             then
                v179 = v841
            end
        end
    )
    v43.InputChanged:Connect(
        function(v842)
            if ((v842 == v179) and v178) then
                v182(v842)
            end
        end
    )
end
_G.BGColor_1 = Color3.fromRGB(30, 30, 30)
_G.BGColor_2 = Color3.fromRGB(20, 20, 20)
_G.Color = Color3.fromRGB(255, 255, 255)
_G.WindowBackgroundColor = Color3.fromRGB(12, 12, 12)
_G.BackgroundItemColor = Color3.fromRGB(20, 20, 20)
_G.TabWindowColor = Color3.fromRGB(30, 30, 30)
_G.ContainerColor = Color3.fromRGB(30, 30, 30)
_G.TitleTextColor = Color3.fromRGB(150, 150, 150)
_G.ImageColor = Color3.fromRGB(150, 150, 150)
_G.LineThemeColor = Color3.fromRGB(150, 150, 150)
_G.TabTextColor = Color3.fromRGB(150, 150, 150)
_G.TabImageColor = Color3.fromRGB(150, 150, 150)
_G.TabThemeColor = Color3.fromRGB(250, 0, 0)
_G.SectionColor = Color3.fromRGB(150, 150, 150)
_G.SectionImageColor = Color3.fromRGB(150, 150, 150)
_G.SectionTextColor = Color3.fromRGB(150, 150, 150)
_G.SectionOn = Color3.fromRGB(0, 250, 0)
_G.HubName = "KimP Roblox V3"
_G.StrokeColor = Color3.fromRGB(0, 191, 255)
_G.ColorUser = Color3.fromRGB(0, 191, 255)
_G.ColorMain = Color3.fromRGB(0, 191, 255)
_G.ColorSetting = Color3.fromRGB(0, 191, 255)
_G.ColorQuest = Color3.fromRGB(0, 191, 255)
_G.ColorStats = Color3.fromRGB(0, 191, 255)
_G.ColorSea = Color3.fromRGB(0, 191, 255)
_G.ColorCombat = Color3.fromRGB(0, 191, 255)
_G.ColorTP = Color3.fromRGB(0, 191, 255)
_G.ColorRaid = Color3.fromRGB(0, 191, 255)
_G.ColorRace = Color3.fromRGB(0, 191, 255)
_G.ColorDF = Color3.fromRGB(0, 191, 255)
_G.ColorShop = Color3.fromRGB(0, 191, 255)
_G.ColorMisc = Color3.fromRGB(0, 191, 255)
local v46 = {}
local v47 = {}
local v44 = game:GetService("TweenService")
local v48 = Instance.new("ScreenGui")
v48.Name = "Balaraja"
v48.Parent = game.CoreGui
v48.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
local v52 = Instance.new("Frame")
v52.Name = "NotiFrame"
v52.Parent = v48
v52.AnchorPoint = Vector2.new(0.5, 0.5)
v52.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
v52.BorderSizePixel = 0
v52.Position = UDim2.new(1, -210, 1, 100)
v52.Size = UDim2.new(0, 400, 0, 500)
v52.ClipsDescendants = true
v52.BackgroundTransparency = 1
local v62 = Instance.new("UIListLayout")
v62.Parent = v52
v62.SortOrder = Enum.SortOrder.LayoutOrder
v62.Padding = UDim.new(0, 5)
v47.Notification = function(v183, v184, v185, v186)
    local v187 = Instance.new("Frame")
    v187.Name = "TitleFrame"
    v187.Parent = v52
    v187.AnchorPoint = Vector2.new(0.5, 0.5)
    v187.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    v187.BorderSizePixel = 0
    v187.Position = UDim2.new(0.5, 0, 0.5, 0)
    v187.Size = UDim2.new(0, 0, 0, 0)
    v187.ClipsDescendants = true
    v187.BackgroundTransparency = 0
    local v197 = Instance.new("UICorner")
    v197.CornerRadius = UDim.new(0, 4)
    v197.Name = ""
    v197.Parent = v187
    v187:TweenSizeAndPosition(UDim2.new(0, 400 - 10, 0, 70), UDim2.new(0.5, 0, 0.5, 0), "Out", "Quad", 0.3, true)
    local v201 = Instance.new("ImageLabel")
    v201.Parent = v187
    v201.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    v201.BackgroundTransparency = 1
    v201.AnchorPoint = Vector2.new(0.5, 0.5)
    v201.Position = UDim2.new(0.9, 0, 0.5, 0)
    v201.Size = UDim2.new(0, 90, 0, 90)
    v201.Image = "rbxassetid://"
    local v209 = Instance.new("TextLabel")
    v209.Parent = v187
    v209.Name = "TextLabel_Tap"
    v209.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    v209.Size = UDim2.new(0, 160, 0, 25)
    v209.Font = Enum.Font.Code
    v209.Text = v184
    v209.TextColor3 = Color3.fromRGB(30, 30, 30)
    v209.TextSize = 17
    v209.AnchorPoint = Vector2.new(0.5, 0.5)
    v209.Position = UDim2.new(0.23, 0, 0.3, 0)
    v209.TextXAlignment = Enum.TextXAlignment.Left
    v209.BackgroundTransparency = 1
    local v224 = Instance.new("Frame")
    v224.Name = "LableFrame"
    v224.Parent = v187
    v224.AnchorPoint = Vector2.new(0.5, 0.5)
    v224.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    v224.BorderSizePixel = 0
    v224.Position = UDim2.new(0.36, 0, 0.67, 0)
    v224.Size = UDim2.new(0, 260, 0, 25)
    v224.ClipsDescendants = true
    v224.BackgroundTransparency = 1
    local v234 = Instance.new("TextLabel")
    v234.Parent = v224
    v234.Name = "TextLabel_Tap"
    v234.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    v234.Size = UDim2.new(0, 260, 0, 25)
    v234.Font = Enum.Font.Code
    v234.Text = v185
    v234.TextColor3 = Color3.fromRGB(255, 255, 255)
    v234.TextSize = 15
    v234.AnchorPoint = Vector2.new(0.5, 0.5)
    v234.Position = UDim2.new(0.5, 0, 0.5, 0)
    v234.TextXAlignment = Enum.TextXAlignment.Left
    v234.BackgroundTransparency = 1
    repeat
        wait()
    until v187.Size == UDim2.new(0, 400 - 10, 0, 70)
    local v247 = Instance.new("Frame")
    v247.Name = "Time"
    v247.Parent = v187
    v247.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    v247.BorderSizePixel = 0
    v247.Position = UDim2.new(0, 0, 0, 0)
    v247.Size = UDim2.new(0, 0, 0, 0)
    v247.ClipsDescendants = false
    v247.BackgroundTransparency = 0
    local v256 = Instance.new("UICorner")
    v256.CornerRadius = UDim.new(0, 4)
    v256.Name = ""
    v256.Parent = v247
    v247:TweenSizeAndPosition(UDim2.new(0, 400 - 10, 0, 3), UDim2.new(0, 0, 0, 0), "Out", "Quad", 0.3, true)
    repeat
        wait()
    until v247.Size == UDim2.new(0, 400 - 10, 0, 3)
    v44:Create(
        v247,
        TweenInfo.new(tonumber(v186), Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
        {Size = UDim2.new(0, 0, 0, 3)}
    ):Play()
    delay(
        tonumber(v186),
        function()
            v44:Create(
                v187,
                TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.InOut),
                {Size = UDim2.new(0, 0, 0, 0)}
            ):Play()
            wait(0.3)
            v187:Destroy()
        end
    )
end
v46.Window = function(v260, v261, v262, v263)
    local v264 = {}
    local v265 = false
    local v266 = false
    local v267 = false
    local v262 = v262 or 14270030211
    local v268 = ""
    local v263 = v263 or Enum.KeyCode.RightControl
    local v269 = string.gsub(tostring(v263), "Enum.KeyCode.", "")
    local v270 = Instance.new("ScreenGui")
    local v271 = Instance.new("Frame")
    local v272 = Instance.new("UICorner")
    v270.Name = "MyLibrary"
    v270.Parent = game.CoreGui
    v271.Name = "Main"
    v271.Parent = v270
    v271.AnchorPoint = Vector2.new(0.5, 0.5)
    v271.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    v271.BackgroundTransparency = 0
    v271.BorderColor3 = Color3.fromRGB(0, 0, 0)
    v271.BorderSizePixel = 0
    v271.ClipsDescendants = true
    v271.Position = UDim2.new(0.5, 0, 0.5, 0)
    v271.Size = UDim2.new(0, 220, 0, 300)
    v271:TweenSize(UDim2.new(0, 220, 0, 300), "Out", "Quad", 0.5, true)
    v272.CornerRadius = UDim.new(0, 4)
    v272.Name = "MCNR"
    v272.Parent = v271
    local v289 = Instance.new("UIStroke")
    v289.Name = "posto"
    v289.Parent = v271
    v289.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    v289.Color = _G.StrokeColor
    v289.LineJoinMode = Enum.LineJoinMode.Round
    v289.Thickness = 1.5
    v289.Transparency = 0
    v289.Enabled = true
    v289.Archivable = true
    local v301 = Instance.new("Frame")
    local v302 = Instance.new("ImageLabel")
    v301.Name = "Top"
    v301.Parent = v271
    v301.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    v301.BackgroundTransparency = 1
    v301.BorderColor3 = Color3.fromRGB(0, 0, 0)
    v301.BorderSizePixel = 0
    v301.Size = UDim2.new(1, 0, 0, 30)
    local v310 = Instance.new("UICorner")
    v310.CornerRadius = UDim.new(0, 4)
    v310.Name = "TCNR"
    v310.Parent = v301
    local v314 = Instance.new("TextLabel")
    v314.Name = "HubName"
    v314.Parent = v301
    v314.AnchorPoint = Vector2.new(0.5, 0.5)
    v314.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    v314.BackgroundTransparency = 1
    v314.BorderColor3 = Color3.fromRGB(0, 0, 0)
    v314.BorderSizePixel = 0
    v314.Position = UDim2.new(0.5, 3, 0.5, 0)
    v314.Size = UDim2.new(0, 150, 1, 0)
    v314.Font = Enum.Font.Ubuntu
    v314.Text = "KimP Roblox V3"
    v314.TextColor3 = Color3.fromRGB(255, 255, 255)
    v314.TextSize = 16
    v314.TextStrokeTransparency = 0
    local v330 = Instance.new("ImageButton")
    v330.Name = "HubLogo"
    v330.Parent = v301
    v330.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    v330.BackgroundTransparency = 1
    v330.BorderColor3 = Color3.fromRGB(0, 0, 0)
    v330.BorderSizePixel = 0
    v330.Position = UDim2.new(0, 60, 0, 0)
    v330.Size = UDim2.new(0, 30, 1, 0)
    v330.Image = "http://www.roblox.com/asset/?id="
    local v340 = Instance.new("TextLabel")
    v340.Name = "Name"
    v340.Parent = v301
    v340.BackgroundColor3 = Color3.fromRGB(35, 255, 255)
    v340.BackgroundTransparency = 1
    v340.Position = UDim2.new(0.0909756112, 0, 0, 0)
    v340.Size = UDim2.new(0, 0, 0, 0)
    v340.Font = Enum.Font.Code
    v340.Text = v261
    v340.TextColor3 = Color3.fromRGB(255, 255, 255)
    v340.TextSize = 14
    local v352 = Instance.new("Frame")
    local v353 = Instance.new("ScrollingFrame")
    local v354 = Instance.new("UIPadding")
    local v355 = Instance.new("UIListLayout")
    local v356 = Instance.new("UICorner")
    local v357 = Instance.new("UIPadding")
    local v358 = Instance.new("UIListLayout")
    local v359 = Instance.new("UICorner")
    v352.Name = "Tab"
    v352.Parent = v271
    v352.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    v352.BackgroundTransparency = 0
    v352.BorderColor3 = Color3.fromRGB(0, 0, 0)
    v352.BorderSizePixel = 0
    v352.Visible = true
    v352.Size = UDim2.new(0, 0, 1, 0)
    local v368 = Instance.new("UIStroke")
    v368.Name = "posto"
    v368.Parent = v352
    v368.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    v368.Color = _G.StrokeColor
    v368.LineJoinMode = Enum.LineJoinMode.Round
    v368.Thickness = 1.5
    v368.Transparency = 0
    v368.Enabled = true
    v368.Archivable = true
    local v378 = Instance.new("ImageButton")
    v378.Name = "OpenTab"
    v378.Parent = v352
    v378.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    v378.BackgroundTransparency = 1
    v378.BorderColor3 = Color3.fromRGB(0, 0, 0)
    v378.BorderSizePixel = 0
    v378.ZIndex = 0
    v378.ImageTransparency = 1
    v378.Visible = true
    v378.Position = UDim2.new(0, 8, 0, 0)
    v378.Size = UDim2.new(0, 30, 0, 30)
    v378.Image = ""
    local v391 = Instance.new("ImageButton")
    v391.Name = "OpenTab"
    v391.Parent = v301
    v391.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    v391.BackgroundTransparency = 1
    v391.BorderColor3 = Color3.fromRGB(0, 0, 0)
    v391.BorderSizePixel = 0
    v391.Position = UDim2.new(0, 8, 0, 0)
    v391.Size = UDim2.new(0, 30, 1, 0)
    v391.Visible = true
    v391.Image = "http://www.roblox.com/asset/?id=15381251591"
    v391.MouseButton1Click:Connect(
        function()
            if (v266 == false) then
                v266 = true
                v352:TweenSize(UDim2.new(0, 100, 1, 0), "In", "Quad", 0.4, true)
                v352.ZIndex = 2
                v391.ZIndex = 4
                v391.Position = UDim2.new(0, 4, 0, 0)
                v391.Size = UDim2.new(0, 20, 1, 0)
                v391.Rotation = 270
                v378.Visible = true
                v378.ZIndex = 3
            else
                v266 = false
                v352:TweenSize(UDim2.new(0, 0, 1, 0), "In", "Quad", 0.4, true)
                v391.ZIndex = 2
                v391.Rotation = 0
                v391.Position = UDim2.new(0, 8, 0, 0)
                v391.Size = UDim2.new(0, 30, 1, 0)
                v378.ZIndex = 0
            end
        end
    )
    v353.Name = "ScrollTab"
    v353.Parent = v352
    v353.Active = true
    v353.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    v353.BackgroundTransparency = 1
    v353.BorderColor3 = Color3.fromRGB(0, 0, 0)
    v353.BorderSizePixel = 0
    v353.Selectable = false
    v353.Visible = true
    v353.ZIndex = 2
    v353.Position = UDim2.new(0, 0, 0.126666665, 0)
    v353.Size = UDim2.new(1, 0, 0.873333335, 0)
    v353.ScrollBarThickness = 0
    v354.Name = "PDD"
    v354.Parent = v353
    v354.PaddingBottom = UDim.new(0, 8)
    v354.PaddingLeft = UDim.new(0, 8)
    v354.PaddingRight = UDim.new(0, 8)
    v354.PaddingTop = UDim.new(0, 8)
    v355.Name = "PLL"
    v355.Parent = v353
    v355.SortOrder = Enum.SortOrder.LayoutOrder
    v355.Padding = UDim.new(0, 0)
    v358.Name = "TabCorner"
    v358.Parent = v352
    v358.SortOrder = Enum.SortOrder.LayoutOrder
    v358.Padding = UDim.new(0, 4)
    v359.Name = "TCNR"
    v359.Parent = v352
    local v432 = Instance.new("Frame")
    local v433 = Instance.new("UICorner")
    local v434 = Instance.new("Frame")
    local v435 = Instance.new("Folder")
    local v436 = Instance.new("UIPageLayout")
    v432.Name = "Page"
    v432.Parent = v271
    v432.AnchorPoint = Vector2.new(0.5, 0.5)
    v432.BackgroundColor3 = Color3.fromRGB(0, 0, 40)
    v432.BackgroundTransparency = 1
    v432.BorderColor3 = Color3.fromRGB(0, 0, 0)
    v432.BorderSizePixel = 0
    v432.Position = UDim2.new(0.5, 0, 0.5, 14)
    v432.Size = UDim2.new(0, 210, 0, 260)
    v432.ZIndex = 1
    v433.CornerRadius = UDim.new(0, 6)
    v433.Name = "PCNR"
    v433.Parent = v432
    v434.Name = "MainPage"
    v434.Parent = v432
    v434.BackgroundColor3 = Color3.fromRGB(0, 0, 40)
    v434.BackgroundTransparency = 1
    v434.BorderColor3 = Color3.fromRGB(0, 0, 0)
    v434.BorderSizePixel = 0
    v434.ClipsDescendants = true
    v434.Size = UDim2.new(1, 0, 1, 0)
    v435.Name = "PageList"
    v435.Parent = v434
    v436.Parent = v435
    v436.SortOrder = Enum.SortOrder.LayoutOrder
    v436.EasingDirection = Enum.EasingDirection.Out
    v436.EasingStyle = Enum.EasingStyle.Quad
    v436.FillDirection = Enum.FillDirection.Vertical
    v436.Padding = UDim.new(0, 200)
    v436.GamepadInputEnabled = false
    v436.ScrollWheelInputEnabled = false
    v436.TouchInputEnabled = false
    v436.TweenTime = 0.4
    v45(v301, v271)
    v45(v13)
    v43.InputBegan:Connect(
        function(v843)
            if (v843.KeyCode == Enum.KeyCode[v269]) then
                if (v265 == false) then
                    v265 = true
                    v271:TweenSize(UDim2.new(0, 0, 0, 0), "In", "Quad", 0.4, true)
                    wait(0.6)
                    v270.Enabled = false
                else
                    v265 = false
                    v270.Enabled = true
                    v271:TweenSize(UDim2.new(0, 220, 0, 300), "Out", "Quad", 0.4, true)
                end
            end
        end
    )
    local v473 = {}
    v473.T = function(v844, v845, v846, v847)
        local v848 = Instance.new("TextButton")
        local v849 = Instance.new("ImageLabel")
        local v850 = Instance.new("UIPadding")
        local v851 = Instance.new("UIListLayout")
        v848.Name = v845 .. "Server"
        v848.Parent = v353
        v848.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        v848.BackgroundTransparency = 0
        v848.BorderColor3 = Color3.fromRGB(0, 0, 0)
        v848.BorderSizePixel = 0
        v848.ClipsDescendants = true
        v848.Visible = true
        v848.ZIndex = 2
        v848.Position = UDim2.new(0, 0, 0.0774647892, 0)
        v848.Size = UDim2.new(1, 0, 0, 28)
        v848.Font = Enum.Font.Ubuntu
        v848.Text = v845
        v848.TextColor3 = Color3.fromRGB(255, 255, 255)
        v848.TextSize = 14
        local v868 = Instance.new("Frame")
        v868.Name = "TabLine"
        v868.Parent = v353
        v868.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        v868.BorderColor3 = Color3.fromRGB(0, 0, 0)
        v868.BorderSizePixel = 0
        v868.ClipsDescendants = true
        v868.Visible = true
        v868.ZIndex = 2
        v868.Size = UDim2.new(1, 0, 0, 2)
        v356.CornerRadius = UDim.new(0, 0)
        v356.Parent = v848
        local v880 = Instance.new("Frame")
        local v881 = Instance.new("UICorner")
        v880.Name = "TabFrame"
        v880.Parent = v848
        v880.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        v880.BackgroundTransparency = 1
        v880.BorderColor3 = Color3.fromRGB(0, 0, 0)
        v880.BorderSizePixel = 0
        v880.ClipsDescendants = true
        v880.Visible = true
        v880.ZIndex = 2
        v880.Position = UDim2.new(0, 0, 0, 5)
        v880.Size = UDim2.new(0, 18, 0, 18)
        v881.CornerRadius = UDim.new(0, 5)
        v881.Parent = v880
        v849.Name = v845 or "TabImage"
        v849.Parent = v880
        v849.BackgroundColor3 = _G.Color
        v849.BackgroundTransparency = 1
        v849.BorderColor3 = _G.Color
        v849.BorderSizePixel = 0
        v849.ClipsDescendants = true
        v849.Visible = true
        v849.ZIndex = 2
        v849.Size = UDim2.new(1, 0, 1, 0)
        v849.Image = v846 or "rbxassetid://8666601749"
        local v906 = Instance.new("ScrollingFrame")
        v906.Name = v845 .. "_Page"
        v906.Parent = v435
        v906.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        v906.BackgroundTransparency = 1
        v906.BorderColor3 = Color3.fromRGB(0, 0, 0)
        v906.BorderSizePixel = 0
        v906.Active = true
        v906.Selectable = false
        v906.Size = UDim2.new(1, 0, 1, 0)
        v906.ScrollBarThickness = 0
        v850.Parent = v906
        v850.PaddingBottom = UDim.new(0, 1)
        v850.PaddingLeft = UDim.new(0, 4)
        v850.PaddingRight = UDim.new(0, 1)
        v850.PaddingTop = UDim.new(0, 4)
        v851.Parent = v906
        v851.SortOrder = Enum.SortOrder.LayoutOrder
        v851.Padding = UDim.new(0, 20)
        v848.MouseButton1Click:Connect(
            function()
                for v1815, v1816 in next, v353:GetChildren() do
                    if v1816:IsA("TextButton") then
                        v44:Create(
                            v1816,
                            TweenInfo.new(0.6, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {TextTransparency = 0.5}
                        ):Play()
                    end
                    v44:Create(
                        v848,
                        TweenInfo.new(0.6, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {TextTransparency = 0}
                    ):Play()
                end
                for v1817, v1818 in next, v435:GetChildren() do
                    v268 = string.gsub(v848.Name, "Server", "") .. "_Page"
                    if (v1818.Name == v268) then
                        v436:JumpTo(v1818)
                    end
                end
            end
        )
        if (v267 == false) then
            for v1959, v1960 in next, v353:GetChildren() do
                if v1960:IsA("TextButton") then
                    v44:Create(
                        v1960,
                        TweenInfo.new(0.6, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {TextTransparency = 1}
                    ):Play()
                end
                v44:Create(
                    v848,
                    TweenInfo.new(0.6, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {TextTransparency = 0}
                ):Play()
            end
            v436:JumpToIndex(1)
            v267 = true
        end
        game:GetService("RunService").Stepped:Connect(
            function()
                pcall(
                    function()
                        v906.CanvasSize = UDim2.new(0, 0, 0, v851.AbsoluteContentSize.Y + 20)
                        v353.CanvasSize = UDim2.new(0, 0, 0, v355.AbsoluteContentSize.Y + 20)
                    end
                )
            end
        )
        local v926 = {}
        v926.Button = function(v1146, v1147, v1148)
            local v1149 = Instance.new("Frame")
            local v1150 = Instance.new("UIPadding")
            local v1151 = Instance.new("TextButton")
            local v1152 = Instance.new("UICorner")
            local v1153 = Instance.new("UIPadding")
            local v1154 = Instance.new("UICorner")
            local v1155 = Instance.new("UIStroke")
            v1149.Name = "Button"
            v1149.Parent = v906
            v1149.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            v1149.BackgroundTransparency = 1
            v1149.BorderColor3 = Color3.fromRGB(0, 0, 0)
            v1149.BorderSizePixel = 0
            v1149.Position = UDim2.new(0.0120000001, 0, 0.00999999978, 0)
            v1149.Size = UDim2.new(0.976000011, 0, 0, 31)
            v1152.CornerRadius = UDim.new(0, 4)
            v1152.Parent = v1149
            v1153.Parent = v1149
            v1153.PaddingLeft = UDim.new(0, 10)
            v1151.Name = "TextBtn"
            v1151.Parent = v1149
            v1151.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            v1151.BackgroundTransparency = 1
            v1151.Position = UDim2.new(-0.0328157693, 0, 0, 0)
            v1151.Size = UDim2.new(0.976000011, 0, 0, 31)
            v1151.AutoButtonColor = false
            v1151.Font = Enum.Font.Ubuntu
            v1151.Text = v1147
            v1151.TextColor3 = Color3.fromRGB(255, 255, 255)
            v1151.TextSize = 14
            v1155.Name = "TextBtnStroke"
            v1155.Parent = v1149
            v1155.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            v1155.Color = clrb or _G.StrokeColor
            v1155.LineJoinMode = Enum.LineJoinMode.Round
            v1155.Thickness = 1.5
            v1155.Transparency = 0
            v1155.Enabled = true
            v1155.Archivable = true
            v1154.CornerRadius = UDim.new(0, 4)
            v1154.Parent = v1151
            v1150.Parent = v1151
            v1150.PaddingLeft = UDim.new(0, 10)
            v1151.MouseEnter:Connect(
                function()
                    v44:Create(
                        Black,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0.7}
                    ):Play()
                end
            )
            v1151.MouseLeave:Connect(
                function()
                    v44:Create(
                        Black,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {BackgroundTransparency = 1}
                    ):Play()
                end
            )
            v1151.MouseButton1Click:Connect(
                function()
                    v1151.TextSize = 0
                    v44:Create(
                        v1151,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {TextSize = 15}
                    ):Play()
                    v1148()
                end
            )
        end
        v926.Toggle = function(v1195, v1196, v1197, v1198)
            local v1199 = Instance.new("TextButton")
            v1199.Name = "Toggle"
            v1199.Parent = v906
            v1199.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            v1199.BackgroundTransparency = 1
            v1199.BorderSizePixel = 0
            v1199.AutoButtonColor = true
            v1199.Size = UDim2.new(0.976000011, 0, 0, 31)
            v1199.Position = UDim2.new(0.0120000001, 0, 1, 0)
            v1199.Font = Enum.Font.SourceSans
            v1199.Text = ""
            v1199.TextColor3 = Color3.fromRGB(0, 0, 0)
            v1199.TextSize = 12
            local v1213 = Instance.new("UIPadding")
            v1213.Parent = v1199
            v1213.PaddingLeft = UDim.new(0, 7)
            v1213.PaddingTop = UDim.new(0, 2)
            local v1217 = Instance.new("UIStroke")
            v1217.Name = "ImageSTR"
            v1217.Parent = v1199
            v1217.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            v1217.Color = v847 or _G.StrokeColor
            v1217.LineJoinMode = Enum.LineJoinMode.Round
            v1217.Thickness = 1.5
            v1217.Transparency = 0
            v1217.Enabled = true
            v1217.Archivable = true
            local v1229 = Instance.new("UICorner")
            v1229.Name = "ToggleCorner"
            v1229.CornerRadius = UDim.new(0, 5)
            v1229.Parent = v1199
            local v1233 = Instance.new("TextLabel")
            v1233.Name = "ToggleLabel"
            v1233.Parent = v1199
            v1233.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            v1233.BackgroundTransparency = 1
            v1233.Size = UDim2.new(1, -30, 0, 26)
            v1233.Font = Enum.Font.Ubuntu
            v1233.Text = v1196
            v1233.TextColor3 = Color3.fromRGB(225, 225, 225)
            v1233.TextSize = 16
            v1233.TextXAlignment = Enum.TextXAlignment.Left
            local v1246 = Instance.new("Frame")
            v1246.Name = "ToggleImage"
            v1246.Parent = v1199
            v1246.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            v1246.BackgroundTransparency = 0.5
            v1246.BorderSizePixel = 0
            v1246.Position = UDim2.new(0.99000001, -24, 0, 5)
            v1246.Size = UDim2.new(0, 20, 0, 20)
            local v1254 = Instance.new("UIStroke")
            v1254.Name = "ImageSTR"
            v1254.Parent = v1246
            v1254.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            v1254.Color = Color3.fromRGB(86, 255, 255)
            v1254.LineJoinMode = Enum.LineJoinMode.Round
            v1254.Thickness = 1.5
            v1254.Transparency = 0
            v1254.Enabled = true
            v1254.Archivable = true
            local v1264 = Instance.new("UICorner")
            v1264.Name = "ToggleImageCorner"
            v1264.CornerRadius = UDim.new(0, 5)
            v1264.Parent = v1246
            local v1268 = Instance.new("Frame")
            v1268.Name = "ToggleImage2"
            v1268.Parent = v1246
            v1268.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
            v1268.Size = UDim2.new(0, 20, 0, 20)
            v1268.Visible = false
            local v1274 = Instance.new("UICorner")
            v1274.Name = "ToggleImageCorner"
            v1274.CornerRadius = UDim.new(0, 5)
            v1274.Parent = v1268
            v1199.MouseEnter:Connect(
                function()
                    v44:Create(
                        v1233,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {TextColor3 = Color3.fromRGB(0, 255, 0)}
                    ):Play()
                end
            )
            v1199.MouseLeave:Connect(
                function()
                    v44:Create(
                        v1233,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {TextColor3 = Color3.fromRGB(255, 255, 255)}
                    ):Play()
                end
            )
            if (v1197 == nil) then
                v1197 = false
            end
            local v1278 = v1197 or false
            v1199.MouseButton1Click:Connect(
                function()
                    if (v1278 == false) then
                        v1278 = true
                        v1268.Visible = true
                        v1268:TweenSize(UDim2.new(0, 20, 0, 20), "In", "Quad", 0.1, true)
                    else
                        v1278 = false
                        v1268:TweenSize(UDim2.new(0, 0, 0, 0), "In", "Quad", 0.4, true)
                        wait(0.1)
                        v1268.Visible = false
                    end
                    v1198(v1278)
                end
            )
            if (v1197 == true) then
                v1268.Visible = true
                v1268:TweenSize(UDim2.new(0, 20, 0, 20), "In", "Quad", 0.1, true)
                v1278 = true
                v1198(v1278)
            end
        end
        v926.Dropdown = function(v1279, v1280, v1281, v1282)
            local v1283 = false
            local v1284 = Instance.new("Frame")
            local v1285 = Instance.new("UICorner")
            local v1286 = Instance.new("TextLabel")
            local v1287 = Instance.new("ScrollingFrame")
            local v1288 = Instance.new("UIListLayout")
            local v1289 = Instance.new("UIPadding")
            local v1290 = Instance.new("TextButton")
            local v1291 = Instance.new("ImageLabel")
            local v1292 = Instance.new("UIStroke")
            v1284.Name = "Dropdown"
            v1284.Parent = v906
            v1284.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
            v1284.BackgroundTransparency = 1
            v1284.ClipsDescendants = true
            v1284.Size = UDim2.new(0.976000011, 0, 0, 31)
            v1292.Name = "posto"
            v1292.Parent = v1284
            v1292.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            v1292.Color = v847 or _G.StrokeColor
            v1292.LineJoinMode = Enum.LineJoinMode.Round
            v1292.Thickness = 1
            v1292.Transparency = 0
            v1292.Enabled = true
            v1292.Archivable = true
            v1285.CornerRadius = UDim.new(0, 5)
            v1285.Parent = v1284
            v1286.Name = "DropTitle"
            v1286.Parent = v1284
            v1286.BackgroundColor3 = Color3.fromRGB(224, 224, 224)
            v1286.BackgroundTransparency = 1
            v1286.Size = UDim2.new(0.976000011, 0, 0, 31)
            v1286.Font = Enum.Font.Gotham
            v1286.Text = v1280 .. " : "
            v1286.TextColor3 = Color3.fromRGB(225, 225, 225)
            v1286.TextSize = 12
            v1287.Name = "DropScroll"
            v1287.Parent = v1286
            v1287.Active = true
            v1287.BackgroundColor3 = Color3.fromRGB(224, 224, 224)
            v1287.BackgroundTransparency = 1
            v1287.BorderSizePixel = 0
            v1287.Position = UDim2.new(0, 0, 0, 31)
            v1287.Size = UDim2.new(0.976000011, 0, 0, 100)
            v1287.CanvasSize = UDim2.new(0, 0, 0, 0)
            v1287.ScrollBarThickness = 3
            v1288.Parent = v1287
            v1288.SortOrder = Enum.SortOrder.LayoutOrder
            v1288.Padding = UDim.new(0, 5)
            v1289.Parent = v1287
            v1289.PaddingLeft = UDim.new(0, 5)
            v1289.PaddingTop = UDim.new(0, 5)
            v1291.Name = "DropImage"
            v1291.Parent = v1284
            v1291.BackgroundColor3 = Color3.fromRGB(224, 224, 224)
            v1291.BackgroundTransparency = 1
            v1291.Position = UDim2.new(0, 280, 0, 6)
            v1291.Rotation = 180
            v1291.Size = UDim2.new(0, 20, 0, 20)
            v1291.Image = "rbxassetid://6031090990"
            v1290.Name = "DropButton"
            v1290.Parent = v1284
            v1290.BackgroundColor3 = Color3.fromRGB(224, 224, 224)
            v1290.BackgroundTransparency = 1
            v1290.Size = UDim2.new(0.976000011, 0, 0, 31)
            v1290.Font = Enum.Font.SourceSans
            v1290.Text = ""
            v1290.TextColor3 = Color3.fromRGB(0, 0, 0)
            v1290.TextSize = 14
            for v1822, v1823 in next, v1281 do
                local v1824 = Instance.new("TextButton")
                v1824.Name = "Item"
                v1824.Parent = v1287
                v1824.BackgroundColor3 = Color3.fromRGB(224, 224, 224)
                v1824.BackgroundTransparency = 1
                v1824.Size = UDim2.new(0.976000011, 0, 0, 26)
                v1824.Font = Enum.Font.Gotham
                v1824.Text = tostring(v1823)
                v1824.TextColor3 = Color3.fromRGB(225, 225, 225)
                v1824.TextSize = 13
                v1824.TextTransparency = 0.5
                v1824.MouseEnter:Connect(
                    function()
                        v44:Create(
                            v1824,
                            TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {TextTransparency = 0}
                        ):Play()
                    end
                )
                v1824.MouseLeave:Connect(
                    function()
                        v44:Create(
                            v1824,
                            TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {TextTransparency = 0.5}
                        ):Play()
                    end
                )
                v1824.MouseButton1Click:Connect(
                    function()
                        v1283 = false
                        v1284:TweenSize(UDim2.new(0.976000011, 0, 0, 31), "Out", "Quad", 0.3, true)
                        v44:Create(
                            v1291,
                            TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {Rotation = 180}
                        ):Play()
                        v1282(v1824.Text)
                        v1286.Text = v1280 .. " : " .. v1824.Text
                    end
                )
            end
            v1287.CanvasSize = UDim2.new(0, 0, 0, v1288.AbsoluteContentSize.Y + 10)
            v1290.MouseButton1Click:Connect(
                function()
                    if (v1283 == false) then
                        v1283 = true
                        v1284:TweenSize(UDim2.new(0.976000011, 0, 0, 131), "Out", "Quad", 0.3, true)
                        v44:Create(
                            v1291,
                            TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {Rotation = 0}
                        ):Play()
                    else
                        v1283 = false
                        v1284:TweenSize(UDim2.new(0.976000011, 0, 0, 31), "Out", "Quad", 0.3, true)
                        v44:Create(
                            v1291,
                            TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {Rotation = 180}
                        ):Play()
                    end
                end
            )
            local v1357 = {}
            v1357.Add = function(v1836, v1837)
                local v1838 = Instance.new("TextButton")
                v1838.Name = "Item"
                v1838.Parent = v1287
                v1838.BackgroundColor3 = Color3.fromRGB(224, 224, 224)
                v1838.BackgroundTransparency = 1
                v1838.Size = UDim2.new(0.976000011, 0, 0, 26)
                v1838.Font = Enum.Font.Gotham
                v1838.Text = tostring(v1837)
                v1838.TextColor3 = Color3.fromRGB(225, 225, 225)
                v1838.TextSize = 13
                v1838.TextTransparency = 0.5
                v1838.MouseEnter:Connect(
                    function()
                        v44:Create(
                            v1838,
                            TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {TextTransparency = 0}
                        ):Play()
                    end
                )
                v1838.MouseLeave:Connect(
                    function()
                        v44:Create(
                            v1838,
                            TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {TextTransparency = 0.5}
                        ):Play()
                    end
                )
                v1838.MouseButton1Click:Connect(
                    function()
                        v1283 = false
                        v1284:TweenSize(UDim2.new(0.976000011, 0, 0, 31), "Out", "Quad", 0.3, true)
                        v44:Create(
                            v1291,
                            TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {Rotation = 180}
                        ):Play()
                        v1282(v1838.Text)
                        v1286.Text = v1280 .. " : " .. v1838.Text
                    end
                )
            end
            v1357.Clear = function(v1850)
                v1286.Text = tostring(v1280) .. " : "
                v1283 = false
                v1284:TweenSize(UDim2.new(0.976000011, 0, 0, 31), "Out", "Quad", 0.3, true)
                v44:Create(v1291, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Rotation = 180}):Play(

                )
                for v1964, v1965 in next, v1287:GetChildren() do
                    if v1965:IsA("TextButton") then
                        v1965:Destroy()
                    end
                end
            end
            return v1357
        end
        v926.Slider = function(v1360, v1361, v1362, v1363, v1364, v1365, v1366)
            local v1367 = Instance.new("Frame")
            local v1368 = Instance.new("UICorner")
            local v1369 = Instance.new("Frame")
            local v1370 = Instance.new("UICorner")
            local v1371 = Instance.new("TextLabel")
            local v1372 = Instance.new("Frame")
            local v1373 = Instance.new("TextButton")
            local v1374 = Instance.new("Frame")
            local v1375 = Instance.new("Frame")
            local v1376 = Instance.new("UICorner")
            local v1377 = Instance.new("UICorner")
            local v1378 = Instance.new("Frame")
            local v1379 = Instance.new("UICorner")
            local v1380 = Instance.new("Frame")
            local v1381 = Instance.new("UICorner")
            local v1382 = Instance.new("TextBox")
            local v1383 = Instance.new("UICorner")
            local v1384 = Instance.new("UIStroke")
            local v1385 = Instance.new("UIStroke")
            v1367.Name = "Slider"
            v1367.Parent = v906
            v1367.BackgroundColor3 = _G.Color
            v1367.BackgroundTransparency = 1
            v1367.Size = UDim2.new(0.976000011, 0, 0, 51)
            v1368.CornerRadius = UDim.new(0, 5)
            v1368.Name = "slidercorner"
            v1368.Parent = v1367
            v1385.Name = "posto"
            v1385.Parent = v1367
            v1385.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            v1385.Color = v1362 or _G.StrokeColor
            v1385.LineJoinMode = Enum.LineJoinMode.Round
            v1385.Thickness = 1.5
            v1385.Transparency = 0
            v1385.Enabled = true
            v1385.Archivable = true
            v1369.Name = "sliderr"
            v1369.Parent = v1367
            v1369.BackgroundTransparency = 1
            v1369.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            v1369.Position = UDim2.new(0, 1, 0, 1)
            v1369.Size = UDim2.new(0, 308, 0, 49)
            v1370.CornerRadius = UDim.new(0, 5)
            v1370.Name = "sliderrcorner"
            v1370.Parent = v1369
            v1371.Name = "SliderLabel"
            v1371.Parent = v1369
            v1371.BackgroundColor3 = Color3.fromRGB(224, 224, 224)
            v1371.BackgroundTransparency = 1
            v1371.Position = UDim2.new(0, 15, 0, 0)
            v1371.Size = UDim2.new(0, 180, 0, 26)
            v1371.Font = Enum.Font.Gotham
            v1371.Text = v1361
            v1371.TextColor3 = Color3.fromRGB(255, 255, 255)
            v1371.TextSize = 12
            v1371.TextTransparency = 0
            v1371.TextXAlignment = Enum.TextXAlignment.Left
            v1372.Name = "HAHA"
            v1372.Parent = v1369
            v1372.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            v1372.BackgroundTransparency = 1
            v1372.Size = UDim2.new(0, 290, 0, 29)
            v1373.Name = "AHEHE"
            v1373.Parent = v1369
            v1373.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            v1373.BackgroundTransparency = 1
            v1373.Position = UDim2.new(0, 10, 0, 35)
            v1373.Size = UDim2.new(0, 290, 0, 5)
            v1373.Font = Enum.Font.SourceSans
            v1373.Text = ""
            v1373.TextColor3 = Color3.fromRGB(0, 0, 0)
            v1373.TextSize = 14
            v1374.Name = "bar"
            v1374.Parent = v1373
            v1374.BackgroundColor3 = _G.BGColor_2
            v1374.Size = UDim2.new(0, 180, 0, 5)
            v1375.Name = "bar1"
            v1375.Parent = v1374
            v1375.BackgroundColor3 = _G.Color
            v1375.BackgroundTransparency = 0
            v1375.Size = UDim2.new(v1365 / v1364, 0, 0, 5)
            v1376.CornerRadius = UDim.new(0, 5)
            v1376.Name = "bar1corner"
            v1376.Parent = v1375
            v1377.CornerRadius = UDim.new(0, 5)
            v1377.Name = "barcorner"
            v1377.Parent = v1374
            v1378.Name = "circlebar"
            v1378.Parent = v1375
            v1378.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            v1378.Position = UDim2.new(1, -2, 0, -3)
            v1378.Size = UDim2.new(0, 10, 0, 10)
            v1379.CornerRadius = UDim.new(0, 100)
            v1379.Parent = v1378
            v1380.Name = "slidervalue"
            v1380.Parent = v1369
            v1380.BackgroundColor3 = _G.Color
            v1380.BackgroundTransparency = 1
            v1380.Position = UDim2.new(0, 245, 0, 5)
            v1380.Size = UDim2.new(0, 65, 0, 18)
            v1381.CornerRadius = UDim.new(0, 5)
            v1381.Name = "valuecorner"
            v1381.Parent = v1380
            v1382.Parent = v1380
            v1382.BackgroundColor3 = _G.BGColor_2
            v1382.Position = UDim2.new(0, -110, 0, 0)
            v1382.Size = UDim2.new(0, 60, 0, 20)
            v1382.Font = Enum.Font.Gotham
            v1382.TextColor3 = Color3.fromRGB(255, 255, 255)
            v1382.TextSize = 9
            v1382.Text = v1365
            v1382.TextTransparency = 0
            v1384.Name = "posto"
            v1384.Parent = v1382
            v1384.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            v1384.Color = Color3.fromRGB(86, 255, 255)
            v1384.LineJoinMode = Enum.LineJoinMode.Round
            v1384.Thickness = 1.5
            v1384.Transparency = 0
            v1384.Enabled = true
            v1384.Archivable = true
            v1383.CornerRadius = UDim.new(0, 5)
            v1383.Parent = v1382
            local v1495 = game.Players.LocalPlayer:GetMouse()
            local v1496 = game:GetService("UserInputService")
            if (Value == nil) then
                Value = v1365
                pcall(
                    function()
                        v1366(Value)
                    end
                )
            end
            v1373.MouseButton1Down:Connect(
                function()
                    Value =
                        math.floor(
                        (((tonumber(v1364) - tonumber(v1363)) / 180) * v1375.AbsoluteSize.X) + tonumber(v1363)
                    ) or 0
                    pcall(
                        function()
                            v1366(Value)
                        end
                    )
                    v1375.Size = UDim2.new(0, math.clamp(v1495.X - v1375.AbsolutePosition.X, 0, 180), 0, 5)
                    v1378.Position = UDim2.new(0, math.clamp((v1495.X - v1375.AbsolutePosition.X) - 2, 0, 180), 0, -3)
                    moveconnection =
                        v1495.Move:Connect(
                        function()
                            v1382.Text = Value
                            Value =
                                math.floor(
                                (((tonumber(v1364) - tonumber(v1363)) / 180) * v1375.AbsoluteSize.X) + tonumber(v1363)
                            )
                            pcall(
                                function()
                                    v1366(Value)
                                end
                            )
                            v1375.Size = UDim2.new(0, math.clamp(v1495.X - v1375.AbsolutePosition.X, 0, 180), 0, 5)
                            v1378.Position =
                                UDim2.new(0, math.clamp((v1495.X - v1375.AbsolutePosition.X) - 2, 0, 180), 0, -3)
                        end
                    )
                    releaseconnection =
                        v1496.InputEnded:Connect(
                        function(v1969)
                            if (v1969.UserInputType == Enum.UserInputType.MouseButton1) then
                                Value =
                                    math.floor(
                                    (((tonumber(v1364) - tonumber(v1363)) / 180) * v1375.AbsoluteSize.X) +
                                        tonumber(v1363)
                                )
                                pcall(
                                    function()
                                        v1366(Value)
                                    end
                                )
                                v1375.Size = UDim2.new(0, math.clamp(v1495.X - v1375.AbsolutePosition.X, 0, 180), 0, 5)
                                v1378.Position =
                                    UDim2.new(0, math.clamp((v1495.X - v1375.AbsolutePosition.X) - 2, 0, 180), 0, -3)
                                moveconnection:Disconnect()
                                releaseconnection:Disconnect()
                            end
                        end
                    )
                end
            )
            releaseconnection =
                v1496.InputEnded:Connect(
                function(v1854)
                    if (v1854.UserInputType == Enum.UserInputType.MouseButton1) then
                        Value =
                            math.floor(
                            (((tonumber(v1364) - tonumber(v1363)) / 180) * v1375.AbsoluteSize.X) + tonumber(v1363)
                        )
                        v1382.Text = Value
                    end
                end
            )
            v1382.FocusLost:Connect(
                function()
                    if (tonumber(v1382.Text) > v1364) then
                        v1382.Text = v1364
                    end
                    v1375.Size = UDim2.new((v1382.Text or 0) / v1364, 0, 0, 5)
                    v1378.Position = UDim2.new(1, -2, 0, -3)
                    v1382.Text = tostring(v1382.Text and math.floor(((v1382.Text / v1364) * (v1364 - v1363)) + v1363))
                    pcall(v1366, v1382.Text)
                end
            )
        end
        v926.Textbox = function(v1497, v1498, v1499, v1500)
            local v1501 = Instance.new("Frame")
            local v1502 = Instance.new("UICorner")
            local v1503 = Instance.new("TextLabel")
            local v1504 = Instance.new("UIPadding")
            local v1505 = Instance.new("UICorner")
            local v1506 = Instance.new("TextBox")
            v1501.Name = "TextBox"
            v1501.Parent = v906
            v1501.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            v1501.BackgroundTransparency = 0.8
            v1501.BorderColor3 = Color3.fromRGB(0, 0, 0)
            v1501.BorderSizePixel = 0
            v1501.Position = UDim2.new(0, 0, 0.444861621, 0)
            v1501.Size = UDim2.new(0.976367354, 0, 0.0222412106, 30)
            v1502.CornerRadius = UDim.new(0, 4)
            v1502.Name = "TextBoxCorner"
            v1502.Parent = v1501
            v1504.Parent = v1501
            v1504.PaddingLeft = UDim.new(0, 10)
            v1505.CornerRadius = UDim.new(0, 4)
            v1505.Name = "RealTextBoxCorner"
            v1505.Parent = v1506
            v1503.Parent = v1501
            v1503.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            v1503.BackgroundTransparency = 1
            v1503.BorderColor3 = Color3.fromRGB(0, 0, 0)
            v1503.BorderSizePixel = 0
            v1503.Position = UDim2.new(-0.0328157656, 0, 0, 0)
            v1503.Size = UDim2.new(0, 209, 0, 42)
            v1503.Font = Enum.Font.Ubuntu
            v1503.Text = v1498
            v1503.TextColor3 = Color3.fromRGB(0, 0, 0)
            v1503.TextSize = 16
            v1506.Name = "RealTextBox"
            v1506.Parent = v1501
            v1506.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            v1506.BackgroundTransparency = 1
            v1506.BorderColor3 = Color3.fromRGB(0, 0, 0)
            v1506.BorderSizePixel = 0
            v1506.Position = UDim2.new(0, 215, 0, 5)
            v1506.Size = UDim2.new(0, 80, 0, 32)
            v1506.Font = Enum.Font.SourceSans
            v1506.Text = ""
            v1506.TextColor3 = Color3.fromRGB(0, 0, 0)
            v1506.TextSize = 14
            RealTextbox.FocusLost:Connect(
                function()
                    v1500(RealTextbox.Text)
                    if v1499 then
                        RealTextbox.Text = ""
                    end
                end
            )
        end
        v926.Label = function(v1548, v1549, v1550)
            local v1551 = Instance.new("TextLabel")
            local v1552 = Instance.new("UIPadding")
            local v1553 = {}
            v1551.Name = "Label"
            v1551.Parent = v906
            v1551.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            v1551.BackgroundTransparency = 1
            v1551.BorderColor3 = Color3.fromRGB(0, 0, 0)
            v1551.BorderSizePixel = 0
            v1551.Size = UDim2.new(0.976000011, 0, -0.00400000019, 30)
            v1551.Font = Enum.Font.Ubuntu
            v1551.TextColor3 = v1550 or Color3.fromRGB(255, 255, 255)
            v1551.Text = v1549
            v1551.TextSize = 16
            v1551.TextXAlignment = Enum.TextXAlignment.Left
            v1552.Name = "PaddingLabel"
            v1552.Parent = v1551
            v1552.PaddingLeft = UDim.new(0, 1)
            v1553.Set = function(v1858, v1859, v1860)
                v1551.Text = v1859
                v1551.TextColor3 = v1860
            end
            return v1553
        end
        v926.Label1 = function(v1572, v1573)
            local v1574 = Instance.new("TextLabel")
            local v1575 = Instance.new("UIPadding")
            local v1576 = {}
            v1574.Name = "Label1"
            v1574.Parent = v906
            v1574.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            v1574.BackgroundTransparency = 1
            v1574.BorderColor3 = Color3.fromRGB(0, 0, 0)
            v1574.BorderSizePixel = 0
            v1574.Size = UDim2.new(0.976000011, 0, -0.00400000019, 30)
            v1574.Font = Enum.Font.Ubuntu
            v1574.Text = v1573
            v1574.TextColor3 = Color3.fromRGB(255, 255, 255)
            v1574.TextSize = 16
            v1574.TextXAlignment = Enum.TextXAlignment.Left
            v1575.Name = "PaddingLabel1"
            v1575.Parent = v1574
            v1575.PaddingLeft = UDim.new(0, 1)
            v1576.Refresh = function(v1863, v1864)
                v1574.Text = v1864
            end
            return v1576
        end
        v926.LabelIMG = function(v1595, v1596, v1597, v1598)
            local v1599 = Instance.new("TextLabel")
            local v1600 = Instance.new("UIPadding")
            local v1601 = Instance.new("ImageLabel")
            local v1602 = {}
            v1599.Name = "Label"
            v1599.Parent = v906
            v1599.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            v1599.BackgroundTransparency = 1
            v1599.BorderColor3 = Color3.fromRGB(0, 0, 0)
            v1599.BorderSizePixel = 0
            v1599.Size = UDim2.new(0.976000011, 0, -0.00400000019, 30)
            v1599.Font = Enum.Font.Ubuntu
            v1599.TextColor3 = v1598 or Color3.fromRGB(255, 255, 255)
            v1599.Text = v1596
            v1599.TextSize = 16
            v1599.TextXAlignment = Enum.TextXAlignment.Left
            v1601.Name = v1596 or "TabImage"
            v1601.Parent = v1599
            v1601.BackgroundColor3 = _G.Color
            v1601.BackgroundTransparency = 1
            v1601.Position = UDim2.new(0, 0, 0, 1)
            v1601.Size = UDim2.new(0, 18, 0, 18)
            v1601.Image = v1597 or "rbxassetid://8666601749"
            v1600.Name = "PaddingLabel"
            v1600.Parent = v1599
            v1600.PaddingLeft = UDim.new(0, 1)
            v1602.Set = function(v1866, v1867, v1868)
                v1599.Text = v1867
                v1599.TextColor3 = v1868
            end
            return v1602
        end
        v926.LabelWarn = function(v1628, v1629)
            local v1630 = Instance.new("TextLabel")
            local v1631 = Instance.new("UIPadding")
            local v1632 = {}
            v1630.Name = "Label"
            v1630.Parent = v906
            v1630.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            v1630.BackgroundTransparency = 1
            v1630.BorderColor3 = Color3.fromRGB(0, 0, 0)
            v1630.BorderSizePixel = 0
            v1630.Size = UDim2.new(0.976000011, 0, -0.00400000019, 30)
            v1630.Font = Enum.Font.Ubuntu
            v1630.TextColor3 = Color3.fromRGB(255, 255, 0)
            v1630.Text = v1629
            v1630.TextSize = 16
            v1630.TextXAlignment = Enum.TextXAlignment.Center
            v1631.Name = "PaddingLabel"
            v1631.Parent = Label
            v1631.PaddingLeft = UDim.new(0, 1)
            v1632.Set = function(v1871, v1872)
                v1630.Text = v1872
            end
            return labelfunc
        end
        v926.Seperator = function(v1651, v1652)
            local v1653 = Instance.new("Frame")
            local v1654 = Instance.new("Frame")
            local v1655 = Instance.new("TextLabel")
            local v1656 = Instance.new("Frame")
            local v1657 = Instance.new("UICorner")
            local v1658 = Instance.new("UIPadding")
            v1653.Name = "Seperator"
            v1653.Parent = v906
            v1653.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
            v1653.BackgroundTransparency = 1
            v1653.BorderColor3 = Color3.fromRGB(0, 0, 0)
            v1653.BorderSizePixel = 0
            v1653.Position = UDim2.new(0.0120000001, 0, 0.00999999978, 0)
            v1653.Size = UDim2.new(0, 200, 0, 5)
            v1657.CornerRadius = UDim.new(0, 4)
            v1657.Parent = v1653
            v1658.Parent = v1653
            v1658.PaddingLeft = UDim.new(0, 10)
            v1654.Name = "Sep1"
            v1654.Parent = v1653
            v1654.BackgroundColor3 = color or _G.StrokeColor
            v1654.BorderColor3 = Color3.fromRGB(0, 0, 0)
            v1654.BorderSizePixel = 0
            v1654.Position = UDim2.new(0, -10, 0, 0)
            v1654.Size = UDim2.new(0, 40, 0, 5)
            v1655.Name = "Sep2"
            v1655.Parent = v1653
            v1655.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            v1655.BackgroundTransparency = 1
            v1655.BorderColor3 = Color3.fromRGB(0, 0, 0)
            v1655.BorderSizePixel = 0
            v1655.Position = UDim2.new(0, 20, 0, -9)
            v1655.Size = UDim2.new(0, 140, 0, 20)
            v1655.Font = Enum.Font.Ubuntu
            v1655.Text = v1652
            v1655.TextColor3 = Color3.fromRGB(224, 224, 224)
            v1655.TextSize = 14
            v1656.Name = "Sep3"
            v1656.Parent = v1653
            v1656.BackgroundColor3 = color or _G.StrokeColor
            v1656.BorderColor3 = Color3.fromRGB(0, 0, 0)
            v1656.BorderSizePixel = 0
            v1656.Position = UDim2.new(0, 150, 0, 0)
            v1656.Size = UDim2.new(0, 40, 0, 5)
        end
        v926.Line = function(v1698, v1699)
            local v1700 = Instance.new("Frame")
            local v1701 = Instance.new("Frame")
            v1700.Name = "Linee"
            v1700.Parent = v906
            v1700.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
            v1700.BackgroundTransparency = 1
            v1700.BorderColor3 = Color3.fromRGB(0, 0, 0)
            v1700.BorderSizePixel = 0
            v1700.Position = UDim2.new(0.0120000001, 0, 0.00999999978, 0)
            v1700.Size = UDim2.new(0, 200, 0, 20)
            v1701.Name = "Line"
            v1701.Parent = v1700
            v1701.BackgroundColor3 = v1699 or _G.StrokeColor
            v1701.BorderColor3 = Color3.fromRGB(0, 0, 0)
            v1701.BorderSizePixel = 0
            v1701.Position = UDim2.new(0, 0, 0.449999988, 0)
            v1701.Size = UDim2.new(1, 0, 0, 5)
        end
        return v926
    end
    return v473
end
local v69 = Instance.new("ScreenGui")
local v70 = Instance.new("ImageButton")
local v71 = Instance.new("UICorner")
v69.Name = "ToggleUI"
v69.Parent = game.CoreGui
v69.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
v70.Name = "ToggleButton"
v70.Parent = v69
v70.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
v70.BorderSizePixel = 0
v70.Position = UDim2.new(0.120833337, 0, 0.0952890813, 0)
v70.Size = UDim2.new(0, 53.5, 0, 53.5)
v70.BackgroundTransparency = 1
v70.Image = "rbxassetid://139290470944238"
v70.Draggable = true
v70.MouseButton1Click:Connect(
    function()
        game:GetService("VirtualInputManager"):SendKeyEvent(true, 305, false, game)
        game:GetService("VirtualInputManager"):SendKeyEvent(false, 305, false, game)
    end
)
v71.CornerRadius = UDim.new(0, 10)
v71.Parent = v70
if (game.PlaceId == 2753915549) then
    World1 = true
elseif (game.PlaceId == 4442272183) then
    World2 = true
elseif (game.PlaceId == 7449423635) then
    World3 = true
end
function CheckQuest()
    MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value
    if World1 then
        if ((MyLevel == 1) or (MyLevel <= 9)) then
            Mon = "Bandit"
            LevelQuest = 1
            NameQuest = "BanditQuest1"
            NameMon = "Bandit"
            CFrameQuest = CFrame.new(1059, 17, 1546)
            CFrameMon = CFrame.new(943, 45, 1562)
        elseif ((MyLevel == 10) or (MyLevel <= 14)) then
            Mon = "Monkey"
            LevelQuest = 1
            NameQuest = "JungleQuest"
            NameMon = "Monkey"
            CFrameQuest = CFrame.new(-1598, 37, 153)
            CFrameMon = CFrame.new(-1524, 50, 37)
        elseif ((MyLevel == 15) or (MyLevel <= 29)) then
            Mon = "Gorilla"
            LevelQuest = 2
            NameQuest = "JungleQuest"
            NameMon = "Gorilla"
            CFrameQuest = CFrame.new(-1598, 37, 153)
            CFrameMon = CFrame.new(-1128, 40, -451)
        elseif ((MyLevel == 30) or (MyLevel <= 39)) then
            Mon = "Pirate"
            LevelQuest = 1
            NameQuest = "BuggyQuest1"
            NameMon = "Pirate"
            CFrameQuest = CFrame.new(-1140, 4, 3829)
            CFrameMon = CFrame.new(-1262, 40, 3905)
        elseif ((MyLevel == 40) or (MyLevel <= 59)) then
            Mon = "Brute"
            LevelQuest = 2
            NameQuest = "BuggyQuest1"
            NameMon = "Brute"
            CFrameQuest = CFrame.new(-1140, 4, 3829)
            CFrameMon = CFrame.new(-976, 55, 4304)
        elseif ((MyLevel == 60) or (MyLevel <= 74)) then
            Mon = "Desert Bandit"
            LevelQuest = 1
            NameQuest = "DesertQuest"
            NameMon = "Desert Bandit"
            CFrameQuest = CFrame.new(897, 6, 4389)
            CFrameMon = CFrame.new(924, 7, 4482)
        elseif ((MyLevel == 75) or (MyLevel <= 89)) then
            Mon = "Desert Officer"
            LevelQuest = 2
            NameQuest = "DesertQuest"
            NameMon = "Desert Officer"
            CFrameQuest = CFrame.new(897, 6, 4389)
            CFrameMon = CFrame.new(1608, 9, 4371)
        elseif ((MyLevel == 90) or (MyLevel <= 99)) then
            Mon = "Snow Bandit"
            LevelQuest = 1
            NameQuest = "SnowQuest"
            NameMon = "Snow Bandit"
            CFrameQuest = CFrame.new(1385, 87, -1298)
            CFrameMon = CFrame.new(1362, 120, -1531)
        elseif ((MyLevel == 100) or (MyLevel <= 119)) then
            Mon = "Snowman"
            LevelQuest = 2
            NameQuest = "SnowQuest"
            NameMon = "Snowman"
            CFrameQuest = CFrame.new(1385, 87, -1298)
            CFrameMon = CFrame.new(1243, 140, -1437)
        elseif ((MyLevel == 120) or (MyLevel <= 149)) then
            Mon = "Chief Petty Officer"
            LevelQuest = 1
            NameQuest = "MarineQuest2"
            NameMon = "Chief Petty Officer"
            CFrameQuest = CFrame.new(-5035, 29, 4326)
            CFrameMon = CFrame.new(-4881, 23, 4274)
        elseif ((MyLevel == 150) or (MyLevel <= 174)) then
            Mon = "Sky Bandit"
            LevelQuest = 1
            NameQuest = "SkyQuest"
            NameMon = "Sky Bandit"
            CFrameQuest = CFrame.new(-4844, 718, -2621)
            CFrameMon = CFrame.new(-4953, 296, -2899)
        elseif ((MyLevel == 175) or (MyLevel <= 189)) then
            Mon = "Dark Master"
            LevelQuest = 2
            NameQuest = "SkyQuest"
            NameMon = "Dark Master"
            CFrameQuest = CFrame.new(-4844, 718, -2621)
            CFrameMon = CFrame.new(-5260, 391, -2229)
        elseif ((MyLevel == 190) or (MyLevel <= 209)) then
            Mon = "Prisoner"
            LevelQuest = 1
            NameQuest = "PrisonerQuest"
            NameMon = "Prisoner"
            CFrameQuest = CFrame.new(5306, 2, 477)
            CFrameMon = CFrame.new(5099, "-0", 474)
        elseif ((MyLevel == 210) or (MyLevel <= 249)) then
            Mon = "Dangerous Prisoner"
            LevelQuest = 2
            NameQuest = "PrisonerQuest"
            NameMon = "Dangerous Prisoner"
            CFrameQuest = CFrame.new(5306, 2, 477)
            CFrameMon = CFrame.new(5655, 16, 866)
        elseif ((MyLevel == 250) or (MyLevel <= 274)) then
            Mon = "Toga Warrior"
            LevelQuest = 1
            NameQuest = "ColosseumQuest"
            NameMon = "Toga Warrior"
            CFrameQuest = CFrame.new(-1581, 7, -2982)
            CFrameMon = CFrame.new(-1820, 51, -2741)
        elseif ((MyLevel == 275) or (MyLevel <= 299)) then
            Mon = "Gladiator"
            LevelQuest = 2
            NameQuest = "ColosseumQuest"
            NameMon = "Gladiator"
            CFrameQuest = CFrame.new(-1581, 7, -2982)
            CFrameMon = CFrame.new(-1268, 30, -2996)
        elseif ((MyLevel == 300) or (MyLevel <= 324)) then
            Mon = "Military Soldier"
            LevelQuest = 1
            NameQuest = "MagmaQuest"
            NameMon = "Military Soldier"
            CFrameQuest = CFrame.new(-5319, 12, 8515)
            CFrameMon = CFrame.new(-5335, 46, 8638)
        elseif ((MyLevel == 325) or (MyLevel <= 374)) then
            Mon = "Military Spy"
            LevelQuest = 2
            NameQuest = "MagmaQuest"
            NameMon = "Military Spy"
            CFrameQuest = CFrame.new(-5319, 12, 8515)
            CFrameMon = CFrame.new(-5803, 86, 8829)
        elseif ((MyLevel == 375) or (MyLevel <= 399)) then
            Mon = "Fishman Warrior"
            LevelQuest = 1
            NameQuest = "FishmanQuest"
            NameMon = "Fishman Warrior"
            CFrameQuest = CFrame.new(61122, 18, 1567)
            CFrameMon = CFrame.new(60998, 50, 1534)
        elseif ((MyLevel == 400) or (MyLevel <= 449)) then
            Mon = "Fishman Commando"
            LevelQuest = 2
            NameQuest = "FishmanQuest"
            NameMon = "Fishman Commando"
            CFrameQuest = CFrame.new(61122, 18, 1567)
            CFrameMon = CFrame.new(61866, 55, 1655)
        elseif ((MyLevel == 450) or (MyLevel <= 474)) then
            Mon = "God's Guard"
            LevelQuest = 1
            NameQuest = "SkyExp1Quest"
            NameMon = "God's Guard"
            CFrameQuest = CFrame.new(-4720, 846, -1951)
            CFrameMon = CFrame.new(-4720, 846, -1951)
        elseif ((MyLevel == 475) or (MyLevel <= 524)) then
            Mon = "Shanda"
            LevelQuest = 2
            NameQuest = "SkyExp1Quest"
            NameMon = "Shanda"
            CFrameQuest = CFrame.new(-7861, 5545, -381)
            CFrameMon = CFrame.new(-7741, 5580, -395)
        elseif ((MyLevel == 525) or (MyLevel <= 549)) then
            Mon = "Royal Squad"
            LevelQuest = 1
            NameQuest = "SkyExp2Quest"
            NameMon = "Royal Squad"
            CFrameQuest = CFrame.new(-7903, 5636, -1412)
            CFrameMon = CFrame.new(-7727, 5650, -1410)
        elseif ((MyLevel == 550) or (MyLevel <= 624)) then
            Mon = "Royal Soldier"
            LevelQuest = 2
            NameQuest = "SkyExp2Quest"
            NameMon = "Royal Soldier"
            CFrameQuest = CFrame.new(-7903, 5636, -1412)
            CFrameMon = CFrame.new(-7894, 5640, -1629)
        elseif ((MyLevel == 625) or (MyLevel <= 649)) then
            Mon = "Galley Pirate"
            LevelQuest = 1
            NameQuest = "FountainQuest"
            NameMon = "Galley Pirate"
            CFrameQuest = CFrame.new(5258, 39, 4052)
            CFrameMon = CFrame.new(5391, 70, 4023)
        elseif (MyLevel >= 650) then
            Mon = "Galley Captain"
            LevelQuest = 2
            NameQuest = "FountainQuest"
            NameMon = "Galley Captain"
            CFrameQuest = CFrame.new(5258, 39, 4052)
            CFrameMon = CFrame.new(5985, 70, 4790)
        end
    elseif World2 then
        if ((MyLevel == 700) or (MyLevel <= 724)) then
            Mon = "Raider"
            LevelQuest = 1
            NameQuest = "Area1Quest"
            NameMon = "Raider"
            CFrameQuest = CFrame.new(-427, 73, 1835)
            CFrameMon = CFrame.new(-614, 90, 2240)
        elseif ((MyLevel == 725) or (MyLevel <= 774)) then
            Mon = "Mercenary"
            LevelQuest = 2
            NameQuest = "Area1Quest"
            NameMon = "Mercenary"
            CFrameQuest = CFrame.new(-427, 73, 1835)
            CFrameMon = CFrame.new(-867, 110, 1621)
        elseif ((MyLevel == 775) or (MyLevel <= 874)) then
            Mon = "Swan Pirate"
            LevelQuest = 1
            NameQuest = "Area2Quest"
            NameMon = "Swan Pirate"
            CFrameQuest = CFrame.new(635, 73, 919)
            CFrameMon = CFrame.new(635, 73, 919)
        elseif ((MyLevel == 875) or (MyLevel <= 899)) then
            Mon = "Marine Lieutenant"
            LevelQuest = 1
            NameQuest = "MarineQuest3"
            NameMon = "Marine Lieutenant"
            CFrameQuest = CFrame.new(-2441, 73, -3219)
            CFrameMon = CFrame.new(-2552, 110, -3050)
        elseif ((MyLevel == 900) or (MyLevel <= 949)) then
            Mon = "Marine Captain"
            LevelQuest = 2
            NameQuest = "MarineQuest3"
            NameMon = "Marine Captain"
            CFrameQuest = CFrame.new(-2441, 73, -3219)
            CFrameMon = CFrame.new(-1695, 110, -3299)
        elseif ((MyLevel == 950) or (MyLevel <= 974)) then
            Mon = "Zombie"
            LevelQuest = 1
            NameQuest = "ZombieQuest"
            NameMon = "Zombie"
            CFrameQuest = CFrame.new(-5495, 48, -794)
            CFrameMon = CFrame.new(-5715, 90, -917)
        elseif ((MyLevel == 975) or (MyLevel <= 999)) then
            Mon = "Vampire"
            LevelQuest = 2
            NameQuest = "ZombieQuest"
            NameMon = "Vampire"
            CFrameQuest = CFrame.new(-5495, 48, -794)
            CFrameMon = CFrame.new(-6027, 50, -1130)
        elseif ((MyLevel == 1000) or (MyLevel <= 1049)) then
            Mon = "Snow Trooper"
            LevelQuest = 1
            NameQuest = "SnowMountainQuest"
            NameMon = "Snow Trooper"
            CFrameQuest = CFrame.new(607, 401, -5371)
            CFrameMon = CFrame.new(445, 440, -5175)
        elseif ((MyLevel == 1050) or (MyLevel <= 1099)) then
            Mon = "Winter Warrior"
            LevelQuest = 2
            NameQuest = "SnowMountainQuest"
            NameMon = "Winter Warrior"
            CFrameQuest = CFrame.new(607, 401, -5371)
            CFrameMon = CFrame.new(1224, 460, -5332)
        elseif ((MyLevel == 1100) or (MyLevel <= 1124)) then
            Mon = "Lab Subordinate"
            LevelQuest = 1
            NameQuest = "IceSideQuest"
            NameMon = "Lab Subordinate"
            CFrameQuest = CFrame.new(-6061, 16, -4904)
            CFrameMon = CFrame.new(-5941, 50, -4322)
        elseif ((MyLevel == 1125) or (MyLevel <= 1174)) then
            Mon = "Horned Warrior"
            LevelQuest = 2
            NameQuest = "IceSideQuest"
            NameMon = "Horned Warrior"
            CFrameQuest = CFrame.new(-6061, 16, -4904)
            CFrameMon = CFrame.new(-6306, 50, -5752)
        elseif ((MyLevel == 1175) or (MyLevel <= 1199)) then
            Mon = "Magma Ninja"
            LevelQuest = 1
            NameQuest = "FireSideQuest"
            NameMon = "Magma Ninja"
            CFrameQuest = CFrame.new(-5430, 16, -5298)
            CFrameMon = CFrame.new(-5233, 60, -6227)
        elseif ((MyLevel == 1200) or (MyLevel <= 1249)) then
            Mon = "Lava Pirate"
            LevelQuest = 2
            NameQuest = "FireSideQuest"
            NameMon = "Lava Pirate"
            CFrameQuest = CFrame.new(-5430, 16, -5298)
            CFrameMon = CFrame.new(-4955, 60, -4836)
        elseif ((MyLevel == 1250) or (MyLevel <= 1274)) then
            Mon = "Ship Deckhand"
            LevelQuest = 1
            NameQuest = "ShipQuest1"
            NameMon = "Ship Deckhand"
            CFrameQuest = CFrame.new(1033, 125, 32909)
            CFrameMon = CFrame.new(1033, 125, 32909)
        elseif ((MyLevel == 1275) or (MyLevel <= 1299)) then
            Mon = "Ship Engineer"
            LevelQuest = 2
            NameQuest = "ShipQuest1"
            NameMon = "Ship Engineer"
            CFrameQuest = CFrame.new(1033, 125, 32909)
            CFrameMon = CFrame.new(809, 80, 33090)
        elseif ((MyLevel == 1300) or (MyLevel <= 1324)) then
            Mon = "Ship Steward"
            LevelQuest = 1
            NameQuest = "ShipQuest2"
            NameMon = "Ship Steward"
            CFrameQuest = CFrame.new(973, 125, 33245)
            CFrameMon = CFrame.new(838, 160, 33408)
        elseif ((MyLevel == 1325) or (MyLevel <= 1349)) then
            Mon = "Ship Officer"
            LevelQuest = 2
            NameQuest = "ShipQuest2"
            NameMon = "Ship Officer"
            CFrameQuest = CFrame.new(973, 125, 33245)
            CFrameMon = CFrame.new(1238, 220, 33148)
        elseif ((MyLevel == 1350) or (MyLevel <= 1374)) then
            Mon = "Arctic Warrior"
            LevelQuest = 1
            NameQuest = "FrostQuest"
            NameMon = "Arctic Warrior"
            CFrameQuest = CFrame.new(5668, 28, -6484)
            CFrameMon = CFrame.new(5836, 80, -6257)
        elseif ((MyLevel == 1375) or (MyLevel <= 1424)) then
            Mon = "Snow Lurker"
            LevelQuest = 2
            NameQuest = "FrostQuest"
            NameMon = "Snow Lurker"
            CFrameQuest = CFrame.new(5668, 28, -6484)
            CFrameMon = CFrame.new(5700, 80, -6724)
        elseif ((MyLevel == 1425) or (MyLevel <= 1449)) then
            Mon = "Sea Soldier"
            LevelQuest = 1
            NameQuest = "ForgottenQuest"
            NameMon = "Sea Soldier"
            CFrameQuest = CFrame.new(-3056, 240, -10145)
            CFrameMon = CFrame.new(-2583, 80, -9821)
        elseif (MyLevel >= 1450) then
            Mon = "Water Fighter"
            LevelQuest = 2
            NameQuest = "ForgottenQuest"
            NameMon = "Water Fighter"
            CFrameQuest = CFrame.new(-3056, 240, -10145)
            CFrameMon = CFrame.new(-3339, 290, -10412)
        end
    elseif World3 then
        if ((MyLevel == 1500) or (MyLevel <= 1524)) then
            Mon = "Pirate Millionaire"
            LevelQuest = 1
            NameQuest = "PiratePortQuest"
            NameMon = "Pirate Millionaire"
            CFrameQuest = CFrame.new(-291, 44, 5580)
            CFrameMon = CFrame.new(-44, 70, 5623)
        elseif ((MyLevel == 1525) or (MyLevel <= 1574)) then
            Mon = "Pistol Billionaire"
            LevelQuest = 2
            NameQuest = "PiratePortQuest"
            NameMon = "Pistol Billionaire"
            CFrameQuest = CFrame.new(-291, 44, 5580)
            CFrameMon = CFrame.new(219, 105, 6018)
        elseif ((MyLevel == 1575) or (MyLevel <= 1599)) then
            Mon = "Dragon Crew Warrior"
            LevelQuest = 1
            NameQuest = "AmazonQuest"
            NameMon = "Dragon Crew Warrior"
            CFrameQuest = CFrame.new(5834, 51, -1103)
            CFrameMon = CFrame.new(5992, 90, -1581)
        elseif ((MyLevel == 1600) or (MyLevel <= 1624)) then
            Mon = "Dragon Crew Archer"
            NameQuest = "AmazonQuest"
            LevelQuest = 2
            NameMon = "Dragon Crew Archer"
            CFrameQuest = CFrame.new(5834, 51, -1103)
            CFrameMon = CFrame.new(6472, 370, -151)
        elseif ((MyLevel == 1625) or (MyLevel <= 1649)) then
            Mon = "Female Islander"
            NameQuest = "AmazonQuest2"
            LevelQuest = 1
            NameMon = "Female Islander"
            CFrameQuest = CFrame.new(5448, 602, 748)
            CFrameMon = CFrame.new(4836, 740, 928)
        elseif ((MyLevel == 1650) or (MyLevel <= 1699)) then
            Mon = "Giant Islander"
            NameQuest = "AmazonQuest2"
            LevelQuest = 2
            NameMon = "Giant Islander"
            CFrameQuest = CFrame.new(5448, 602, 748)
            CFrameMon = CFrame.new(4784, 660, 155)
        elseif ((MyLevel == 1700) or (MyLevel <= 1724)) then
            Mon = "Marine Commodore"
            LevelQuest = 1
            NameQuest = "MarineTreeIsland"
            NameMon = "Marine Commodore"
            CFrameQuest = CFrame.new(2180, 29, -6738)
            CFrameMon = CFrame.new(3156, 120, -7837)
        elseif ((MyLevel == 1725) or (MyLevel <= 1774)) then
            Mon = "Marine Rear Admiral"
            NameMon = "Marine Rear Admiral"
            NameQuest = "MarineTreeIsland"
            LevelQuest = 2
            CFrameQuest = CFrame.new(2180, 29, -6738)
            CFrameMon = CFrame.new(3205, 120, -6742)
        elseif ((MyLevel == 1775) or (MyLevel <= 1799)) then
            Mon = "Fishman Raider"
            LevelQuest = 1
            NameQuest = "DeepForestIsland3"
            NameMon = "Fishman Raider"
            CFrameQuest = CFrame.new(-10581, 332, -8758)
            CFrameMon = CFrame.new(-10550, 380, -8574)
        elseif ((MyLevel == 1800) or (MyLevel <= 1824)) then
            Mon = "Fishman Captain"
            LevelQuest = 2
            NameQuest = "DeepForestIsland3"
            NameMon = "Fishman Captain"
            CFrameQuest = CFrame.new(-10581, 332, -8758)
            CFrameMon = CFrame.new(-10764, 380, -8799)
        elseif ((MyLevel == 1825) or (MyLevel <= 1849)) then
            Mon = "Forest Pirate"
            LevelQuest = 1
            NameQuest = "DeepForestIsland"
            NameMon = "Forest Pirate"
            CFrameQuest = CFrame.new(-13233, 332, -7626)
            CFrameMon = CFrame.new(-13335, 380, -7660)
        elseif ((MyLevel == 1850) or (MyLevel <= 1899)) then
            Mon = "Mythological Pirate"
            LevelQuest = 2
            NameQuest = "DeepForestIsland"
            NameMon = "Mythological Pirate"
            CFrameQuest = CFrame.new(-13233, 332, -7626)
            CFrameMon = CFrame.new(-13844, 520, -7016)
        elseif ((MyLevel == 1900) or (MyLevel <= 1924)) then
            Mon = "Jungle Pirate"
            LevelQuest = 1
            NameQuest = "DeepForestIsland2"
            NameMon = "Jungle Pirate"
            CFrameQuest = CFrame.new(-12682, 391, -9901)
            CFrameMon = CFrame.new(-12166, 380, -10375)
        elseif ((MyLevel == 1925) or (MyLevel <= 1974)) then
            Mon = "Musketeer Pirate"
            LevelQuest = 2
            NameQuest = "DeepForestIsland2"
            NameMon = "Musketeer Pirate"
            CFrameQuest = CFrame.new(-12682, 391, -9901)
            CFrameMon = CFrame.new(-13098, 450, -9831)
        elseif ((MyLevel == 1975) or (MyLevel <= 1999)) then
            Mon = "Reborn Skeleton"
            LevelQuest = 1
            NameQuest = "HauntedQuest1"
            NameMon = "Reborn Skeleton"
            CFrameQuest = CFrame.new(-9481, 142, 5565)
            CFrameMon = CFrame.new(-8680, 190, 5852)
        elseif ((MyLevel == 2000) or (MyLevel <= 2024)) then
            Mon = "Living Zombie"
            LevelQuest = 2
            NameQuest = "HauntedQuest1"
            NameMon = "Living Zombie"
            CFrameQuest = CFrame.new(-9481, 142, 5565)
            CFrameMon = CFrame.new(-10144, 140, 5932)
        elseif ((MyLevel == 2025) or (MyLevel <= 2049)) then
            Mon = "Demonic Soul"
            LevelQuest = 1
            NameQuest = "HauntedQuest2"
            NameMon = "Demonic Soul"
            CFrameQuest = CFrame.new(-9515, 172, 607)
            CFrameMon = CFrame.new(-9275, 210, 6166)
        elseif ((MyLevel == 2050) or (MyLevel <= 2074)) then
            Mon = "Posessed Mummy"
            LevelQuest = 2
            NameQuest = "HauntedQuest2"
            NameMon = "Posessed Mummy"
            CFrameQuest = CFrame.new(-9515, 172, 607)
            CFrameMon = CFrame.new(-9442, 60, 6304)
        elseif ((MyLevel == 2075) or (MyLevel <= 2099)) then
            Mon = "Peanut Scout"
            LevelQuest = 1
            NameQuest = "NutsIslandQuest"
            NameMon = "Peanut Scout"
            CFrameQuest = CFrame.new(-2104, 38, -10194)
            CFrameMon = CFrame.new(-1870, 100, -10225)
        elseif ((MyLevel == 2100) or (MyLevel <= 2124)) then
            Mon = "Peanut President"
            LevelQuest = 2
            NameQuest = "NutsIslandQuest"
            NameMon = "Peanut President"
            CFrameQuest = CFrame.new(-2104, 38, -10194)
            CFrameMon = CFrame.new(-2005, 100, -10585)
        elseif ((MyLevel == 2125) or (MyLevel <= 2149)) then
            Mon = "Ice Cream Chef"
            LevelQuest = 1
            NameQuest = "IceCreamIslandQuest"
            NameMon = "Ice Cream Chef"
            CFrameQuest = CFrame.new(-818, 66, -10964)
            CFrameMon = CFrame.new(-501, 100, -10883)
        elseif ((MyLevel == 2150) or (MyLevel <= 2199)) then
            Mon = "Ice Cream Commander"
            LevelQuest = 2
            NameQuest = "IceCreamIslandQuest"
            NameMon = "Ice Cream Commander"
            CFrameQuest = CFrame.new(-818, 66, -10964)
            CFrameMon = CFrame.new(-690, 100, -11350)
        elseif ((MyLevel == 2200) or (MyLevel <= 2224)) then
            Mon = "Cookie Crafter"
            LevelQuest = 1
            NameQuest = "CakeQuest1"
            NameMon = "Cookie Crafter"
            CFrameQuest = CFrame.new(-2023, 38, -12028)
            CFrameMon = CFrame.new(-2332, 90, -12049)
        elseif ((MyLevel == 2225) or (MyLevel <= 2249)) then
            Mon = "Cake Guard"
            LevelQuest = 2
            NameQuest = "CakeQuest1"
            NameMon = "Cake Guard"
            CFrameQuest = CFrame.new(-2023, 38, -12028)
            CFrameMon = CFrame.new(-1514, 90, -12422)
        elseif ((MyLevel == 2250) or (MyLevel <= 2274)) then
            Mon = "Baking Staff"
            LevelQuest = 1
            NameQuest = "CakeQuest2"
            NameMon = "Baking Staff"
            CFrameQuest = CFrame.new(-1931, 38, -12840)
            CFrameMon = CFrame.new(-1930, 90, -12963)
        elseif ((MyLevel == 2275) or (MyLevel <= 2299)) then
            Mon = "Head Baker"
            LevelQuest = 2
            NameQuest = "CakeQuest2"
            NameMon = "Head Baker"
            CFrameQuest = CFrame.new(-1931, 38, -12840)
            CFrameMon = CFrame.new(-2123, 110, -12777)
        elseif ((MyLevel == 2300) or (MyLevel <= 2324)) then
            Mon = "Cocoa Warrior"
            LevelQuest = 1
            NameQuest = "ChocQuest1"
            NameMon = "Cocoa Warrior"
            CFrameQuest = CFrame.new(235, 25, -12199)
            CFrameMon = CFrame.new(110, 80, -12245)
        elseif ((MyLevel == 2325) or (MyLevel <= 2349)) then
            Mon = "Chocolate Bar Battler"
            LevelQuest = 2
            NameQuest = "ChocQuest1"
            NameMon = "Chocolate Bar Battler"
            CFrameQuest = CFrame.new(235, 25, -12199)
            CFrameMon = CFrame.new(579, 80, -12413)
        elseif ((MyLevel == 2350) or (MyLevel <= 2374)) then
            Mon = "Sweet Thief"
            LevelQuest = 1
            NameQuest = "ChocQuest2"
            NameMon = "Sweet Thief"
            CFrameQuest = CFrame.new(150, 25, -12777)
            CFrameMon = CFrame.new(-68, 80, -12692)
        elseif ((MyLevel == 2375) or (MyLevel <= 2399)) then
            Mon = "Candy Rebel"
            LevelQuest = 2
            NameQuest = "ChocQuest2"
            NameMon = "Candy Rebel"
            CFrameQuest = CFrame.new(150, 25, -12777)
            CFrameMon = CFrame.new(17, 80, -12962)
        elseif ((MyLevel == 2400) or (MyLevel <= 2424)) then
            Mon = "Candy Pirate"
            LevelQuest = 1
            NameQuest = "CandyQuest1"
            NameMon = "Candy Pirate"
            CFrameQuest = CFrame.new(-1148, 14, -14446)
            CFrameMon = CFrame.new(-1371, 70, -14405)
        elseif ((MyLevel == 2425) or (MyLevel <= 2449)) then
            Mon = "Snow Demon"
            LevelQuest = 2
            NameQuest = "CandyQuest1"
            NameMon = "Snow Demon"
            CFrameQuest = CFrame.new(-1148, 14, -14446)
            CFrameMon = CFrame.new(-836, 70, -14326)
        elseif ((MyLevel == 2450) or (MyLevel <= 2474)) then
            Mon = "Isle Outlaw"
            LevelQuest = 1
            NameQuest = "TikiQuest1"
            NameMon = "Isle Outlaw"
            CFrameQuest = CFrame.new(-16547, 56, -172)
            CFrameMon = CFrame.new(-16431, 90, -223)
        elseif ((MyLevel == 2475) or (MyLevel <= 2499)) then
            Mon = "Island Boy"
            LevelQuest = 2
            NameQuest = "TikiQuest1"
            NameMon = "Island Boy"
            CFrameQuest = CFrame.new(-16547, 56, -172)
            CFrameMon = CFrame.new(-16668, 70, -243)
        elseif ((MyLevel == 2500) or (MyLevel <= 2524)) then
            Mon = "Sun-kissed Warrior"
            LevelQuest = 1
            NameQuest = "TikiQuest2"
            NameMon = "kissed"
            CFrameQuest = CFrame.new(-16540, 56, 1051)
            CFrameMon = CFrame.new(-16345, 80, 1004)
        elseif ((MyLevel == 2525) or (MyLevel <= 2549)) then
            Mon = "Isle Champion"
            LevelQuest = 2
            NameQuest = "TikiQuest2"
            NameMon = "Isle Champion"
            CFrameQuest = CFrame.new(-16540, 56, 1051)
            CFrameMon = CFrame.new(-16634, 85, 1106)
        elseif ((MyLevel == 2550) or (MyLevel <= 2574)) then
            Mon = "Serpent Hunter"
            LevelQuest = 1
            NameQuest = "TikiQuest3"
            NameMon = "Serpent Hunter"
            CFrameQuest = CFrame.new(-16665, 105, 1580)
            CFrameMon =
                CFrame.new(
                -16542.4824,
                146.675156,
                1529.61401,
                -0.999948919,
                1.0729811e-8,
                0.0101067368,
                1.0128324e-8,
                1,
                -5.9564663e-8,
                -0.0101067368,
                -5.9459257e-8,
                -0.999948919
            )
        elseif ((MyLevel == 2575) or (MyLevel <= 2600)) then
            Mon = "Skull Slayer"
            LevelQuest = 2
            NameQuest = "TikiQuest3"
            NameMon = "Skull Slayer"
            CFrameQuest = CFrame.new(-16665, 105, 1580)
            CFrameMon =
                CFrame.new(
                -16849.9336,
                147.005066,
                1640.88354,
                0.470148534,
                0.491874039,
                -0.732816696,
                1.72165e-8,
                0.83030504,
                0.55730921,
                0.882587314,
                -0.262018114,
                0.390366673
            )
        end
    end
end
function Hop()
    local v476 = game.PlaceId
    local v477 = {}
    local v478 = ""
    local v479 = os.date("!*t").hour
    local v480 = false
    function TPReturner()
        local v938
        if (v478 == "") then
            v938 =
                game.HttpService:JSONDecode(
                game:HttpGet("https://games.roblox.com/v1/games/" .. v476 .. "/servers/Public?sortOrder=Asc&limit=100")
            )
        else
            v938 =
                game.HttpService:JSONDecode(
                game:HttpGet(
                    "https://games.roblox.com/v1/games/" ..
                        v476 .. "/servers/Public?sortOrder=Asc&limit=100&cursor=" .. v478
                )
            )
        end
        local v939 = ""
        if (v938.nextPageCursor and (v938.nextPageCursor ~= "null") and (v938.nextPageCursor ~= nil)) then
            v478 = v938.nextPageCursor
        end
        local v940 = 0
        for v1717, v1718 in pairs(v938.data) do
            local v1719 = true
            v939 = tostring(v1718.id)
            if (tonumber(v1718.maxPlayers) > tonumber(v1718.playing)) then
                for v2070, v2071 in pairs(v477) do
                    if (v940 ~= 0) then
                        if (v939 == tostring(v2071)) then
                            v1719 = false
                        end
                    elseif (tonumber(v479) ~= tonumber(v2071)) then
                        local v2587 =
                            pcall(
                            function()
                                v477 = {}
                                table.insert(v477, v479)
                            end
                        )
                    end
                    v940 = v940 + 1
                end
                if (v1719 == true) then
                    table.insert(v477, v939)
                    wait()
                    pcall(
                        function()
                            wait()
                            game:GetService("TeleportService"):TeleportToPlaceInstance(
                                v476,
                                v939,
                                game.Players.LocalPlayer
                            )
                        end
                    )
                    wait(4)
                end
            end
        end
    end
    function Teleport()
        while wait() do
            pcall(
                function()
                    TPReturner()
                    if (v478 ~= "") then
                        TPReturner()
                    end
                end
            )
        end
    end
    Teleport()
end
function UpdateIslandESP()
    for v941, v942 in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
        pcall(
            function()
                if IslandESP then
                    if (v942.Name ~= "Sea") then
                        if not v942:FindFirstChild("NameEsp") then
                            local v2380 = Instance.new("BillboardGui", v942)
                            v2380.Name = "NameEsp"
                            v2380.ExtentsOffset = Vector3.new(0, 1, 0)
                            v2380.Size = UDim2.new(1, 200, 1, 30)
                            v2380.Adornee = v942
                            v2380.AlwaysOnTop = true
                            local v2386 = Instance.new("TextLabel", v2380)
                            v2386.Font = "GothamBold"
                            v2386.FontSize = "Size14"
                            v2386.TextWrapped = true
                            v2386.Size = UDim2.new(1, 0, 1, 0)
                            v2386.TextYAlignment = "Top"
                            v2386.BackgroundTransparency = 1
                            v2386.TextStrokeTransparency = 0.5
                            v2386.TextColor3 = Color3.fromRGB(255, 255, 255)
                        else
                            v942["NameEsp"].TextLabel.Text =
                                v942.Name ..
                                "   \n" ..
                                    round(
                                        (game:GetService("Players").LocalPlayer.Character.Head.Position - v942.Position).Magnitude /
                                            3
                                    ) ..
                                        " Distance"
                        end
                    end
                elseif v942:FindFirstChild("NameEsp") then
                    v942:FindFirstChild("NameEsp"):Destroy()
                end
            end
        )
    end
end
function isnil(v481)
    return v481 == nil
end
local function v86(v482)
    return math.floor(tonumber(v482) + 0.5)
end
Number = math.random(1, 1000000)
function UpdatePlayerChams()
    for v943, v944 in pairs(game:GetService("Players"):GetChildren()) do
        pcall(
            function()
                if not isnil(v944.Character) then
                    if ESPPlayer then
                        if
                            (not isnil(v944.Character.Head) and
                                not v944.Character.Head:FindFirstChild("NameEsp" .. Number))
                         then
                            local v2396 = Instance.new("BillboardGui", v944.Character.Head)
                            v2396.Name = "NameEsp" .. Number
                            v2396.ExtentsOffset = Vector3.new(0, 1, 0)
                            v2396.Size = UDim2.new(1, 200, 1, 30)
                            v2396.Adornee = v944.Character.Head
                            v2396.AlwaysOnTop = true
                            local v2403 = Instance.new("TextLabel", v2396)
                            v2403.Font = Enum.Font.GothamSemibold
                            v2403.FontSize = "Size14"
                            v2403.TextWrapped = true
                            v2403.Text =
                                v944.Name ..
                                " \n" ..
                                    v86(
                                        (game:GetService("Players").LocalPlayer.Character.Head.Position -
                                            v944.Character.Head.Position).Magnitude / 3
                                    ) ..
                                        " Distance"
                            v2403.Size = UDim2.new(1, 0, 1, 0)
                            v2403.TextYAlignment = "Top"
                            v2403.BackgroundTransparency = 1
                            v2403.TextStrokeTransparency = 0.5
                            if (v944.Team == game.Players.LocalPlayer.Team) then
                                v2403.TextColor3 = Color3.new(3, 252, 3)
                            else
                                v2403.TextColor3 = Color3.new(3, 252, 3)
                            end
                        else
                            v944.Character.Head["NameEsp" .. Number].TextLabel.Text =
                                v944.Name ..
                                " | " ..
                                    v86(
                                        (game:GetService("Players").LocalPlayer.Character.Head.Position -
                                            v944.Character.Head.Position).Magnitude / 3
                                    ) ..
                                        " Distance\nHealth: " ..
                                            v86(
                                                (v944.Character.Humanoid.Health * 100) /
                                                    v944.Character.Humanoid.MaxHealth
                                            ) ..
                                                "%"
                        end
                    elseif v944.Character.Head:FindFirstChild("NameEsp" .. Number) then
                        v944.Character.Head:FindFirstChild("NameEsp" .. Number):Destroy()
                    end
                end
            end
        )
    end
end
function UpdateChestChams()
    for v945, v946 in pairs(game.Workspace:GetChildren()) do
        pcall(
            function()
                if string.find(v946.Name, "Chest") then
                    if ChestESP then
                        if string.find(v946.Name, "Chest") then
                            if not v946:FindFirstChild("NameEsp" .. Number) then
                                local v2719 = Instance.new("BillboardGui", v946)
                                v2719.Name = "NameEsp" .. Number
                                v2719.ExtentsOffset = Vector3.new(0, 1, 0)
                                v2719.Size = UDim2.new(1, 200, 1, 30)
                                v2719.Adornee = v946
                                v2719.AlwaysOnTop = true
                                local v2725 = Instance.new("TextLabel", v2719)
                                v2725.Font = Enum.Font.GothamSemibold
                                v2725.FontSize = "Size14"
                                v2725.TextWrapped = true
                                v2725.Size = UDim2.new(1, 0, 1, 0)
                                v2725.TextYAlignment = "Top"
                                v2725.BackgroundTransparency = 1
                                v2725.TextStrokeTransparency = 0.5
                                if (v946.Name == "Chest1") then
                                    v2725.TextColor3 = Color3.fromRGB(109, 109, 109)
                                    v2725.Text =
                                        "Chest 1" ..
                                        " \n" ..
                                            v86(
                                                (game:GetService("Players").LocalPlayer.Character.Head.Position -
                                                    v946.Position).Magnitude / 3
                                            ) ..
                                                " Distance"
                                end
                                if (v946.Name == "Chest2") then
                                    v2725.TextColor3 = Color3.fromRGB(173, 158, 21)
                                    v2725.Text =
                                        "Chest 2" ..
                                        " \n" ..
                                            v86(
                                                (game:GetService("Players").LocalPlayer.Character.Head.Position -
                                                    v946.Position).Magnitude / 3
                                            ) ..
                                                " Distance"
                                end
                                if (v946.Name == "Chest3") then
                                    v2725.TextColor3 = Color3.fromRGB(85, 255, 255)
                                    v2725.Text =
                                        "Chest 3" ..
                                        " \n" ..
                                            v86(
                                                (game:GetService("Players").LocalPlayer.Character.Head.Position -
                                                    v946.Position).Magnitude / 3
                                            ) ..
                                                " Distance"
                                end
                            else
                                v946["NameEsp" .. Number].TextLabel.Text =
                                    v946.Name ..
                                    "   \n" ..
                                        v86(
                                            (game:GetService("Players").LocalPlayer.Character.Head.Position -
                                                v946.Position).Magnitude / 3
                                        ) ..
                                            " Distance"
                            end
                        end
                    elseif v946:FindFirstChild("NameEsp" .. Number) then
                        v946:FindFirstChild("NameEsp" .. Number):Destroy()
                    end
                end
            end
        )
    end
end
function UpdateDevilChams()
    for v947, v948 in pairs(game.Workspace:GetChildren()) do
        pcall(
            function()
                if DevilFruitESP then
                    if string.find(v948.Name, "Fruit") then
                        if not v948.Handle:FindFirstChild("NameEsp" .. Number) then
                            local v2414 = Instance.new("BillboardGui", v948.Handle)
                            v2414.Name = "NameEsp" .. Number
                            v2414.ExtentsOffset = Vector3.new(0, 1, 0)
                            v2414.Size = UDim2.new(1, 200, 1, 30)
                            v2414.Adornee = v948.Handle
                            v2414.AlwaysOnTop = true
                            local v2421 = Instance.new("TextLabel", v2414)
                            v2421.Font = Enum.Font.GothamSemibold
                            v2421.FontSize = "Size14"
                            v2421.TextWrapped = true
                            v2421.Size = UDim2.new(1, 0, 1, 0)
                            v2421.TextYAlignment = "Top"
                            v2421.BackgroundTransparency = 1
                            v2421.TextStrokeTransparency = 0.5
                            v2421.TextColor3 = Color3.fromRGB(255, 255, 255)
                            v2421.Text =
                                v948.Name ..
                                " \n" ..
                                    v86(
                                        (game:GetService("Players").LocalPlayer.Character.Head.Position -
                                            v948.Handle.Position).Magnitude / 3
                                    ) ..
                                        " Distance"
                        else
                            v948.Handle["NameEsp" .. Number].TextLabel.Text =
                                v948.Name ..
                                "   \n" ..
                                    v86(
                                        (game:GetService("Players").LocalPlayer.Character.Head.Position -
                                            v948.Handle.Position).Magnitude / 3
                                    ) ..
                                        " Distance"
                        end
                    end
                elseif v948.Handle:FindFirstChild("NameEsp" .. Number) then
                    v948.Handle:FindFirstChild("NameEsp" .. Number):Destroy()
                end
            end
        )
    end
end
function UpdateFlowerChams()
    for v949, v950 in pairs(game.Workspace:GetChildren()) do
        pcall(
            function()
                if ((v950.Name == "Flower2") or (v950.Name == "Flower1")) then
                    if FlowerESP then
                        if not v950:FindFirstChild("NameEsp" .. Number) then
                            local v2433 = Instance.new("BillboardGui", v950)
                            v2433.Name = "NameEsp" .. Number
                            v2433.ExtentsOffset = Vector3.new(0, 1, 0)
                            v2433.Size = UDim2.new(1, 200, 1, 30)
                            v2433.Adornee = v950
                            v2433.AlwaysOnTop = true
                            local v2439 = Instance.new("TextLabel", v2433)
                            v2439.Font = Enum.Font.GothamSemibold
                            v2439.FontSize = "Size14"
                            v2439.TextWrapped = true
                            v2439.Size = UDim2.new(1, 0, 1, 0)
                            v2439.TextYAlignment = "Top"
                            v2439.BackgroundTransparency = 1
                            v2439.TextStrokeTransparency = 0.5
                            v2439.TextColor3 = Color3.fromRGB(255, 0, 0)
                            if (v950.Name == "Flower1") then
                                v2439.Text =
                                    "Blue Flower" ..
                                    " \n" ..
                                        v86(
                                            (game:GetService("Players").LocalPlayer.Character.Head.Position -
                                                v950.Position).Magnitude / 3
                                        ) ..
                                            " Distance"
                                v2439.TextColor3 = Color3.fromRGB(0, 0, 255)
                            end
                            if (v950.Name == "Flower2") then
                                v2439.Text =
                                    "Red Flower" ..
                                    " \n" ..
                                        v86(
                                            (game:GetService("Players").LocalPlayer.Character.Head.Position -
                                                v950.Position).Magnitude / 3
                                        ) ..
                                            " Distance"
                                v2439.TextColor3 = Color3.fromRGB(255, 0, 0)
                            end
                        else
                            v950["NameEsp" .. Number].TextLabel.Text =
                                v950.Name ..
                                "   \n" ..
                                    v86(
                                        (game:GetService("Players").LocalPlayer.Character.Head.Position - v950.Position).Magnitude /
                                            3
                                    ) ..
                                        " Distance"
                        end
                    elseif v950:FindFirstChild("NameEsp" .. Number) then
                        v950:FindFirstChild("NameEsp" .. Number):Destroy()
                    end
                end
            end
        )
    end
end
function UpdateRealFruitChams()
    for v951, v952 in pairs(game.Workspace.AppleSpawner:GetChildren()) do
        if v952:IsA("Tool") then
            if RealFruitESP then
                if not v952.Handle:FindFirstChild("NameEsp" .. Number) then
                    local v2185 = Instance.new("BillboardGui", v952.Handle)
                    v2185.Name = "NameEsp" .. Number
                    v2185.ExtentsOffset = Vector3.new(0, 1, 0)
                    v2185.Size = UDim2.new(1, 200, 1, 30)
                    v2185.Adornee = v952.Handle
                    v2185.AlwaysOnTop = true
                    local v2192 = Instance.new("TextLabel", v2185)
                    v2192.Font = Enum.Font.GothamSemibold
                    v2192.FontSize = "Size14"
                    v2192.TextWrapped = true
                    v2192.Size = UDim2.new(1, 0, 1, 0)
                    v2192.TextYAlignment = "Top"
                    v2192.BackgroundTransparency = 1
                    v2192.TextStrokeTransparency = 0.5
                    v2192.TextColor3 = Color3.fromRGB(255, 0, 0)
                    v2192.Text =
                        v952.Name ..
                        " \n" ..
                            v86(
                                (game:GetService("Players").LocalPlayer.Character.Head.Position - v952.Handle.Position).Magnitude /
                                    3
                            ) ..
                                " Distance"
                else
                    v952.Handle["NameEsp" .. Number].TextLabel.Text =
                        v952.Name ..
                        " " ..
                            v86(
                                (game:GetService("Players").LocalPlayer.Character.Head.Position - v952.Handle.Position).Magnitude /
                                    3
                            ) ..
                                " Distance"
                end
            elseif v952.Handle:FindFirstChild("NameEsp" .. Number) then
                v952.Handle:FindFirstChild("NameEsp" .. Number):Destroy()
            end
        end
    end
    for v953, v954 in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
        if v954:IsA("Tool") then
            if RealFruitESP then
                if not v954.Handle:FindFirstChild("NameEsp" .. Number) then
                    local v2204 = Instance.new("BillboardGui", v954.Handle)
                    v2204.Name = "NameEsp" .. Number
                    v2204.ExtentsOffset = Vector3.new(0, 1, 0)
                    v2204.Size = UDim2.new(1, 200, 1, 30)
                    v2204.Adornee = v954.Handle
                    v2204.AlwaysOnTop = true
                    local v2211 = Instance.new("TextLabel", v2204)
                    v2211.Font = Enum.Font.GothamSemibold
                    v2211.FontSize = "Size14"
                    v2211.TextWrapped = true
                    v2211.Size = UDim2.new(1, 0, 1, 0)
                    v2211.TextYAlignment = "Top"
                    v2211.BackgroundTransparency = 1
                    v2211.TextStrokeTransparency = 0.5
                    v2211.TextColor3 = Color3.fromRGB(255, 174, 0)
                    v2211.Text =
                        v954.Name ..
                        " \n" ..
                            v86(
                                (game:GetService("Players").LocalPlayer.Character.Head.Position - v954.Handle.Position).Magnitude /
                                    3
                            ) ..
                                " Distance"
                else
                    v954.Handle["NameEsp" .. Number].TextLabel.Text =
                        v954.Name ..
                        " " ..
                            v86(
                                (game:GetService("Players").LocalPlayer.Character.Head.Position - v954.Handle.Position).Magnitude /
                                    3
                            ) ..
                                " Distance"
                end
            elseif v954.Handle:FindFirstChild("NameEsp" .. Number) then
                v954.Handle:FindFirstChild("NameEsp" .. Number):Destroy()
            end
        end
    end
    for v955, v956 in pairs(game.Workspace.BananaSpawner:GetChildren()) do
        if v956:IsA("Tool") then
            if RealFruitESP then
                if not v956.Handle:FindFirstChild("NameEsp" .. Number) then
                    local v2223 = Instance.new("BillboardGui", v956.Handle)
                    v2223.Name = "NameEsp" .. Number
                    v2223.ExtentsOffset = Vector3.new(0, 1, 0)
                    v2223.Size = UDim2.new(1, 200, 1, 30)
                    v2223.Adornee = v956.Handle
                    v2223.AlwaysOnTop = true
                    local v2230 = Instance.new("TextLabel", v2223)
                    v2230.Font = Enum.Font.GothamSemibold
                    v2230.FontSize = "Size14"
                    v2230.TextWrapped = true
                    v2230.Size = UDim2.new(1, 0, 1, 0)
                    v2230.TextYAlignment = "Top"
                    v2230.BackgroundTransparency = 1
                    v2230.TextStrokeTransparency = 0.5
                    v2230.TextColor3 = Color3.fromRGB(251, 255, 0)
                    v2230.Text =
                        v956.Name ..
                        " \n" ..
                            v86(
                                (game:GetService("Players").LocalPlayer.Character.Head.Position - v956.Handle.Position).Magnitude /
                                    3
                            ) ..
                                " Distance"
                else
                    v956.Handle["NameEsp" .. Number].TextLabel.Text =
                        v956.Name ..
                        " " ..
                            v86(
                                (game:GetService("Players").LocalPlayer.Character.Head.Position - v956.Handle.Position).Magnitude /
                                    3
                            ) ..
                                " Distance"
                end
            elseif v956.Handle:FindFirstChild("NameEsp" .. Number) then
                v956.Handle:FindFirstChild("NameEsp" .. Number):Destroy()
            end
        end
    end
end
function UpdateIslandESP()
    for v957, v958 in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
        pcall(
            function()
                if IslandESP then
                    if (v958.Name ~= "Sea") then
                        if not v958:FindFirstChild("NameEsp") then
                            local v2450 = Instance.new("BillboardGui", v958)
                            v2450.Name = "NameEsp"
                            v2450.ExtentsOffset = Vector3.new(0, 1, 0)
                            v2450.Size = UDim2.new(1, 200, 1, 30)
                            v2450.Adornee = v958
                            v2450.AlwaysOnTop = true
                            local v2456 = Instance.new("TextLabel", v2450)
                            v2456.Font = "GothamBold"
                            v2456.FontSize = "Size14"
                            v2456.TextWrapped = true
                            v2456.Size = UDim2.new(1, 0, 1, 0)
                            v2456.TextYAlignment = "Top"
                            v2456.BackgroundTransparency = 1
                            v2456.TextStrokeTransparency = 0.5
                            v2456.TextColor3 = Color3.fromRGB(255, 255, 255)
                        else
                            v958["NameEsp"].TextLabel.Text =
                                v958.Name ..
                                "   \n" ..
                                    v86(
                                        (game:GetService("Players").LocalPlayer.Character.Head.Position - v958.Position).Magnitude /
                                            3
                                    ) ..
                                        " Distance"
                        end
                    end
                elseif v958:FindFirstChild("NameEsp") then
                    v958:FindFirstChild("NameEsp"):Destroy()
                end
            end
        )
    end
end
function isnil(v483)
    return v483 == nil
end
local function v86(v484)
    return math.floor(tonumber(v484) + 0.5)
end
Number = math.random(1, 1000000)
function UpdatePlayerChams()
    for v959, v960 in pairs(game:GetService("Players"):GetChildren()) do
        pcall(
            function()
                if not isnil(v960.Character) then
                    if ESPPlayer then
                        if
                            (not isnil(v960.Character.Head) and
                                not v960.Character.Head:FindFirstChild("NameEsp" .. Number))
                         then
                            local v2466 = Instance.new("BillboardGui", v960.Character.Head)
                            v2466.Name = "NameEsp" .. Number
                            v2466.ExtentsOffset = Vector3.new(0, 1, 0)
                            v2466.Size = UDim2.new(1, 200, 1, 30)
                            v2466.Adornee = v960.Character.Head
                            v2466.AlwaysOnTop = true
                            local v2473 = Instance.new("TextLabel", v2466)
                            v2473.Font = Enum.Font.GothamSemibold
                            v2473.FontSize = "Size14"
                            v2473.TextWrapped = true
                            v2473.Text =
                                v960.Name ..
                                " \n" ..
                                    v86(
                                        (game:GetService("Players").LocalPlayer.Character.Head.Position -
                                            v960.Character.Head.Position).Magnitude / 3
                                    ) ..
                                        " Distance"
                            v2473.Size = UDim2.new(1, 0, 1, 0)
                            v2473.TextYAlignment = "Top"
                            v2473.BackgroundTransparency = 1
                            v2473.TextStrokeTransparency = 0.5
                            if (v960.Team == game.Players.LocalPlayer.Team) then
                                v2473.TextColor3 = Color3.new(3, 252, 3)
                            else
                                v2473.TextColor3 = Color3.new(3, 252, 3)
                            end
                        else
                            v960.Character.Head["NameEsp" .. Number].TextLabel.Text =
                                v960.Name ..
                                " | " ..
                                    v86(
                                        (game:GetService("Players").LocalPlayer.Character.Head.Position -
                                            v960.Character.Head.Position).Magnitude / 3
                                    ) ..
                                        " Distance\nHealth: " ..
                                            v86(
                                                (v960.Character.Humanoid.Health * 100) /
                                                    v960.Character.Humanoid.MaxHealth
                                            ) ..
                                                "%"
                        end
                    elseif v960.Character.Head:FindFirstChild("NameEsp" .. Number) then
                        v960.Character.Head:FindFirstChild("NameEsp" .. Number):Destroy()
                    end
                end
            end
        )
    end
end
function UpdateChestChams()
    for v961, v962 in pairs(game.Workspace:GetChildren()) do
        pcall(
            function()
                if string.find(v962.Name, "Chest") then
                    if ChestESP then
                        if string.find(v962.Name, "Chest") then
                            if not v962:FindFirstChild("NameEsp" .. Number) then
                                local v2741 = Instance.new("BillboardGui", v962)
                                v2741.Name = "NameEsp" .. Number
                                v2741.ExtentsOffset = Vector3.new(0, 1, 0)
                                v2741.Size = UDim2.new(1, 200, 1, 30)
                                v2741.Adornee = v962
                                v2741.AlwaysOnTop = true
                                local v2747 = Instance.new("TextLabel", v2741)
                                v2747.Font = Enum.Font.GothamSemibold
                                v2747.FontSize = "Size14"
                                v2747.TextWrapped = true
                                v2747.Size = UDim2.new(1, 0, 1, 0)
                                v2747.TextYAlignment = "Top"
                                v2747.BackgroundTransparency = 1
                                v2747.TextStrokeTransparency = 0.5
                                if (v962.Name == "Chest1") then
                                    v2747.TextColor3 = Color3.fromRGB(109, 109, 109)
                                    v2747.Text =
                                        "Chest 1" ..
                                        " \n" ..
                                            v86(
                                                (game:GetService("Players").LocalPlayer.Character.Head.Position -
                                                    v962.Position).Magnitude / 3
                                            ) ..
                                                " Distance"
                                end
                                if (v962.Name == "Chest2") then
                                    v2747.TextColor3 = Color3.fromRGB(173, 158, 21)
                                    v2747.Text =
                                        "Chest 2" ..
                                        " \n" ..
                                            v86(
                                                (game:GetService("Players").LocalPlayer.Character.Head.Position -
                                                    v962.Position).Magnitude / 3
                                            ) ..
                                                " Distance"
                                end
                                if (v962.Name == "Chest3") then
                                    v2747.TextColor3 = Color3.fromRGB(85, 255, 255)
                                    v2747.Text =
                                        "Chest 3" ..
                                        " \n" ..
                                            v86(
                                                (game:GetService("Players").LocalPlayer.Character.Head.Position -
                                                    v962.Position).Magnitude / 3
                                            ) ..
                                                " Distance"
                                end
                            else
                                v962["NameEsp" .. Number].TextLabel.Text =
                                    v962.Name ..
                                    "   \n" ..
                                        v86(
                                            (game:GetService("Players").LocalPlayer.Character.Head.Position -
                                                v962.Position).Magnitude / 3
                                        ) ..
                                            " Distance"
                            end
                        end
                    elseif v962:FindFirstChild("NameEsp" .. Number) then
                        v962:FindFirstChild("NameEsp" .. Number):Destroy()
                    end
                end
            end
        )
    end
end
function UpdateDevilChams()
    for v963, v964 in pairs(game.Workspace:GetChildren()) do
        pcall(
            function()
                if DevilFruitESP then
                    if string.find(v964.Name, "Fruit") then
                        if not v964.Handle:FindFirstChild("NameEsp" .. Number) then
                            local v2484 = Instance.new("BillboardGui", v964.Handle)
                            v2484.Name = "NameEsp" .. Number
                            v2484.ExtentsOffset = Vector3.new(0, 1, 0)
                            v2484.Size = UDim2.new(1, 200, 1, 30)
                            v2484.Adornee = v964.Handle
                            v2484.AlwaysOnTop = true
                            local v2491 = Instance.new("TextLabel", v2484)
                            v2491.Font = Enum.Font.GothamSemibold
                            v2491.FontSize = "Size14"
                            v2491.TextWrapped = true
                            v2491.Size = UDim2.new(1, 0, 1, 0)
                            v2491.TextYAlignment = "Top"
                            v2491.BackgroundTransparency = 1
                            v2491.TextStrokeTransparency = 0.5
                            v2491.TextColor3 = Color3.fromRGB(255, 255, 255)
                            v2491.Text =
                                v964.Name ..
                                " \n" ..
                                    v86(
                                        (game:GetService("Players").LocalPlayer.Character.Head.Position -
                                            v964.Handle.Position).Magnitude / 3
                                    ) ..
                                        " Distance"
                        else
                            v964.Handle["NameEsp" .. Number].TextLabel.Text =
                                v964.Name ..
                                "   \n" ..
                                    v86(
                                        (game:GetService("Players").LocalPlayer.Character.Head.Position -
                                            v964.Handle.Position).Magnitude / 3
                                    ) ..
                                        " Distance"
                        end
                    end
                elseif v964.Handle:FindFirstChild("NameEsp" .. Number) then
                    v964.Handle:FindFirstChild("NameEsp" .. Number):Destroy()
                end
            end
        )
    end
end
function UpdateFlowerChams()
    for v965, v966 in pairs(game.Workspace:GetChildren()) do
        pcall(
            function()
                if ((v966.Name == "Flower2") or (v966.Name == "Flower1")) then
                    if FlowerESP then
                        if not v966:FindFirstChild("NameEsp" .. Number) then
                            local v2503 = Instance.new("BillboardGui", v966)
                            v2503.Name = "NameEsp" .. Number
                            v2503.ExtentsOffset = Vector3.new(0, 1, 0)
                            v2503.Size = UDim2.new(1, 200, 1, 30)
                            v2503.Adornee = v966
                            v2503.AlwaysOnTop = true
                            local v2509 = Instance.new("TextLabel", v2503)
                            v2509.Font = Enum.Font.GothamSemibold
                            v2509.FontSize = "Size14"
                            v2509.TextWrapped = true
                            v2509.Size = UDim2.new(1, 0, 1, 0)
                            v2509.TextYAlignment = "Top"
                            v2509.BackgroundTransparency = 1
                            v2509.TextStrokeTransparency = 0.5
                            v2509.TextColor3 = Color3.fromRGB(255, 0, 0)
                            if (v966.Name == "Flower1") then
                                v2509.Text =
                                    "Blue Flower" ..
                                    " \n" ..
                                        v86(
                                            (game:GetService("Players").LocalPlayer.Character.Head.Position -
                                                v966.Position).Magnitude / 3
                                        ) ..
                                            " Distance"
                                v2509.TextColor3 = Color3.fromRGB(0, 0, 255)
                            end
                            if (v966.Name == "Flower2") then
                                v2509.Text =
                                    "Red Flower" ..
                                    " \n" ..
                                        v86(
                                            (game:GetService("Players").LocalPlayer.Character.Head.Position -
                                                v966.Position).Magnitude / 3
                                        ) ..
                                            " Distance"
                                v2509.TextColor3 = Color3.fromRGB(255, 0, 0)
                            end
                        else
                            v966["NameEsp" .. Number].TextLabel.Text =
                                v966.Name ..
                                "   \n" ..
                                    v86(
                                        (game:GetService("Players").LocalPlayer.Character.Head.Position - v966.Position).Magnitude /
                                            3
                                    ) ..
                                        " Distance"
                        end
                    elseif v966:FindFirstChild("NameEsp" .. Number) then
                        v966:FindFirstChild("NameEsp" .. Number):Destroy()
                    end
                end
            end
        )
    end
end
function UpdateRealFruitChams()
    for v967, v968 in pairs(game.Workspace.AppleSpawner:GetChildren()) do
        if v968:IsA("Tool") then
            if RealFruitESP then
                if not v968.Handle:FindFirstChild("NameEsp" .. Number) then
                    local v2242 = Instance.new("BillboardGui", v968.Handle)
                    v2242.Name = "NameEsp" .. Number
                    v2242.ExtentsOffset = Vector3.new(0, 1, 0)
                    v2242.Size = UDim2.new(1, 200, 1, 30)
                    v2242.Adornee = v968.Handle
                    v2242.AlwaysOnTop = true
                    local v2249 = Instance.new("TextLabel", v2242)
                    v2249.Font = Enum.Font.GothamSemibold
                    v2249.FontSize = "Size14"
                    v2249.TextWrapped = true
                    v2249.Size = UDim2.new(1, 0, 1, 0)
                    v2249.TextYAlignment = "Top"
                    v2249.BackgroundTransparency = 1
                    v2249.TextStrokeTransparency = 0.5
                    v2249.TextColor3 = Color3.fromRGB(255, 0, 0)
                    v2249.Text =
                        v968.Name ..
                        " \n" ..
                            v86(
                                (game:GetService("Players").LocalPlayer.Character.Head.Position - v968.Handle.Position).Magnitude /
                                    3
                            ) ..
                                " Distance"
                else
                    v968.Handle["NameEsp" .. Number].TextLabel.Text =
                        v968.Name ..
                        " " ..
                            v86(
                                (game:GetService("Players").LocalPlayer.Character.Head.Position - v968.Handle.Position).Magnitude /
                                    3
                            ) ..
                                " Distance"
                end
            elseif v968.Handle:FindFirstChild("NameEsp" .. Number) then
                v968.Handle:FindFirstChild("NameEsp" .. Number):Destroy()
            end
        end
    end
    for v969, v970 in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
        if v970:IsA("Tool") then
            if RealFruitESP then
                if not v970.Handle:FindFirstChild("NameEsp" .. Number) then
                    local v2261 = Instance.new("BillboardGui", v970.Handle)
                    v2261.Name = "NameEsp" .. Number
                    v2261.ExtentsOffset = Vector3.new(0, 1, 0)
                    v2261.Size = UDim2.new(1, 200, 1, 30)
                    v2261.Adornee = v970.Handle
                    v2261.AlwaysOnTop = true
                    local v2268 = Instance.new("TextLabel", v2261)
                    v2268.Font = Enum.Font.GothamSemibold
                    v2268.FontSize = "Size14"
                    v2268.TextWrapped = true
                    v2268.Size = UDim2.new(1, 0, 1, 0)
                    v2268.TextYAlignment = "Top"
                    v2268.BackgroundTransparency = 1
                    v2268.TextStrokeTransparency = 0.5
                    v2268.TextColor3 = Color3.fromRGB(255, 174, 0)
                    v2268.Text =
                        v970.Name ..
                        " \n" ..
                            v86(
                                (game:GetService("Players").LocalPlayer.Character.Head.Position - v970.Handle.Position).Magnitude /
                                    3
                            ) ..
                                " Distance"
                else
                    v970.Handle["NameEsp" .. Number].TextLabel.Text =
                        v970.Name ..
                        " " ..
                            v86(
                                (game:GetService("Players").LocalPlayer.Character.Head.Position - v970.Handle.Position).Magnitude /
                                    3
                            ) ..
                                " Distance"
                end
            elseif v970.Handle:FindFirstChild("NameEsp" .. Number) then
                v970.Handle:FindFirstChild("NameEsp" .. Number):Destroy()
            end
        end
    end
    for v971, v972 in pairs(game.Workspace.BananaSpawner:GetChildren()) do
        if v972:IsA("Tool") then
            if RealFruitESP then
                if not v972.Handle:FindFirstChild("NameEsp" .. Number) then
                    local v2280 = Instance.new("BillboardGui", v972.Handle)
                    v2280.Name = "NameEsp" .. Number
                    v2280.ExtentsOffset = Vector3.new(0, 1, 0)
                    v2280.Size = UDim2.new(1, 200, 1, 30)
                    v2280.Adornee = v972.Handle
                    v2280.AlwaysOnTop = true
                    local v2287 = Instance.new("TextLabel", v2280)
                    v2287.Font = Enum.Font.GothamSemibold
                    v2287.FontSize = "Size14"
                    v2287.TextWrapped = true
                    v2287.Size = UDim2.new(1, 0, 1, 0)
                    v2287.TextYAlignment = "Top"
                    v2287.BackgroundTransparency = 1
                    v2287.TextStrokeTransparency = 0.5
                    v2287.TextColor3 = Color3.fromRGB(251, 255, 0)
                    v2287.Text =
                        v972.Name ..
                        " \n" ..
                            v86(
                                (game:GetService("Players").LocalPlayer.Character.Head.Position - v972.Handle.Position).Magnitude /
                                    3
                            ) ..
                                " Distance"
                else
                    v972.Handle["NameEsp" .. Number].TextLabel.Text =
                        v972.Name ..
                        " " ..
                            v86(
                                (game:GetService("Players").LocalPlayer.Character.Head.Position - v972.Handle.Position).Magnitude /
                                    3
                            ) ..
                                " Distance"
                end
            elseif v972.Handle:FindFirstChild("NameEsp" .. Number) then
                v972.Handle:FindFirstChild("NameEsp" .. Number):Destroy()
            end
        end
    end
end
function UpdateIslandMirageESP()
    for v973, v974 in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
        pcall(
            function()
                if MirageIslandESP then
                    if (v974.Name == "Mirage Island") then
                        if not v974:FindFirstChild("NameEsp") then
                            local v2520 = Instance.new("BillboardGui", v974)
                            v2520.Name = "NameEsp"
                            v2520.ExtentsOffset = Vector3.new(0, 1, 0)
                            v2520.Size = UDim2.new(1, 200, 1, 30)
                            v2520.Adornee = v974
                            v2520.AlwaysOnTop = true
                            local v2526 = Instance.new("TextLabel", v2520)
                            v2526.Font = "Code"
                            v2526.FontSize = "Size14"
                            v2526.TextWrapped = true
                            v2526.Size = UDim2.new(1, 0, 1, 0)
                            v2526.TextYAlignment = "Top"
                            v2526.BackgroundTransparency = 1
                            v2526.TextStrokeTransparency = 0.5
                            v2526.TextColor3 = Color3.fromRGB(255, 255, 255)
                        else
                            v974["NameEsp"].TextLabel.Text =
                                v974.Name ..
                                "   \n" ..
                                    v86(
                                        (game:GetService("Players").LocalPlayer.Character.Head.Position - v974.Position).Magnitude /
                                            3
                                    ) ..
                                        " M"
                        end
                    end
                elseif v974:FindFirstChild("NameEsp") then
                    v974:FindFirstChild("NameEsp"):Destroy()
                end
            end
        )
    end
end
function UpdateLSDESP()
    for v975, v976 in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
        pcall(
            function()
                if LADESP then
                    if (v976.Name == "Legendary Sword Dealer") then
                        if not v976:FindFirstChild("NameEsp") then
                            local v2536 = Instance.new("BillboardGui", v976)
                            v2536.Name = "NameEsp"
                            v2536.ExtentsOffset = Vector3.new(0, 1, 0)
                            v2536.Size = UDim2.new(1, 200, 1, 30)
                            v2536.Adornee = v976
                            v2536.AlwaysOnTop = true
                            local v2542 = Instance.new("TextLabel", v2536)
                            v2542.Font = "Code"
                            v2542.FontSize = "Size14"
                            v2542.TextWrapped = true
                            v2542.Size = UDim2.new(1, 0, 1, 0)
                            v2542.TextYAlignment = "Top"
                            v2542.BackgroundTransparency = 1
                            v2542.TextStrokeTransparency = 0.5
                            v2542.TextColor3 = Color3.fromRGB(255, 255, 255)
                        else
                            v976["NameEsp"].TextLabel.Text =
                                v976.Name ..
                                "   \n" ..
                                    v86(
                                        (game:GetService("Players").LocalPlayer.Character.Head.Position - v976.Position).Magnitude /
                                            3
                                    ) ..
                                        " M"
                        end
                    end
                elseif v976:FindFirstChild("NameEsp") then
                    v976:FindFirstChild("NameEsp"):Destroy()
                end
            end
        )
    end
end
function InfAb()
    if InfAbility then
        if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
            local v1970 = Instance.new("ParticleEmitter")
            v1970.Acceleration = Vector3.new(0, 0, 0)
            v1970.Archivable = true
            v1970.Drag = 20
            v1970.EmissionDirection = Enum.NormalId.Top
            v1970.Enabled = true
            v1970.Lifetime = NumberRange.new(0, 0)
            v1970.LightInfluence = 0
            v1970.LockedToPart = true
            v1970.Name = "Agility"
            v1970.Rate = 500
            local v1982 = {NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(1, 4)}
            v1970.Size = NumberSequence.new(v1982)
            v1970.RotSpeed = NumberRange.new(9999, 99999)
            v1970.Rotation = NumberRange.new(0, 0)
            v1970.Speed = NumberRange.new(30, 30)
            v1970.SpreadAngle = Vector2.new(0, 0, 0, 0)
            v1970.Texture = ""
            v1970.VelocityInheritance = 0
            v1970.ZOffset = 2
            v1970.Transparency = NumberSequence.new(0)
            v1970.Color = ColorSequence.new(Color3.fromRGB(0, 0, 0), Color3.fromRGB(0, 0, 0))
            v1970.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        end
    elseif game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility"):Destroy()
    end
end
local v87 = game:GetService("Players").LocalPlayer
local v88 = v87.Character.Energy.Value
function infinitestam()
    v87.Character.Energy.Changed:connect(
        function()
            if InfiniteEnergy then
                v87.Character.Energy.Value = v88
            end
        end
    )
end
spawn(
    function()
        pcall(
            function()
                while wait(0.1) do
                    if InfiniteEnergy then
                        wait(0.1)
                        v88 = v87.Character.Energy.Value
                        infinitestam()
                    end
                end
            end
        )
    end
)
function NoDodgeCool()
    if nododgecool then
        for v1876, v1877 in next, getgc() do
            if game:GetService("Players").LocalPlayer.Character.Dodge then
                if
                    ((typeof(v1877) == "function") and
                        (getfenv(v1877).script == game:GetService("Players").LocalPlayer.Character.Dodge))
                 then
                    for v2552, v2553 in next, getupvalues(v1877) do
                        if (tostring(v2553) == "0.1") then
                            repeat
                                wait(0.1)
                                setupvalue(v1877, v2552, 0)
                            until not nododgecool
                        end
                    end
                end
            end
        end
    end
end
local v89 = "indq9pdnq0"
local v90 = "Fpjq90pdfhipqdm"
local v91
local v92
RunService = game:GetService("RunService")
speaker = game.Players.LocalPlayer
vehicleflyspeed = 5
function getRoot(v485)
    local v486 =
        v485:FindFirstChild("HumanoidRootPart") or v485:FindFirstChild("Torso") or v485:FindFirstChild("UpperTorso")
    return v486
end
local v94 = function(v487)
    pcall(
        function()
            FLYING = false
            local v977 = getRoot(v487.Character)
            v977:FindFirstChild(v89):Destroy()
            v977:FindFirstChild(v90):Destroy()
            v487.Character:FindFirstChildWhichIsA("Humanoid").PlatformStand = false
            v91:Disconnect()
            v92:Disconnect()
        end
    )
end
local v95 = function(v488, v489)
    v94(v488)
    FLYING = true
    local v490 = getRoot(v488.Character)
    local v491 = workspace.CurrentCamera
    local v492 = Vector3.new()
    local v493 = Vector3.new(0, 0, 0)
    local v494 = Vector3.new(8999999488, 8999999488, 8999999488)
    local v495 = require(v488.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule"))
    local v496 = Instance.new("BodyVelocity")
    v496.Name = v89
    v496.Parent = v490
    v496.MaxForce = v493
    v496.Velocity = v493
    local v501 = Instance.new("BodyGyro")
    v501.Name = v90
    v501.Parent = v490
    v501.MaxTorque = v494
    v501.P = 1000
    v501.D = 50
    v91 =
        v488.CharacterAdded:Connect(
        function()
            local v979 = Instance.new("BodyVelocity")
            v979.Name = v89
            v979.Parent = v490
            v979.MaxForce = v493
            v979.Velocity = v493
            local v984 = Instance.new("BodyGyro")
            v984.Name = v90
            v984.Parent = v490
            v984.MaxTorque = v494
            v984.P = 1000
            v984.D = 50
        end
    )
    v92 =
        RunService.RenderStepped:Connect(
        function()
            v490 = getRoot(v488.Character)
            v491 = workspace.CurrentCamera
            if
                (v488.Character:FindFirstChildWhichIsA("Humanoid") and v490 and v490:FindFirstChild(v89) and
                    v490:FindFirstChild(v90))
             then
                local v1878 = v488.Character:FindFirstChildWhichIsA("Humanoid")
                local v1879 = v490:FindFirstChild(v89)
                local v1880 = v490:FindFirstChild(v90)
                v1879.MaxForce = v494
                v1880.MaxTorque = v494
                if not v489 then
                    v1878.PlatformStand = true
                end
                v1880.CFrame = v491.CoordinateFrame
                v1879.Velocity = v492
                local v1886 = v495:GetMoveVector()
                if (v1886.X > 0) then
                    v1879.Velocity =
                        v1879.Velocity +
                        (v491.CFrame.RightVector * v1886.X * ((v489 and vehicleflyspeed) or iyflyspeed) * 50)
                end
                if (v1886.X < 0) then
                    v1879.Velocity =
                        v1879.Velocity +
                        (v491.CFrame.RightVector * v1886.X * ((v489 and vehicleflyspeed) or iyflyspeed) * 50)
                end
                if (v1886.Z > 0) then
                    v1879.Velocity =
                        v1879.Velocity -
                        (v491.CFrame.LookVector * v1886.Z * ((v489 and vehicleflyspeed) or iyflyspeed) * 50)
                end
                if (v1886.Z < 0) then
                    v1879.Velocity =
                        v1879.Velocity -
                        (v491.CFrame.LookVector * v1886.Z * ((v489 and vehicleflyspeed) or iyflyspeed) * 50)
                end
                if (v1879.Velocity.Magnitude > 350) then
                    v1879.Velocity = v1879.Velocity.Unit * 350
                end
            end
        end
    )
end
function Click()
    game:GetService("VirtualUser"):CaptureController()
    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
end
function AutoHaki()
    if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
    end
end
function EquipWeapon(v507)
    if not Nill then
        if game.Players.LocalPlayer.Backpack:FindFirstChild(v507) then
            Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(v507)
            wait(0.1)
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool)
        end
    end
end
function BTP(v508)
    pcall(
        function()
            if
                (((v508.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 1500) and
                    not Auto_Raid and
                    (game.Players.LocalPlayer.Character.Humanoid.Health > 0))
             then
                repeat
                    wait()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v508
                    wait(0.05)
                    game.Players.LocalPlayer.Character.Head:Destroy()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v508
                until ((v508.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 1500) and
                    (game.Players.LocalPlayer.Character.Humanoid.Health > 0)
            end
        end
    )
end
local v96 = false
function WaitHRP(v509)
    if not v509 then
        return
    end
    return v509.Character:WaitForChild("HumanoidRootPart", 9)
end
function CheckNearestTeleporter(v510)
    local v511 = v510.Position
    local v512 = math.huge
    local v513 = nil
    local v514 = game.PlaceId
    local v515 = {}
    if (v514 == 2753915549) then
        v515 = {
            Sky3 = Vector3.new(-7894, 5547, -380),
            Sky3Exit = Vector3.new(-4607, 874, -1667),
            UnderWater = Vector3.new(61163, 11, 1819),
            UnderwaterExit = Vector3.new(4050, -1, -1814)
        }
    elseif (v514 == 4442272183) then
        v515 = {
            ["Swan Mansion"] = Vector3.new(-390, 332, 673),
            ["Swan Room"] = Vector3.new(2285, 15, 905),
            ["Cursed Ship"] = Vector3.new(923, 126, 32852),
            ["Zombie Island"] = Vector3.new(-6509, 83, -133)
        }
    elseif (v514 == 7449423635) then
        v515 = {
            ["Floating Turtle"] = Vector3.new(-12462, 375, -7552),
            ["Hydra Island"] = Vector3.new(5745, 610, -267),
            Mansion = Vector3.new(-12462, 375, -7552),
            Castle = Vector3.new(-5036, 315, -3179),
            ["Beautiful Pirate"] = Vector3.new(5319, 23, -93),
            ["Beautiful Room"] = Vector3.new(
                5314.58203,
                22.5364361,
                -125.942276,
                1,
                2.1476277e-8,
                -1.9911115e-13,
                -2.1476277e-8,
                1,
                -3.0510602e-8,
                1.984559e-13,
                3.0510602e-8,
                1
            ),
            ["Temple of Time"] = Vector3.new(28286, 14897, 103)
        }
    end
    for v991, v992 in pairs(v515) do
        local v993 = (v992 - v511).Magnitude
        if (v993 < v512) then
            v512 = v993
            v513 = v992
        end
    end
    local v516 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
    if (v512 <= (v511 - v516).Magnitude) then
        return v513
    end
end
function requestEntrance(v517)
    game.ReplicatedStorage.Remotes.CommF_:InvokeServer("requestEntrance", v517)
    local v518 = game.Players.LocalPlayer.Character.HumanoidRootPart
    v518.CFrame = v518.CFrame + Vector3.new(0, 50, 0)
    task.wait(0.5)
end
local v97 = false
function topos(v520)
    local v521 = game.Players.LocalPlayer
    if (v521.Character and (v521.Character.Humanoid.Health > 0) and v521.Character:FindFirstChild("HumanoidRootPart")) then
        if not v520 then
            return
        end
        local v1720 = (v520.Position - v521.Character.HumanoidRootPart.Position).Magnitude
        local v1721 = CheckNearestTeleporter(v520)
        if v1721 then
            requestEntrance(v1721)
        end
        if not v521.Character:FindFirstChild("PartTele") then
            local v1997 = Instance.new("Part", v521.Character)
            v1997.Size = Vector3.new(10, 1, 10)
            v1997.Name = "PartTele"
            v1997.Anchored = true
            v1997.Transparency = 1
            v1997.CanCollide = false
            v1997.CFrame = WaitHRP(v521).CFrame
            v1997:GetPropertyChangedSignal("CFrame"):Connect(
                function()
                    if not v96 then
                        return
                    end
                    task.wait()
                    if (v521.Character and v521.Character:FindFirstChild("HumanoidRootPart")) then
                        local v2299 = v1997.CFrame
                        WaitHRP(v521).CFrame = CFrame.new(v2299.Position.X, v520.Position.Y, v2299.Position.Z)
                    end
                end
            )
        end
        v96 = true
        if (v97 and (v1720 > distbyp)) then
            bypass(v520)
        end
        local v1722 = getgenv().TweenSpeed
        if (v1720 <= 250) then
            v1722 = v1722 * 3
        end
        local v1723 = CFrame.new(v520.Position.X, v520.Position.Y, v520.Position.Z)
        local v1724 =
            game:GetService("TweenService"):Create(
            v521.Character.PartTele,
            TweenInfo.new(v1720 / v1722, Enum.EasingStyle.Linear),
            {CFrame = v520}
        )
        v1724:Play()
        v1724.Completed:Connect(
            function(v1887)
                if (v1887 == Enum.PlaybackState.Completed) then
                    if v521.Character:FindFirstChild("PartTele") then
                        v521.Character.PartTele:Destroy()
                    end
                    v96 = false
                end
            end
        )
    end
end
function TP1(v522)
    topos(v522)
end
function TP2(v523)
    local v524 = game.Players.LocalPlayer
    if (v524.Character and (v524.Character.Humanoid.Health > 0) and v524.Character:FindFirstChild("HumanoidRootPart")) then
        local v1725 = (v523.Position - v524.Character.HumanoidRootPart.Position).Magnitude
        if not v523 then
            return
        end
        local v1726 = CheckNearestTeleporter(v523)
        if v1726 then
            requestEntrance(v1726)
        end
        if not v524.Character:FindFirstChild("PartTele") then
            local v2005 = Instance.new("Part", v524.Character)
            v2005.Size = Vector3.new(10, 1, 10)
            v2005.Name = "PartTele"
            v2005.Anchored = true
            v2005.Transparency = 1
            v2005.CanCollide = true
            v2005.CFrame = WaitHRP(v524).CFrame
            v2005:GetPropertyChangedSignal("CFrame"):Connect(
                function()
                    if not v96 then
                        return
                    end
                    task.wait()
                    if (v524.Character and v524.Character:FindFirstChild("HumanoidRootPart")) then
                        WaitHRP(v524).CFrame = v2005.CFrame
                    end
                end
            )
        end
        v96 = true
        local v1727 =
            game:GetService("TweenService"):Create(
            v524.Character.PartTele,
            TweenInfo.new(v1725 / 350, Enum.EasingStyle.Linear),
            {CFrame = v523}
        )
        v1727:Play()
        v1727.Completed:Connect(
            function(v1888)
                if (v1888 == Enum.PlaybackState.Completed) then
                    if v524.Character:FindFirstChild("PartTele") then
                        v524.Character.PartTele:Destroy()
                    end
                    v96 = false
                end
            end
        )
    end
end
function stopTeleport()
    v96 = false
    local v525 = game.Players.LocalPlayer
    if v525.Character:FindFirstChild("PartTele") then
        v525.Character.PartTele:Destroy()
    end
end
spawn(
    function()
        while task.wait() do
            if not v96 then
                stopTeleport()
            end
        end
    end
)
spawn(
    function()
        local v526 = game.Players.LocalPlayer
        while task.wait() do
            pcall(
                function()
                    if v526.Character:FindFirstChild("PartTele") then
                        if
                            ((v526.Character.HumanoidRootPart.Position - v526.Character.PartTele.Position).Magnitude >=
                                100)
                         then
                            stopTeleport()
                        end
                    end
                end
            )
        end
    end
)
local v98 = game.Players.LocalPlayer
local function v99(v527)
    local v528 = v527:WaitForChild("Humanoid")
    v528.Died:Connect(
        function()
            stopTeleport()
        end
    )
end
v98.CharacterAdded:Connect(v99)
if v98.Character then
    v99(v98.Character)
end
function TPB(v529)
    local v530 = game:service("TweenService")
    local v531 =
        TweenInfo.new(
        (game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat.CFrame.Position - v529.Position).Magnitude / 300,
        Enum.EasingStyle.Linear
    )
    tween = v530:Create(game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat, v531, {CFrame = v529})
    tween:Play()
    local v532 = {}
    v532.Stop = function(v994)
        tween:Cancel()
    end
    return v532
end
Type = 1
spawn(
    function()
        while wait() do
            if (Type == 1) then
                Pos = CFrame.new(0, PosY, -19)
            elseif (Type == 2) then
                Pos = CFrame.new(19, PosY, 0)
            elseif (Type == 3) then
                Pos = CFrame.new(0, PosY, 19)
            elseif (Type == 4) then
                Pos = CFrame.new(-19, PosY, 0)
            end
        end
    end
)
spawn(
    function()
        while wait(0.1) do
            Type = 1
            wait(0.2)
            Type = 2
            wait(0.2)
            Type = 3
            wait(0.2)
            Type = 4
            wait(0.2)
        end
    end
)
spawn(
    function()
        pcall(
            function()
                while wait() do
                    if
                        (_G.AdvanceDungeon or _G.DoughKingRaid or _G.DoughtBoss or _G.FarmChest or _G.Factory or
                            _G.FarmBossHallow or
                            _G.FarmSwanGlasses or
                            _G.LongSword or
                            _G.BlackSpikeycoat or
                            _G.ElectricClaw or
                            _G.FarmGunMastery or
                            _G.HolyTorch or
                            _G.LawRaid or
                            _G.FarmBoss or
                            _G.TwinHooks or
                            _G.OpenSwanDoor or
                            _G.Dragon_Trident or
                            _G.Saber or
                            _G.FarmFruitMastery or
                            _G.FarmGunMastery or
                            _G.TeleportIsland or
                            _G.EvoRace or
                            _G.FarmAllMsBypassType or
                            _G.Observationv2 or
                            _G.MusketeerHat or
                            _G.Ectoplasm or
                            _G.Rengoku or
                            _G.AutoDarkbeard or
                            _G.Rainbow_Haki or
                            _G.Observation or
                            _G.DarkDagger or
                            _G.Safe_Mode or
                            _G.MasteryFruit or
                            _G.BudySword or
                            _G.OderSword or
                            _G.AllBoss or
                            _G.Sharkman or
                            _G.Mastery_Fruit or
                            _G.Mastery_Gun or
                            _G.Dungeon or
                            _G.Cavender or
                            _G.Pole or
                            _G.Kill_Ply or
                            _G.Factory or
                            _G.SecondSea or
                            _G.TeleportPly or
                            _G.Bartilo or
                            _G.DarkBoss or
                            _G.GrabChest or
                            _G.Holy_Torch or
                            _G.Level or
                            _G.KillAfterTrials or
                            _G.Clip or
                            FarmBoss or
                            _G.Elitehunter or
                            _G.CollectBerry or
                            _G.ThirdSea or
                            _G.Bone or
                            _G.Train or
                            _G.heart or
                            _G.doughking or
                            _G.FarmMaterial or
                            _G.Guitar or
                            Auto_Quest_Soul_Guitar or
                            _G.Dragon_Trident or
                            _G.tushita or
                            _G.d or
                            _G.waden or
                            _G.Greybeard or
                            _G.pole or
                            _G.saw or
                            _G.FarmNearest or
                            _G.FarmChest or
                            _G.Carvender or
                            _G.TwinHook or
                            AutoMobAura or
                            _G.Tweenfruit or
                            _G.TeleportNPC or
                            _G.Leather or
                            _G.Wing or
                            _G.Umm or
                            _G.Makori_gay or
                            Radioactive or
                            Fish or
                            Gunpowder or
                            Dragon_Scale or
                            Cocoafarm or
                            Scrap or
                            MiniHee or
                            _G.FarmSeabaest or
                            Yama_Quest or
                            Get_Cursed or
                            Tushita_Quest or
                            _G.FarmMob or
                            _G.MysticIsland or
                            _G.FarmDungeon or
                            _G.RaidPirate or
                            _G.QuestRace or
                            _G.TweenMGear or
                            getgenv().AutoFarm or
                            _G.PlayerHunter or
                            _G.Factory or
                            Grab_Chest or
                            _G.Seabest or
                            _G.SeaBest or
                            _G.KillTial or
                            _G.Saber or
                            _G.Position_Spawn or
                            _G.Farmfast or
                            _G.Race or
                            _G.RaidPirate or
                            Open_Color_Haki or
                            _G.Terrorshark or
                            FarmShark or
                            _G.farmpiranya or
                            _G.DefendVolcano or
                            _G.KillGolem or
                            _G.TpPrehistoric or
                            _G.Fish_Crew_Member or
                            _G.AppleAutoDriveBoat or
                            _G.bjirFishBoat or
                            _G.KillGhostShip or
                            _G.KillLeviathan or
                            _G.SegmentLeviathan or
                            _G.AutoLeviathan or
                            _G.FrozenDimension or
                            _G.FKitsune)
                     then
                        if
                            not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild(
                                "BodyClip"
                            )
                         then
                            local v2146 = Instance.new("BodyVelocity")
                            v2146.Name = "BodyClip"
                            v2146.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                            v2146.MaxForce = Vector3.new(100000, 100000, 100000)
                            v2146.Velocity = Vector3.new(0, 0, 0)
                        end
                    end
                end
            end
        )
    end
)
spawn(
    function()
        pcall(
            function()
                game:GetService("RunService").Stepped:Connect(
                    function()
                        if
                            (_G.AdvanceDungeon or _G.DoughKingRaid or _G.DoughtBoss or _G.Factory or _G.FarmBossHallow or
                                _G.FarmSwanGlasses or
                                _G.LongSword or
                                _G.BlackSpikeycoat or
                                _G.ElectricClaw or
                                _G.FarmGunMastery or
                                _G.HolyTorch or
                                _G.LawRaid or
                                _G.FarmBoss or
                                _G.TwinHooks or
                                _G.OpenSwanDoor or
                                _G.Dragon_Trident or
                                _G.Saber or
                                _G.NoClip or
                                _G.FarmFruitMastery or
                                _G.FarmGunMastery or
                                _G.TeleportIsland or
                                _G.EvoRace or
                                _G.FarmAllMsBypassType or
                                _G.Observationv2 or
                                _G.MusketeerHat or
                                _G.Ectoplasm or
                                _G.Rengoku or
                                _G.AutoDarkbeard or
                                _G.Rainbow_Haki or
                                _G.Observation or
                                _G.DarkDagger or
                                _G.Safe_Mode or
                                _G.MasteryFruit or
                                _G.BudySword or
                                _G.OderSword or
                                _G.AllBoss or
                                _G.Sharkman or
                                _G.Mastery_Fruit or
                                _G.Mastery_Gun or
                                _G.Dungeon or
                                _G.Cavender or
                                _G.Pole or
                                _G.Kill_Ply or
                                _G.Factory or
                                _G.SecondSea or
                                _G.TeleportPly or
                                _G.Bartilo or
                                _G.DarkBoss or
                                _G.GrabChest or
                                _G.Holy_Torch or
                                _G.Level or
                                _G.KillAfterTrials or
                                _G.Clip or
                                _G.Elitehunter or
                                _G.CollectBerry or
                                _G.ThirdSea or
                                _G.Bone or
                                _G.Train or
                                _G.heart or
                                _G.doughking or
                                _G.FarmMaterial or
                                _G.Guitar or
                                Auto_Quest_Soul_Guitar or
                                _G.Dragon_Trident or
                                _G.tushita or
                                _G.waden or
                                _G.pole or
                                _G.Greybeard or
                                _G.saw or
                                _G.FarmNearest or
                                _G.Carvender or
                                _G.TwinHook or
                                AutoMobAura or
                                _G.Tweenfruit or
                                _G.TeleportNPC or
                                _G.Kai or
                                _G.Leather or
                                _G.Wing or
                                _G.Umm or
                                _G.Makori_gay or
                                Radioactive or
                                Fish or
                                Gunpowder or
                                Dragon_Scale or
                                Cocoafarm or
                                Scrap or
                                MiniHee or
                                _G.FarmSeabaest or
                                Yama_Quest or
                                Get_Cursed or
                                Tushita_Quest or
                                _G.FarmMob or
                                _G.MysticIsland or
                                _G.FarmDungeon or
                                _G.RaidPirate or
                                _G.QuestRace or
                                _G.TweenMGear or
                                getgenv().AutoFarm or
                                _G.PlayerHunter or
                                _G.Factory or
                                _G.Seabest or
                                _G.SeaBest or
                                _G.KillTial or
                                _G.Saber or
                                _G.Position_Spawn or
                                _G.TPB or
                                _G.Farmfast or
                                _G.Race or
                                _G.RaidPirate or
                                Open_Color_Haki or
                                _G.Terrorshark or
                                _G.KillLeviathan or
                                _G.SegmentLeviathan or
                                _G.DefendVolcano or
                                _G.KillGolem or
                                _G.TpPrehistoric or
                                _G.AutoLeviathan or
                                FarmShark or
                                _G.farmpiranya or
                                _G.Fish_Crew_Member or
                                _G.AppleAutoDriveBoat or
                                _G.FrozenDimension or
                                _G.FKitsune)
                         then
                            for v2078, v2079 in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
                                if v2079:IsA("BasePart") then
                                    v2079.CanCollide = false
                                end
                            end
                        end
                    end
                )
            end
        )
    end
)
function InstancePos(v534)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v534
end
function TP3(v536)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v536
end
spawn(
    function()
        while wait() do
            if
                (_G.DoughtBoss or _G.DungeonMobAura or _G.FarmChest or _G.FarmBossHallow or _G.Factory or
                    _G.FarmSwanGlasses or
                    _G.LongSword or
                    _G.BlackSpikeycoat or
                    _G.ElectricClaw or
                    _G.FarmGunMastery or
                    _G.HolyTorch or
                    _G.LawRaid or
                    _G.FarmBoss or
                    _G.TwinHooks or
                    _G.OpenSwanDoor or
                    _G.Dragon_Trident or
                    _G.Saber or
                    _G.NoClip or
                    _G.FarmFruitMastery or
                    _G.FarmGunMastery or
                    _G.TeleportIsland or
                    _G.EvoRace or
                    _G.FarmAllMsBypassType or
                    _G.Observationv2 or
                    _G.MusketeerHat or
                    _G.Ectoplasm or
                    _G.Rengoku or
                    _G.Rainbow_Haki or
                    _G.Observation or
                    _G.DarkDagger or
                    _G.Safe_Mode or
                    _G.MasteryFruit or
                    _G.BudySword or
                    _G.OderSword or
                    _G.AllBoss or
                    _G.Sharkman or
                    _G.Mastery_Fruit or
                    _G.Mastery_Gun or
                    _G.Dungeon or
                    _G.Cavender or
                    _G.Pole or
                    _G.Factory or
                    _G.SecondSea or
                    _G.TeleportPly or
                    _G.Bartilo or
                    _G.DarkBoss or
                    _G.Level or
                    _G.Clip or
                    _G.Elitehunter or
                    _G.ThirdSea or
                    _G.Bone or
                    _G.heart or
                    _G.doughking or
                    _G.d or
                    _G.waden or
                    _G.gay or
                    _G.ObservationHakiV2 or
                    _G.FarmMaterial or
                    _G.FarmNearest or
                    _G.Carvender or
                    _G.TwinHook or
                    AutoMobAura or
                    _G.Leather or
                    _G.Wing or
                    _G.Umm or
                    _G.Makori_gay or
                    Radioactive or
                    Fish or
                    Gunpowder or
                    Dragon_Scale or
                    Cocoafarm or
                    Scrap or
                    MiniHee or
                    _G.FarmSeabaest or
                    _G.CDK or
                    _G.RaidPirate or
                    getgenv().AutoFarm or
                    _G.PlayerHunter or
                    _G.Factory or
                    _G.AttackDummy or
                    _G.Seabest or
                    _G.SeaBest or
                    _G.KillTial or
                    _G.Saber or
                    _G.Farmfast or
                    _G.RaidPirate or
                    _G.Terrorshark or
                    FarmShark or
                    _G.farmpiranya or
                    _G.Fish_Crew_Member or
                    _G.bjirFishBoat or
                    (_G.KillGhostShip == true))
             then
                pcall(
                    function()
                        game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("Ken", true)
                    end
                )
            end
        end
    end
)
spawn(
    function()
        game:GetService("RunService").RenderStepped:Connect(
            function()
                if (_G.Click or Fastattack) then
                    pcall(
                        function()
                            game:GetService("VirtualUser"):CaptureController()
                            game:GetService("VirtualUser"):Button1Down(Vector2.new(0, 1, 0, 1))
                        end
                    )
                end
            end
        )
    end
)
function StopTween(v538)
    if not v538 then
        _G.StopTween = true
        wait()
        topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait()
        if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
        end
        _G.StopTween = false
        _G.Clip = false
    end
    if game.Players.LocalPlayer.Character:FindFirstChild("Highlight") then
        game.Players.LocalPlayer.Character:FindFirstChild("Highlight"):Destroy()
    end
end
spawn(
    function()
        pcall(
            function()
                while wait() do
                    for v1889, v1890 in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                        if v1890:IsA("Tool") then
                            if v1890:FindFirstChild("RemoteFunctionShoot") then
                                SelectWeaponGun = v1890.Name
                            end
                        end
                    end
                end
            end
        )
    end
)
game:GetService("Players").LocalPlayer.Idled:connect(
    function()
        game:GetService("VirtualUser"):Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
        wait(1)
        game:GetService("VirtualUser"):Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    end
)
PosY = 25
Kill_At = 28
local v100 = v46:Window("Blox Fruits", "")
local v101 = v100:T("      Trạng Thái", "rbxassetid://10734984606")
local v102 = v100:T("      Chung", "rbxassetid://10723407389")
local v103 = v100:T("        Cài Đặt", "rbxassetid://10734950309")
local v104 = v100:T("      Vật Phẩm", "rbxassetid://10734975692")
local v105 = v100:T("        Tộc V4", "rbxassetid://10747372167")
local v106 = v100:T("      Sự Kiện", "rbxassetid://10709783577")
local v107 = v100:T("      Người Chơi", "rbxassetid://10747373176")
local v108 = v100:T("      Giả", "rbxassetid://10723346959")
local v109 = v100:T("      Tập Kích", "rbxassetid://10723345749")
local v110 = v100:T("      Di Chuyển", "rbxassetid://10723434557")
local v111 = v100:T("      Cửa Hàng", "rbxassetid://10734952479")
local v112 = v100:T("        Trái", "rbxassetid://10709761889")
local v113 = v100:T("        Máy Chủ", "rbxassetid://10709782582")
v101:Seperator("Vào Discord")
v101:Label("Mọi Người Vào Giao Lưu")
v101:Button(
    "Sao Chép Link Discord",
    function()
        setclipboard("https://discord.com/invite/hcJ8PHtkfy")
    end
)
v101:Seperator("Thời Gian")
Time = v101:Label("Thời Gian Hoạt Động")
function UpdateTime()
    local v539 = math.floor(workspace.DistributedGameTime + 0.5)
    local v540 = math.floor(v539 / (60 ^ 2)) % 24
    local v541 = math.floor(v539 / (60 ^ 1)) % 60
    local v542 = math.floor(v539 / (60 ^ 0)) % 60
    Time:Set("[Thời Gian Máy Chủ]: Giờ: " .. v540 .. " Phút: " .. v541 .. " Giây: " .. v542)
end
spawn(
    function()
        while task.wait() do
            pcall(
                function()
                    UpdateTime()
                end
            )
        end
    end
)
Client = v101:Label("Client")
function UpdateClient()
    local v543 = workspace:GetRealPhysicsFPS()
    Client:Set("[FPS]: " .. v543)
end
spawn(
    function()
        while true do
            wait(0.1)
            UpdateClient()
        end
    end
)
Client1 = v101:Label("Client")
function UpdateClient1()
    local v544 = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
    Client1:Set("[PING]: " .. v544)
end
spawn(
    function()
        while true do
            wait(0.1)
            UpdateClient1()
        end
    end
)
v101:Seperator("Người Chơi")
local v114 = v101:Label("Tộc")
spawn(
    function()
        while wait() do
            pcall(
                function()
                    v114:Set("Race:" .. " " .. game:GetService("Players").LocalPlayer.Data.Race.Value)
                end
            )
        end
    end
)
local v115 = v101:Label("Beli")
spawn(
    function()
        while wait() do
            pcall(
                function()
                    v115:Set("Beli:" .. " " .. game:GetService("Players").LocalPlayer.Data.Beli.Value)
                end
            )
        end
    end
)
local v116 = v101:Label("Điểm Tím")
spawn(
    function()
        while wait() do
            pcall(
                function()
                    v116:Set("Diểm Tím:" .. " " .. game:GetService("Players").LocalPlayer.Data.Fragments.Value)
                end
            )
        end
    end
)
local v117 = v101:Label("Tiền Thưởng")
spawn(
    function()
        while wait() do
            pcall(
                function()
                    v117:Set(
                        "Tiền Thưởng:" ..
                            " " .. game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value
                    )
                end
            )
        end
    end
)
local v118 = v101:Label("Trái")
spawn(
    function()
        while wait() do
            pcall(
                function()
                    if
                        (game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                            game:GetService("Players").LocalPlayer.Data.DevilFruit.Value
                        ) or
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                                game:GetService("Players").LocalPlayer.Data.DevilFruit.Value
                            ))
                     then
                        v118:Set("Trái:" .. " " .. game:GetService("Players").LocalPlayer.Data.DevilFruit.Value)
                    else
                        v118:Set("Không Có Trái")
                    end
                end
            )
        end
    end
)
v102:Seperator("Vũ Khí")
local v119 = {"Võ", "Kiếm", "Trái", "Súng"}
_G.SelectWeapon = "Võ"
v102:Dropdown(
    "Chọn Vũ Khí",
    v119,
    function(v545)
        _G.SelectWeapon = v545
    end
)
task.spawn(
    function()
        while wait() do
            pcall(
                function()
                    if (_G.SelectWeapon == "Võ") then
                        for v2080, v2081 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                            if (v2081.ToolTip == "Melee") then
                                if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v2081.Name)) then
                                    _G.SelectWeapon = v2081.Name
                                end
                            end
                        end
                    elseif (_G.SelectWeapon == "Kiếm") then
                        for v2305, v2306 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                            if (v2306.ToolTip == "Sword") then
                                if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v2306.Name)) then
                                    _G.SelectWeapon = v2306.Name
                                end
                            end
                        end
                    elseif (_G.SelectWeapon == "Súng") then
                        for v2589, v2590 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                            if (v2590.ToolTip == "Gun") then
                                if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v2590.Name)) then
                                    _G.SelectWeapon = v2590.Name
                                end
                            end
                        end
                    elseif (_G.SelectWeapon == "Trái") then
                        for v2782, v2783 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                            if (v2783.ToolTip == "Blox Fruit") then
                                if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v2783.Name)) then
                                    _G.SelectWeapon = v2783.Name
                                end
                            end
                        end
                    end
                end
            )
        end
    end
)
local v120 = {"Bình Thường", "Nhanh", "Siêu Nhanh", "Cực Nhanh"}
_G.FastAttackDelay = "Bình Thường"
v102:Dropdown(
    "Tốc Độ Đánh",
    v120,
    function(v546)
        _G.FastAttackDelay = v546
    end
)
spawn(
    function()
        while wait(0.1) do
            if _G.FastAttackDelay then
                pcall(
                    function()
                        if (_G.FastAttackDelay == "Bình Thường") then
                            _G.FastAttackDelay = 0.13
                        elseif (_G.FastAttackDelay == "Nhanh") then
                            _G.FastAttackDelay = 0.07
                        elseif (_G.FastAttackDelay == "Siêu Nhanh") then
                            _G.FastAttackDelay = 0.04
                        elseif (_G.FastAttackDelay == "Cực Nhanh") then
                            _G.FastAttackDelay = 0
                        end
                    end
                )
            end
        end
    end
)
_G.FastAttack = true
if _G.FastAttack then
    local _ENV = (getgenv or getrenv or getfenv)()
    local function v995(v1728, v1729)
        local v1730, v1731 =
            pcall(
            function()
                return v1728:WaitForChild(v1729)
            end
        )
        if (not v1730 or not v1731) then
            warn("noooooo: " .. v1729)
        end
        return v1731
    end
    local function v996(v1732, ...)
        local v1733 = v1732
        for v1891, v1892 in {...} do
            v1733 = v1733:FindFirstChild(v1892) or v995(v1733, v1892)
            if not v1733 then
                break
            end
        end
        return v1733
    end
    local v997 = game:GetService("VirtualInputManager")
    local v998 = game:GetService("CollectionService")
    local v999 = game:GetService("ReplicatedStorage")
    local v1000 = game:GetService("TeleportService")
    local v1001 = game:GetService("RunService")
    local v1002 = game:GetService("Players")
    local v1003 = v1002.LocalPlayer
    if not v1003 then
        warn("Không tìm thấy người chơi cục bộ.")
        return
    end
    local v1004 = v995(v999, "Remotes")
    if not v1004 then
        return
    end
    local v1005 = v995(v1004, "Validator")
    local v1006 = v995(v1004, "CommF_")
    local v1007 = v995(v1004, "CommE")
    local v1008 = v995(workspace, "ChestModels")
    local v1009 = v995(workspace, "_WorldOrigin")
    local v1010 = v995(workspace, "Characters")
    local v1011 = v995(workspace, "Enemies")
    local v1012 = v995(workspace, "Map")
    local v1013 = v995(v1009, "EnemySpawns")
    local v1014 = v995(v1009, "Locations")
    local v1015 = v1001.RenderStepped
    local v1016 = v1001.Heartbeat
    local v1017 = v1001.Stepped
    local v1018 = v995(v999, "Modules")
    local v1019 = v995(v1018, "Net")
    local v1020 = sethiddenproperty or function(...)
            return ...
        end
    local v1021 = setupvalue or (debug and debug.setupvalue)
    local v1022 = getupvalue or (debug and debug.getupvalue)
    local v1023 = {AutoClick = true, ClickDelay = 0}
    local v1024 = {}
    v1024.FastAttack =
        (function()
        if _ENV.rz_FastAttack then
            return _ENV.rz_FastAttack
        end
        local v1734 = {Distance = 100, attackMobs = true, attackPlayers = true, Equipped = nil}
        local v1735 = v995(v1019, "RE/RegisterAttack")
        local v1736 = v995(v1019, "RE/RegisterHit")
        local function v1737(v1893)
            return v1893 and v1893:FindFirstChild("Humanoid") and (v1893.Humanoid.Health > 0)
        end
        local function v1738(v1894, v1895)
            local v1896 = nil
            for v2013, v2014 in v1895:GetChildren() do
                local v2015 = v2014:FindFirstChild("Head")
                if (v2015 and v1737(v2014) and (v1003:DistanceFromCharacter(v2015.Position) < v1734.Distance)) then
                    if (v2014 ~= v1003.Character) then
                        table.insert(v1894, {v2014, v2015})
                        v1896 = v2015
                    end
                end
            end
            return v1896
        end
        v1734.Attack = function(v1897, v1898, v1899)
            if (not v1898 or (#v1899 == 0)) then
                return
            end
            v1735:FireServer(v1023.ClickDelay or 0)
            v1736:FireServer(v1898, v1899)
        end
        v1734.AttackNearest = function(v1900)
            local v1901 = {}
            local v1902 = v1738(v1901, v1011)
            local v1903 = v1738(v1901, v1010)
            if (#v1901 > 0) then
                v1900:Attack(v1902 or v1903, v1901)
            else
                task.wait(0)
            end
        end
        v1734.BladeHits = function(v1904)
            local v1905 = v1737(v1003.Character) and v1003.Character:FindFirstChildOfClass("Tool")
            if (v1905 and (v1905.ToolTip ~= "Gun")) then
                v1904:AttackNearest()
            else
                task.wait(0)
            end
        end
        task.spawn(
            function()
                while task.wait(v1023.ClickDelay) do
                    if v1023.AutoClick then
                        v1734:BladeHits()
                    end
                end
            end
        )
        _ENV.rz_FastAttack = v1734
        return v1734
    end)()
end
v102:Seperator("Tự Động Cày")
v102:Toggle(
    "Cày Cấp",
    _G.Farm,
    function(v547)
        _G.Level = v547
        StopTween(_G.Farm)
    end
)
spawn(
    function()
        while wait() do
            if _G.Level then
                pcall(
                    function()
                        local v2016 =
                            game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                        if not string.find(v2016, NameMon) then
                            StartMagnet = false
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                        end
                        if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) then
                            StartMagnet = false
                            CheckQuest()
                            if BypassTP then
                                if
                                    ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                                        CFrameQuest.Position).Magnitude > 3500)
                                 then
                                    BTP(CFrameQuest)
                                elseif
                                    ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                                        CFrameQuest.Position).Magnitude < 3500)
                                 then
                                    TP1(CFrameQuest)
                                end
                            else
                                TP1(CFrameQuest)
                            end
                            if
                                ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude <=
                                    5)
                             then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "StartQuest",
                                    NameQuest,
                                    LevelQuest
                                )
                            end
                        elseif (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true) then
                            CheckQuest()
                            if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
                                for v2784, v2785 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if
                                        (v2785:FindFirstChild("HumanoidRootPart") and v2785:FindFirstChild("Humanoid") and
                                            (v2785.Humanoid.Health > 0))
                                     then
                                        if (v2785.Name == Mon) then
                                            if
                                                string.find(
                                                    game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,
                                                    NameMon
                                                )
                                             then
                                                repeat
                                                    task.wait()
                                                    EquipWeapon(_G.SelectWeapon)
                                                    AutoHaki()
                                                    PosMon = v2785.HumanoidRootPart.CFrame
                                                    TP1(v2785.HumanoidRootPart.CFrame * Pos)
                                                    v2785.HumanoidRootPart.CanCollide = false
                                                    v2785.Humanoid.WalkSpeed = 0
                                                    v2785.Head.CanCollide = false
                                                    v2785.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                                    StartMagnet = true
                                                until not _G.Level or (v2785.Humanoid.Health <= 0) or not v2785.Parent or
                                                    (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible ==
                                                        false)
                                            else
                                                StartMagnet = false
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                    "AbandonQuest"
                                                )
                                            end
                                        end
                                    end
                                end
                            else
                                TP1(CFrameMon)
                                UnEquipWeapon(_G.SelectWeapon)
                                StartMagnet = false
                                if game:GetService("ReplicatedStorage"):FindFirstChild(Mon) then
                                    TP1(
                                        game:GetService("ReplicatedStorage"):FindFirstChild(Mon).HumanoidRootPart.CFrame *
                                            CFrame.new(15, 10, 2)
                                    )
                                end
                            end
                        end
                    end
                )
            end
        end
    end
)
if World1 then
    v102:Toggle(
        "Cày Cấp Nhanh ( Cấp 1-300 )",
        _G.FarmFast,
        function(v1742)
            _G.Farmfast = v1742
            StopTween(_G.Farmfast)
        end
    )
    spawn(
        function()
            pcall(
                function()
                    while wait() do
                        if (_G.Farmfast and World1) then
                            if (game.Players.LocalPlayer.Data.Level.Value >= 10) then
                                _G.Level = false
                                _G.Farmfast = true
                            end
                        end
                    end
                end
            )
        end
    )
    spawn(
        function()
            while wait() do
                if (_G.Farmfast and World1) then
                    pcall(
                        function()
                            if (game.Players.LocalPlayer.Data.Level.Value >= 10) then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "requestEntrance",
                                    Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047)
                                )
                                for v2591, v2592 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if (v2592.Name == "Shanda") then
                                        if
                                            (v2592:FindFirstChild("Humanoid") and
                                                v2592:FindFirstChild("HumanoidRootPart") and
                                                (v2592.Humanoid.Health > 0))
                                         then
                                            repeat
                                                task.wait()
                                                AutoHaki()
                                                EquipWeapon(_G.SelectWeapon)
                                                v2592.HumanoidRootPart.CanCollide = false
                                                v2592.Humanoid.WalkSpeed = 0
                                                StardMag = true
                                                FastMon = v2592.HumanoidRootPart.CFrame
                                                v2592.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                                TP1(v2592.HumanoidRootPart.CFrame * Pos)
                                            until not _G.Farmfast or not v2592.Parent or (v2592.Humanoid.Health <= 0)
                                            StardMag = false
                                            TP1(CFrame.new(-7678.48974609375, 5566.40380859375, -497.2156066894531))
                                            UnEquipWeapon(_G.SelectWeapon)
                                        end
                                    end
                                end
                            elseif game:GetService("ReplicatedStorage"):FindFirstChild("Shanda") then
                                TP1(
                                    game:GetService("ReplicatedStorage"):FindFirstChild("Shanda").HumanoidRootPart.CFrame *
                                        CFrame.new(5, 10, 2)
                                )
                            end
                        end
                    )
                end
            end
        end
    )
    spawn(
        function()
            pcall(
                function()
                    while wait() do
                        if (_G.Farmfast and World1) then
                            if (game.Players.LocalPlayer.Data.Level.Value >= 75) then
                                _G.Farmfast = false
                                _G.PlayerHunter = true
                            end
                        end
                    end
                end
            )
        end
    )
    spawn(
        function()
            pcall(
                function()
                    while wait() do
                        if (_G.Farmfast and World1) then
                            if (game.Players.LocalPlayer.Data.Level.Value >= 200) then
                                _G.Level = true
                                _G.PlayerHunter = false
                            end
                        end
                    end
                end
            )
        end
    )
end
v102:Toggle(
    "Cày Cấp Và Mua Item",
    false,
    function(v548)
        _G.Level = v548
        _G.SelectWeapon = "Combat"
        _G.Stats_Kaitun = v548
        _G.Superhuman = v548
        _G.SecondSea = v548
        _G.ThirdSea = v548
        _G.BuyLegendarySword = v548
        _G.StoreFruit = v548
        _G.Random_Auto = v548
        _G.BuyAllAib = v548
        _G.BuyAllSword = v548
        StopTween(_G.Farm)
    end
)
spawn(
    function()
        while wait() do
            if _G.BuyAllSword then
                pcall(
                    function()
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Cutlass")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Katana")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Iron Mace")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Duel Katana")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Triple Katana")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Pipe")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Bisento")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Dual-Headed Blade")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Soul Cane")
                        if _G.BuyHop then
                            wait(10)
                            Hop()
                        end
                    end
                )
            end
        end
    end
)
spawn(
    function()
        while wait() do
            if _G.BuyAllAib then
                pcall(
                    function()
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk", "Buy")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Geppo")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Buso")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Soru")
                        if _G.HopBuy then
                            wait(10)
                            Hop()
                        end
                    end
                )
            end
        end
    end
)
v102:Toggle(
    "Đánh Quái Ở Gần",
    _G.FarmNearest,
    function(v549)
        _G.FarmNearest = v549
        StopTween(_G.FarmNearest)
    end
)
spawn(
    function()
        while wait() do
            if _G.FarmNearest then
                for v2017, v2018 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if (v2018.Name and v2018:FindFirstChild("Humanoid")) then
                        if (v2018.Humanoid.Health > 0) then
                            repeat
                                wait()
                                EquipWeapon(_G.SelectWeapon)
                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                    local v2786 = {[1] = "Buso"}
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v2786))
                                end
                                topos(v2018.HumanoidRootPart.CFrame * Pos)
                                v2018.HumanoidRootPart.CanCollide = false
                                Fastattack = true
                                v2018.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                AutoFarmNearestMagnet = true
                                PosMon = v2018.HumanoidRootPart.CFrame
                            until not _G.FarmNearest or not v2018.Parent or (v2018.Humanoid.Health <= 0)
                            AutoFarmNearestMagnet = false
                            Fastattack = false
                        end
                    end
                end
            end
        end
    end
)
v102:Seperator("Elite")
local v121 = v102:Label("N/A")
spawn(
    function()
        while wait() do
            pcall(
                function()
                    if
                        (game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") or
                            game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") or
                            game:GetService("ReplicatedStorage"):FindFirstChild("Urban") or
                            game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or
                            game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or
                            game:GetService("Workspace").Enemies:FindFirstChild("Urban"))
                     then
                        v121:Set("Trạng thái: Có")
                    else
                        v121:Set("Trạng thái: Không")
                    end
                end
            )
        end
    end
)
v102:Toggle(
    "Đánh Elite Hunter",
    _G.Elitehunter,
    function(v550)
        _G.Elitehunter = v550
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
        StopTween(_G.Elitehunter)
    end
)
spawn(
    function()
        while wait() do
            if (_G.Elitehunter and World3) then
                pcall(
                    function()
                        if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true) then
                            if
                                (string.find(
                                    game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,
                                    "Diablo"
                                ) or
                                    string.find(
                                        game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,
                                        "Deandre"
                                    ) or
                                    string.find(
                                        game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,
                                        "Urban"
                                    ))
                             then
                                if
                                    (game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or
                                        game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or
                                        game:GetService("Workspace").Enemies:FindFirstChild("Urban"))
                                 then
                                    for v2787, v2788 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if
                                            ((v2788.Name == "Diablo") or (v2788.Name == "Deandre") or
                                                (v2788.Name == "Urban"))
                                         then
                                            if
                                                (v2788:FindFirstChild("Humanoid") and
                                                    v2788:FindFirstChild("HumanoidRootPart") and
                                                    (v2788.Humanoid.Health > 0))
                                             then
                                                repeat
                                                    wait()
                                                    AutoHaki()
                                                    EquipWeapon(_G.SelectWeapon)
                                                    v2788.HumanoidRootPart.CanCollide = false
                                                    v2788.Humanoid.WalkSpeed = 0
                                                    v2788.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                                    topos(v2788.HumanoidRootPart.CFrame * CFrame.new(PosX, PosY, PosZ))
                                                    game:GetService("VirtualUser"):CaptureController()
                                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                                    sethiddenproperty(
                                                        game:GetService("Players").LocalPlayer,
                                                        "SimulationRadius",
                                                        math.huge
                                                    )
                                                until (_G.Elitehunter == false) or (v2788.Humanoid.Health <= 0) or
                                                    not v2788.Parent
                                            end
                                        end
                                    end
                                elseif game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") then
                                    topos(
                                        game:GetService("ReplicatedStorage"):FindFirstChild("Diablo").HumanoidRootPart.CFrame *
                                            CFrame.new(2, 20, 2)
                                    )
                                elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") then
                                    topos(
                                        game:GetService("ReplicatedStorage"):FindFirstChild("Deandre").HumanoidRootPart.CFrame *
                                            CFrame.new(2, 20, 2)
                                    )
                                elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban") then
                                    topos(
                                        game:GetService("ReplicatedStorage"):FindFirstChild("Urban").HumanoidRootPart.CFrame *
                                            CFrame.new(2, 20, 2)
                                    )
                                end
                            end
                        elseif
                            (_G.EliteHunterHop and
                                (game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("EliteHunter") ==
                                    "I don't have anything for you right now. Come back later."))
                         then
                            hop()
                        else
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
                        end
                    end
                )
            end
        end
    end
)
v102:Toggle(
    "Đánh Elite Đổi Sever",
    _G.EliteHunterHop,
    function(v551)
        _G.EliteHunterHop = v551
    end
)
v102:Seperator("Rương")
v102:Toggle(
    "Nhặt Rương",
    false,
    function(v552)
        _G.FarmChest = v552
        StopTween(_G.FarmChest)
    end
)
spawn(
    function()
        while wait() do
            if _G.FarmChest then
                local v1906 = game:GetService("Players")
                local v1907 = v1906.LocalPlayer
                local v1908 = v1907.Character or v1907.CharacterAdded:Wait()
                local v1909 = v1908:GetPivot().Position
                local v1910 = game:GetService("CollectionService")
                local v1911 = v1910:GetTagged("_ChestTagged")
                local v1912, v1913 = math.huge
                for v2019 = 1, #v1911 do
                    local v2020 = v1911[v2019]
                    local v2021 = (v2020:GetPivot().Position - v1909).Magnitude
                    if (not v2020:GetAttribute("IsDisabled") and (v2021 < v1912)) then
                        v1912, v1913 = v2021, v2020
                    end
                end
                if v1913 then
                    local v2082 = v1913:GetPivot().Position
                    local v2083 = CFrame.new(v2082)
                    topos(v2083)
                end
            end
        end
    end
)
v102:Toggle(
    "Nhặt Rương Bypass (Anti Reset)",
    false,
    function(v553)
        _G.ChestBypass = v553
    end
)
spawn(
    function()
        while wait() do
            if _G.ChestBypass then
                local v1914 = game:GetService("Players")
                local v1915 = v1914.LocalPlayer
                local v1916 = game:GetService("CollectionService")
                local v1917 = v1915.Character or v1915.CharacterAdded:Wait()
                local v1918 = tick()
                while (tick() - v1918) < 4 do
                    v1917 = v1915.Character or v1915.CharacterAdded:Wait()
                    local v2022 = v1917:GetPivot().Position
                    local v2023 = v1916:GetTagged("_ChestTagged")
                    local v2024, v2025 = math.huge
                    for v2084 = 1, #v2023 do
                        local v2085 = v2023[v2084]
                        local v2086 = (v2085:GetPivot().Position - v2022).Magnitude
                        if (not v2085:GetAttribute("IsDisabled") and (v2086 < v2024)) then
                            v2024, v2025 = v2086, v2085
                        end
                    end
                    if v2025 then
                        local v2152 = v2025:GetPivot().Position
                        v1917:PivotTo(CFrame.new(v2152))
                        task.wait(0.2)
                    else
                        break
                    end
                end
                if v1915.Character then
                    v1915.Character:BreakJoints()
                    v1915.CharacterAdded:Wait()
                end
            end
        end
    end
)
v102:Seperator("Xương")
local v122 = {
    ["Reborn Skeleton"] = CFrame.new(-8769.58984, 142.13063, 6055.27637),
    ["Living Zombie"] = CFrame.new(-10156.4531, 138.652481, 5964.5752),
    ["Demonic Soul"] = CFrame.new(-9525.17188, 172.13063, 6152.30566),
    ["Posessed Mummy"] = CFrame.new(-9570.88281, 5.81831884, 6187.86279)
}
spawn(
    function()
        spawn(
            function()
                while task.wait(0.1) do
                    if BonesBring then
                        pcall(
                            function()
                                for v2153, v2154 in pairs(game.Workspace.Enemies:GetChildren()) do
                                    if
                                        ((v2154.Name == "Reborn Skeleton") or (v2154.Name == "Living Zombie") or
                                            (v2154.Name == "Demonic Soul") or
                                            (v2154.Name == "Posessed Mummy"))
                                     then
                                        local v2554 = v122[v2154.Name]
                                        if v2554 then
                                            v2154.HumanoidRootPart.CFrame = v2554
                                        end
                                        v2154.Head.CanCollide = false
                                        v2154.Humanoid.Sit = false
                                        v2154.Humanoid:ChangeState(14)
                                        v2154.HumanoidRootPart.CanCollide = false
                                        v2154.Humanoid.JumpPower = 0
                                        v2154.Humanoid.WalkSpeed = 0
                                        if v2154.Humanoid:FindFirstChild("Animator") then
                                            v2154.Humanoid:FindFirstChild("Animator"):Destroy()
                                        end
                                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                    end
                                end
                            end
                        )
                    end
                end
            end
        )
    end
)
BoneCheck = v102:Label("Xương Của Bạn: N/A")
spawn(
    function()
        while wait() do
            pcall(
                function()
                    BoneCheck:Set(
                        "Xương Của Bạn: " ..
                            (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones", "Check"))
                    )
                end
            )
        end
    end
)
v102:Toggle(
    "Cày Xương",
    false,
    function(v554)
        _G.Bone = v554
        StopTween(_G.Bone)
    end
)
v102:Toggle(
    "Nhận Nhiệm Vụ Xương",
    true,
    function(v555)
        _G.QuestBone = v555
    end
)
local v123 = CFrame.new(-9506.234375, 172.130615234375, 6117.0771484375)
spawn(
    function()
        while wait() do
            if (_G.Bone and not _G.QuestBone and World3) then
                pcall(
                    function()
                        if
                            (game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or
                                game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or
                                game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or
                                game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy"))
                         then
                            for v2307, v2308 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if
                                    ((v2308.Name == "Reborn Skeleton") or (v2308.Name == "Living Zombie") or
                                        (v2308.Name == "Demonic Soul") or
                                        (v2308.Name == "Posessed Mummy"))
                                 then
                                    if
                                        (v2308:FindFirstChild("Humanoid") and v2308:FindFirstChild("HumanoidRootPart") and
                                            (v2308.Humanoid.Health > 0))
                                     then
                                        repeat
                                            wait()
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            v2308.HumanoidRootPart.CanCollide = false
                                            v2308.Humanoid.WalkSpeed = 0
                                            v2308.Head.CanCollide = false
                                            BonesBring = true
                                            PosMonBone = v2308.HumanoidRootPart.CFrame
                                            topos(v2308.HumanoidRootPart.CFrame * Pos)
                                        until not _G.Bone or not v2308.Parent or (v2308.Humanoid.Health <= 0)
                                    end
                                end
                            end
                        else
                            if BypassTP then
                                if
                                    ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v123.Position).Magnitude >
                                        3500)
                                 then
                                    BTP(v123)
                                elseif
                                    ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v123.Position).Magnitude <
                                        3500)
                                 then
                                    topos(v123)
                                end
                            else
                                topos(v123)
                            end
                            UnEquipWeapon(_G.SelectWeapon)
                            BonesBring = false
                            topos(CFrame.new(-9506.234375, 172.130615234375, 6117.0771484375))
                            for v2309, v2310 in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                                if (v2310.Name == "Reborn Skeleton") then
                                    topos(v2310.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                                elseif (v2310.Name == "Living Zombie") then
                                    topos(v2310.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                                elseif (v2310.Name == "Demonic Soul") then
                                    topos(v2310.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                                elseif (v2310.Name == "Posessed Mummy") then
                                    topos(v2310.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                                end
                            end
                        end
                    end
                )
            end
        end
    end
)
local v124 = CFrame.new(-9515.75, 174.8521728515625, 6079.40625)
spawn(
    function()
        while wait() do
            if (_G.Bone and _G.QuestBone and World3) then
                pcall(
                    function()
                        local v2026 =
                            game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                        if not string.find(v2026, "Demonic Soul") then
                            BonesBring = false
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                        end
                        if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) then
                            BonesBring = false
                            if BypassTP then
                                if
                                    ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v124.Position).Magnitude >
                                        3500)
                                 then
                                    BTP(v124)
                                elseif
                                    ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v124.Position).Magnitude <
                                        3500)
                                 then
                                    topos(v124)
                                end
                            else
                                topos(v124)
                            end
                            if
                                ((v124.Position -
                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                    3)
                             then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "StartQuest",
                                    "HauntedQuest2",
                                    1
                                )
                            end
                        elseif (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true) then
                            if
                                (game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or
                                    game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or
                                    game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or
                                    game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy"))
                             then
                                for v2789, v2790 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if
                                        (v2790:FindFirstChild("HumanoidRootPart") and v2790:FindFirstChild("Humanoid") and
                                            (v2790.Humanoid.Health > 0))
                                     then
                                        if
                                            ((v2790.Name == "Reborn Skeleton") or (v2790.Name == "Living Zombie") or
                                                (v2790.Name == "Demonic Soul") or
                                                (v2790.Name == "Posessed Mummy"))
                                         then
                                            if
                                                string.find(
                                                    game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,
                                                    "Demonic Soul"
                                                )
                                             then
                                                repeat
                                                    task.wait()
                                                    EquipWeapon(_G.SelectWeapon)
                                                    AutoHaki()
                                                    PosMonBone = v2790.HumanoidRootPart.CFrame
                                                    topos(v2790.HumanoidRootPart.CFrame * Pos)
                                                    v2790.HumanoidRootPart.CanCollide = false
                                                    v2790.Humanoid.WalkSpeed = 0
                                                    v2790.Head.CanCollide = false
                                                    BonesBring = true
                                                until not _G.Bone or (v2790.Humanoid.Health <= 0) or not v2790.Parent or
                                                    (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible ==
                                                        false)
                                            else
                                                BonesBring = false
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                    "AbandonQuest"
                                                )
                                            end
                                        end
                                    end
                                end
                            else
                                BonesBring = false
                                if game:GetService("ReplicatedStorage"):FindFirstChild("Demonic Soul [Lv. 2025]") then
                                    topos(
                                        game:GetService("ReplicatedStorage"):FindFirstChild("Demonic Soul [Lv. 2025]").HumanoidRootPart.CFrame *
                                            CFrame.new(15, 10, 2)
                                    )
                                end
                            end
                        end
                    end
                )
            end
        end
    end
)
v102:Toggle(
    "Đổi Xương",
    _G.Random_Bone,
    function(v556)
        _G.Random_Bone = v556
    end
)
spawn(
    function()
        pcall(
            function()
                while wait() do
                    if _G.Random_Bone then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones", "Buy", 1, 1)
                    end
                end
            end
        )
    end
)
v102:Toggle(
    "Tự động cầu nguyện",
    pry,
    function(v557)
        _G.Pray = v557
    end
)
spawn(
    function()
        pcall(
            function()
                while wait(0.1) do
                    if _G.Pray then
                        TP1(
                            CFrame.new(
                                -8652.99707,
                                143.450119,
                                6170.50879,
                                -0.983064115,
                                -2.4800553e-10,
                                0.18326205,
                                -1.7891039e-9,
                                1,
                                -8.243923e-9,
                                -0.18326205,
                                -8.43218e-9,
                                -0.983064115
                            )
                        )
                        wait()
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent", 1)
                    end
                end
            end
        )
    end
)
v102:Toggle(
    "Tự động thử vận may",
    Trylux,
    function(v558)
        _G.Trylux = v558
    end
)
spawn(
    function()
        pcall(
            function()
                while wait(0.1) do
                    if _G.Trylux then
                        TP1(
                            CFrame.new(
                                -8652.99707,
                                143.450119,
                                6170.50879,
                                -0.983064115,
                                -2.4800553e-10,
                                0.18326205,
                                -1.7891039e-9,
                                1,
                                -8.243923e-9,
                                -0.18326205,
                                -8.43218e-9,
                                -0.983064115
                            )
                        )
                        wait()
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent", 2)
                    end
                end
            end
        )
    end
)
v102:Seperator("Bột")
local v125 = {
    ["Cookie Crafter"] = CFrame.new(-2333.28052, 37.8239059, -12093.2861),
    ["Cake Guard"] = CFrame.new(-1575.56433, 37.8238907, -12416.2529),
    ["Baking Staff"] = CFrame.new(-1872.35742, 37.8239517, -12899.4248),
    ["Head Baker"] = CFrame.new(-2223.1416, 53.5283203, -12854.752)
}
spawn(
    function()
        spawn(
            function()
                while task.wait(0.1) do
                    if CakeBring then
                        pcall(
                            function()
                                for v2155, v2156 in pairs(game.Workspace.Enemies:GetChildren()) do
                                    if
                                        ((v2156.Name == "Cookie Crafter") or (v2156.Name == "Cake Guard") or
                                            (v2156.Name == "Baking Staff") or
                                            (v2156.Name == "Head Baker"))
                                     then
                                        local v2560 = v125[v2156.Name]
                                        if v2560 then
                                            v2156.HumanoidRootPart.CFrame = v2560
                                        end
                                        v2156.Head.CanCollide = false
                                        v2156.Humanoid.Sit = false
                                        v2156.Humanoid:ChangeState(14)
                                        v2156.HumanoidRootPart.CanCollide = false
                                        v2156.Humanoid.JumpPower = 0
                                        v2156.Humanoid.WalkSpeed = 0
                                        if v2156.Humanoid:FindFirstChild("Animator") then
                                            v2156.Humanoid:FindFirstChild("Animator"):Destroy()
                                        end
                                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                    end
                                end
                            end
                        )
                    end
                end
            end
        )
    end
)
local v126 = v102:Label("Trạng Thái")
spawn(
    function()
        while wait() do
            pcall(
                function()
                    if
                        (string.len(
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")
                        ) == 88)
                     then
                        v126:Set(
                            "Còn: " ..
                                string.sub(
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                        "CakePrinceSpawner"
                                    ),
                                    39,
                                    41
                                )
                        )
                    elseif
                        (string.len(
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")
                        ) == 87)
                     then
                        v126:Set(
                            "Còn: " ..
                                string.sub(
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                        "CakePrinceSpawner"
                                    ),
                                    39,
                                    40
                                )
                        )
                    elseif
                        (string.len(
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")
                        ) == 86)
                     then
                        v126:Set(
                            "Còn: " ..
                                string.sub(
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                        "CakePrinceSpawner"
                                    ),
                                    39,
                                    39
                                )
                        )
                    else
                        v126:Set("Trùm Đã Xuất Hiện")
                    end
                end
            )
        end
    end
)
v102:Toggle(
    "Cày Tư Lệnh Bột",
    false,
    function(v559)
        _G.DoughtBoss = v559
        StopTween(_G.DoughtBoss)
    end
)
v102:Toggle(
    "Nhận Nhiệm Vụ Tư Lệnh Bột",
    true,
    function(v560)
        _G.QuestCake = v560
    end
)
spawn(
    function()
        while wait() do
            if (_G.DoughtBoss and not _G.QuestCake) then
                pcall(
                    function()
                        local v2027 = CFrame.new(-2091.911865234375, 70.00884246826172, -12142.8359375)
                        if
                            (game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") or
                                game:GetService("Workspace").Enemies:FindFirstChild("Dough King"))
                         then
                            for v2311, v2312 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if ((v2312.Name == "Cake Prince") or (v2312.Name == "Dough King")) then
                                    if
                                        (v2312:FindFirstChild("Humanoid") and v2312:FindFirstChild("HumanoidRootPart") and
                                            (v2312.Humanoid.Health > 0))
                                     then
                                        repeat
                                            wait()
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            v2312.HumanoidRootPart.CanCollide = false
                                            v2312.Humanoid.WalkSpeed = 0
                                            topos(v2312.HumanoidRootPart.CFrame * Pos)
                                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                        until not _G.DoughtBoss or not v2312.Parent or (v2312.Humanoid.Health <= 0)
                                    end
                                end
                            end
                        elseif game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
                            topos(
                                game:GetService("ReplicatedStorage"):FindFirstChild(
                                    "Cake Prince [Lv. 2300] [Raid Boss]"
                                ).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2)
                            )
                        elseif
                            (game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter") or
                                game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard") or
                                game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff") or
                                game:GetService("Workspace").Enemies:FindFirstChild("Head Baker"))
                         then
                            for v2791, v2792 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if
                                    ((v2792.Name == "Cookie Crafter") or (v2792.Name == "Cake Guard") or
                                        (v2792.Name == "Baking Staff") or
                                        (v2792.Name == "Head Baker"))
                                 then
                                    if
                                        (v2792:FindFirstChild("Humanoid") and v2792:FindFirstChild("HumanoidRootPart") and
                                            (v2792.Humanoid.Health > 0))
                                     then
                                        repeat
                                            task.wait()
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            v2792.HumanoidRootPart.CanCollide = false
                                            v2792.Humanoid.WalkSpeed = 0
                                            v2792.Head.CanCollide = false
                                            CakeBring = true
                                            PosMonDoughtOpenDoor = v2792.HumanoidRootPart.CFrame
                                            topos(v2792.HumanoidRootPart.CFrame * Pos)
                                        until not _G.DoughtBoss or not v2792.Parent or (v2792.Humanoid.Health <= 0) or
                                            game:GetService("ReplicatedStorage"):FindFirstChild(
                                                "Cake Prince [Lv. 2300] [Raid Boss]"
                                            ) or
                                            game:GetService("Workspace").Enemies:FindFirstChild(
                                                "Cake Prince [Lv. 2300] [Raid Boss]"
                                            ) or
                                            (KillMob == 0)
                                    end
                                end
                            end
                        else
                            if BypassTP then
                                if
                                    ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v2027.Position).Magnitude >
                                        3500)
                                 then
                                    BTP(v2027)
                                elseif
                                    ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v2027.Position).Magnitude <
                                        3500)
                                 then
                                    topos(v2027)
                                end
                            else
                                topos(v2027)
                            end
                            CakeBring = false
                            UnEquipWeapon(_G.SelectWeapon)
                            topos(CFrame.new(-2091.911865234375, 70.00884246826172, -12142.8359375))
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter") then
                                topos(
                                    game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter").HumanoidRootPart.CFrame *
                                        CFrame.new(2, 20, 2)
                                )
                            elseif game:GetService("ReplicatedStorage"):FindFirstChild("Cake Guard") then
                                topos(
                                    game:GetService("ReplicatedStorage"):FindFirstChild("Cake Guard").HumanoidRootPart.CFrame *
                                        CFrame.new(2, 20, 2)
                                )
                            elseif game:GetService("ReplicatedStorage"):FindFirstChild("Baking Staff") then
                                topos(
                                    game:GetService("ReplicatedStorage"):FindFirstChild("Baking Staff").HumanoidRootPart.CFrame *
                                        CFrame.new(2, 20, 2)
                                )
                            elseif game:GetService("ReplicatedStorage"):FindFirstChild("Head Baker") then
                                topos(
                                    game:GetService("ReplicatedStorage"):FindFirstChild("Head Baker").HumanoidRootPart.CFrame *
                                        CFrame.new(2, 20, 2)
                                )
                            end
                        end
                    end
                )
            end
        end
    end
)
spawn(
    function()
        while wait() do
            if (_G.DoughtBoss and _G.QuestCake and World3) then
                pcall(
                    function()
                        local v2028 =
                            CFrame.new(
                            -2021.32007,
                            37.7982254,
                            -12028.7295,
                            0.957576931,
                            -8.8030205e-8,
                            0.288177818,
                            6.930119e-8,
                            1,
                            7.519312e-8,
                            -0.288177818,
                            -5.2032135e-8,
                            0.957576931
                        )
                        if
                            (game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") or
                                game:GetService("Workspace").Enemies:FindFirstChild("Dough King"))
                         then
                            for v2313, v2314 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if ((v2314.Name == "Cake Prince") or (v2314.Name == "Dough King")) then
                                    if
                                        (v2314:FindFirstChild("Humanoid") and v2314:FindFirstChild("HumanoidRootPart") and
                                            (v2314.Humanoid.Health > 0))
                                     then
                                        repeat
                                            wait()
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            v2314.HumanoidRootPart.CanCollide = false
                                            v2314.Humanoid.WalkSpeed = 0
                                            topos(v2314.HumanoidRootPart.CFrame * Pos)
                                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                        until not _G.DoughtBoss or not v2314.Parent or (v2314.Humanoid.Health <= 0)
                                    end
                                end
                            end
                        elseif game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
                            topos(
                                game:GetService("ReplicatedStorage"):FindFirstChild(
                                    "Cake Prince [Lv. 2300] [Raid Boss]"
                                ).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2)
                            )
                        else
                            local v2566 =
                                game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                            if not string.find(v2566, "Cookie Crafter") then
                                CakeBring = false
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                            end
                            if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) then
                                CakeBring = false
                                if BypassTP then
                                    if
                                        ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v2028.Position).Magnitude >
                                            3500)
                                     then
                                        BTP(v2028)
                                    else
                                        topos(v2028)
                                    end
                                else
                                    topos(v2028)
                                end
                                if
                                    ((v2028.Position -
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                        3)
                                 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                        "StartQuest",
                                        "CakeQuest1",
                                        1
                                    )
                                end
                            elseif (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true) then
                                if
                                    (game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter") or
                                        game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard") or
                                        game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff") or
                                        game:GetService("Workspace").Enemies:FindFirstChild("Head Baker"))
                                 then
                                    for v3011, v3012 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if
                                            (v3012:FindFirstChild("HumanoidRootPart") and
                                                v3012:FindFirstChild("Humanoid") and
                                                (v3012.Humanoid.Health > 0))
                                         then
                                            if
                                                ((v3012.Name == "Cookie Crafter") or (v3012.Name == "Cake Guard") or
                                                    (v3012.Name == "Baking Staff") or
                                                    (v3012.Name == "Head Baker"))
                                             then
                                                if
                                                    string.find(
                                                        game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,
                                                        "Cookie Crafter"
                                                    )
                                                 then
                                                    repeat
                                                        wait()
                                                        EquipWeapon(_G.SelectWeapon)
                                                        AutoHaki()
                                                        PosMonCake = v3012.HumanoidRootPart.CFrame
                                                        topos(v3012.HumanoidRootPart.CFrame * Pos)
                                                        v3012.HumanoidRootPart.CanCollide = false
                                                        v3012.Humanoid.WalkSpeed = 0
                                                        v3012.Head.CanCollide = false
                                                        CakeBring = true
                                                        PosMonDoughtOpenDoor = v3012.HumanoidRootPart.CFrame
                                                    until not _G.DoughtBoss or not v3012.Parent or
                                                        (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible ==
                                                            false) or
                                                        (v3012.Humanoid.Health <= 0) or
                                                        game:GetService("ReplicatedStorage"):FindFirstChild(
                                                            "Cake Prince [Lv. 2300] [Raid Boss]"
                                                        ) or
                                                        game:GetService("Workspace").Enemies:FindFirstChild(
                                                            "Cake Prince [Lv. 2300] [Raid Boss]"
                                                        ) or
                                                        (KillMob == 0)
                                                else
                                                    CakeBring = false
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                        "AbandonQuest"
                                                    )
                                                end
                                            end
                                        end
                                    end
                                else
                                    CakeBring = false
                                    if game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter") then
                                        topos(
                                            game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter").HumanoidRootPart.CFrame *
                                                CFrame.new(15, 10, 2)
                                        )
                                    end
                                end
                            end
                        end
                    end
                )
            end
        end
    end
)
v102:Toggle(
    "Tự Động Triệu Hồi Tư Lệnh",
    false,
    function(v561)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner", value)
    end
)
v102:Toggle(
    "Vua bột tự động",
    _G.doughking,
    function(v562)
        _G.doughking = v562
        StopTween(_G.doughking)
    end
)
v102:Toggle(
    "Vua bột tự động Đổi Sever",
    _G.doughkingHop,
    function(v563)
        _G.doughkingHop = v563
    end
)
spawn(
    function()
        while wait() do
            if (_G.doughking and World3) then
                pcall(
                    function()
                        if game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then
                            for v2315, v2316 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if (v2316.Name == "Dough King") then
                                    if
                                        (v2316:FindFirstChild("Humanoid") and v2316:FindFirstChild("HumanoidRootPart") and
                                            (v2316.Humanoid.Health > 0))
                                     then
                                        repeat
                                            task.wait()
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            v2316.HumanoidRootPart.CanCollide = false
                                            v2316.Humanoid.WalkSpeed = 0
                                            v2316.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                            topos(v2316.HumanoidRootPart.CFrame * Pos)
                                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                        until not _G.doughking or not v2316.Parent or (v2316.Humanoid.Health <= 0)
                                    end
                                end
                            end
                        else
                            UnEquipWeapon(_G.SelectWeapon)
                            topos(CFrame.new(-2662.818603515625, 1062.3480224609375, -11853.6953125))
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Dough King") then
                                topos(
                                    game:GetService("ReplicatedStorage"):FindFirstChild("Dough King").HumanoidRootPart.CFrame *
                                        CFrame.new(2, 20, 2)
                                )
                            elseif _G.doughkingHop then
                                Hop()
                            end
                        end
                    end
                )
            end
        end
    end
)
v102:Seperator("Quan sát")
v102:Toggle(
    "Cày Điểm Haki Quan Sát",
    _G.Observation,
    function(v564)
        _G.Observation = v564
        StopTween(_G.Observation)
    end
)
spawn(
    function()
        while wait() do
            pcall(
                function()
                    if _G.Observation then
                        repeat
                            task.wait()
                            if
                                not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild(
                                    "ImageLabel"
                                )
                             then
                                game:GetService("VirtualUser"):CaptureController()
                                game:GetService("VirtualUser"):SetKeyDown("0x65")
                                wait(2)
                                game:GetService("VirtualUser"):SetKeyUp("0x65")
                            end
                        until game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") or
                            not _G.Observation
                    end
                end
            )
        end
    end
)
v102:Toggle(
    "Cày Điểm Haki Đổi Sever",
    _G.Observation_Hop,
    function(v565)
        _G.Observation_Hop = v565
    end
)
spawn(
    function()
        pcall(
            function()
                while wait() do
                    if _G.Observation then
                        if (game:GetService("Players").LocalPlayer.VisionRadius.Value >= 3000) then
                            wait(2)
                        elseif World2 then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate [Lv. 1200]") then
                                if
                                    game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild(
                                        "ImageLabel"
                                    )
                                 then
                                    repeat
                                        task.wait()
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                                            game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate").HumanoidRootPart.CFrame *
                                            CFrame.new(3, 0, 0)
                                    until (_G.Observation == false) or
                                        not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild(
                                            "ImageLabel"
                                        )
                                else
                                    repeat
                                        task.wait()
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                                            (game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate").HumanoidRootPart.CFrame *
                                            CFrame.new(0, 50, 0)) +
                                            wait(1)
                                        if
                                            (not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild(
                                                "ImageLabel"
                                            ) and (_G.Observation_Hop == true))
                                         then
                                            game:GetService("TeleportService"):Teleport(
                                                game.PlaceId,
                                                game:GetService("Players").LocalPlayer
                                            )
                                        end
                                    until (_G.Observation == false) or
                                        game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild(
                                            "ImageLabel"
                                        )
                                end
                            else
                                topos(CFrame.new(-5478.39209, 15.9775667, -5246.9126))
                            end
                        elseif World1 then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain") then
                                if
                                    game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild(
                                        "ImageLabel"
                                    )
                                 then
                                    repeat
                                        task.wait()
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                                            game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain").HumanoidRootPart.CFrame *
                                            CFrame.new(3, 0, 0)
                                    until (_G.Observation == false) or
                                        not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild(
                                            "ImageLabel"
                                        )
                                else
                                    repeat
                                        task.wait()
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                                            game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain").HumanoidRootPart.CFrame *
                                            CFrame.new(0, 50, 0)
                                        wait(1)
                                        if
                                            (not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild(
                                                "ImageLabel"
                                            ) and (_G.Observation_Hop == true))
                                         then
                                            game:GetService("TeleportService"):Teleport(
                                                game.PlaceId,
                                                game:GetService("Players").LocalPlayer
                                            )
                                        end
                                    until (_G.Observation == false) or
                                        game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild(
                                            "ImageLabel"
                                        )
                                end
                            else
                                topos(CFrame.new(5533.29785, 88.1079102, 4852.3916))
                            end
                        elseif World3 then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander") then
                                if
                                    game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild(
                                        "ImageLabel"
                                    )
                                 then
                                    repeat
                                        task.wait()
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                                            game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander").HumanoidRootPart.CFrame *
                                            CFrame.new(3, 0, 0)
                                    until (_G.Observation == false) or
                                        not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild(
                                            "ImageLabel"
                                        )
                                else
                                    repeat
                                        task.wait()
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                                            game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander").HumanoidRootPart.CFrame *
                                            CFrame.new(0, 50, 0)
                                        wait(1)
                                        if
                                            (not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild(
                                                "ImageLabel"
                                            ) and (_G.Observation_Hop == true))
                                         then
                                            game:GetService("TeleportService"):Teleport(
                                                game.PlaceId,
                                                game:GetService("Players").LocalPlayer
                                            )
                                        end
                                    until (_G.Observation == false) or
                                        game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild(
                                            "ImageLabel"
                                        )
                                end
                            else
                                topos(CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789))
                            end
                        end
                    end
                end
            end
        )
    end
)
v102:Seperator("Trùm")
local v127 = v102:Label("Trạng thái : Chọn Trùm")
spawn(
    function()
        while wait() do
            pcall(
                function()
                    if
                        (game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss) or
                            game:GetService("Workspace").Enemies:FindFirstChild(_G.SelectBoss))
                     then
                        v127:Set("Trạng thái : Có")
                    else
                        v127:Set("Trạng thái : Không")
                    end
                end
            )
        end
    end
)
if World1 then
    v102:Dropdown(
        "Chọn Trùm",
        {
            "The Gorilla King",
            "Bobby",
            "Yeti",
            "Mob Leader",
            "Vice Admiral",
            "Warden",
            "Chief Warden",
            "Swan",
            "Magma Admiral",
            "Fishman Lord",
            "Wysper",
            "Thunder God",
            "Cyborg",
            "Saber Expert"
        },
        function(v1743)
            _G.SelectBoss = v1743
        end
    )
end
if World2 then
    v102:Dropdown(
        "Chọn Trùm",
        {
            "Diamond",
            "Jeremy",
            "Fajita",
            "Don Swan",
            "Smoke Admiral",
            "Cursed Captain",
            "Darkbeard",
            "Order",
            "Awakened Ice Admiral",
            "Tide Keeper"
        },
        function(v1744)
            _G.SelectBoss = v1744
        end
    )
end
if World3 then
    v102:Dropdown(
        "Chọn Trùm",
        {
            "Stone",
            "Island Empress",
            "Kilo Admiral",
            "Captain Elephant",
            "Beautiful Pirate",
            "rip_indra True Form",
            "Longma",
            "Soul Reaper",
            "Cake Queen"
        },
        function(v1745)
            _G.SelectBoss = v1745
        end
    )
end
v102:Toggle(
    "Đánh Trùm Đã Chọn",
    _G.FarmBoss,
    function(v566)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
        _G.FarmBoss = v566
        StopTween(_G.FarmBoss)
    end
)
spawn(
    function()
        while wait() do
            if (_G.FarmBoss and BypassTP) then
                pcall(
                    function()
                        if game:GetService("Workspace").Enemies:FindFirstChild(_G.SelectBoss) then
                            for v2317, v2318 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if (v2318.Name == _G.SelectBoss) then
                                    if
                                        (v2318:FindFirstChild("Humanoid") and v2318:FindFirstChild("HumanoidRootPart") and
                                            (v2318.Humanoid.Health > 0))
                                     then
                                        repeat
                                            task.wait()
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            v2318.HumanoidRootPart.CanCollide = false
                                            v2318.Humanoid.WalkSpeed = 0
                                            v2318.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                            topos(v2318.HumanoidRootPart.CFrame * Pos)
                                            sethiddenproperty(
                                                game:GetService("Players").LocalPlayer,
                                                "SimulationRadius",
                                                math.huge
                                            )
                                        until not _G.FarmBoss or not v2318.Parent or (v2318.Humanoid.Health <= 0)
                                    end
                                end
                            end
                        elseif game.ReplicatedStorage:FindFirstChild(_G.SelectBoss) then
                            if
                                ((game.ReplicatedStorage:FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame.Position -
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1500)
                             then
                                topos(game.ReplicatedStorage:FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame)
                            else
                                BTP(game.ReplicatedStorage:FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame)
                            end
                        end
                    end
                )
            end
        end
    end
)
spawn(
    function()
        while wait() do
            if (_G.FarmBoss and not BypassTP) then
                pcall(
                    function()
                        if game:GetService("Workspace").Enemies:FindFirstChild(_G.SelectBoss) then
                            for v2319, v2320 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if (v2320.Name == _G.SelectBoss) then
                                    if
                                        (v2320:FindFirstChild("Humanoid") and v2320:FindFirstChild("HumanoidRootPart") and
                                            (v2320.Humanoid.Health > 0))
                                     then
                                        repeat
                                            task.wait()
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            v2320.HumanoidRootPart.CanCollide = false
                                            v2320.Humanoid.WalkSpeed = 0
                                            v2320.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                            topos(v2320.HumanoidRootPart.CFrame * Pos)
                                            sethiddenproperty(
                                                game:GetService("Players").LocalPlayer,
                                                "SimulationRadius",
                                                math.huge
                                            )
                                        until not _G.FarmBoss or not v2320.Parent or (v2320.Humanoid.Health <= 0)
                                    end
                                end
                            end
                        elseif game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss) then
                            topos(
                                game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame *
                                    CFrame.new(5, 10, 7)
                            )
                        end
                    end
                )
            end
        end
    end
)
v102:Toggle(
    "Đánh Tất Cả Trùm",
    _G.AllBoss,
    function(v567)
        _G.AllBoss = v567
        StopTween(_G.AllBoss)
    end
)
v102:Toggle(
    "Đánh Tất Cả Trùm Đổi sever",
    _G.AllBossHop,
    function(v568)
        _G.AllBossHop = v568
    end
)
spawn(
    function()
        while wait() do
            if _G.AllBoss then
                pcall(
                    function()
                        for v2087, v2088 in pairs(game.ReplicatedStorage:GetChildren()) do
                            if
                                ((v2088.Name == "rip_indra") or (v2088.Name == "Ice Admiral") or
                                    (v2088.Name == "Saber Expert") or
                                    (v2088.Name == "The Saw") or
                                    (v2088.Name == "Greybeard") or
                                    (v2088.Name == "Mob Leader") or
                                    (v2088.Name == "The Gorilla King") or
                                    (v2088.Name == "Bobby") or
                                    (v2088.Name == "Yeti") or
                                    (v2088.Name == "Vice Admiral") or
                                    (v2088.Name == "Warden") or
                                    (v2088.Name == "Chief Warden") or
                                    (v2088.Name == "Swan") or
                                    (v2088.Name == "Magma Admiral") or
                                    (v2088.Name == "Fishman Lord") or
                                    (v2088.Name == "Wysper") or
                                    (v2088.Name == "Thunder God") or
                                    (v2088.Name == "Cyborg") or
                                    (v2088.Name == "Don Swan") or
                                    (v2088.Name == "Diamond") or
                                    (v2088.Name == "Jeremy") or
                                    (v2088.Name == "Fajita") or
                                    (v2088.Name == "Smoke Admiral") or
                                    (v2088.Name == "Awakened Ice Admiral") or
                                    (v2088.Name == "Tide Keeper") or
                                    (v2088.Name == "Order") or
                                    (v2088.Name == "Darkbeard") or
                                    (v2088.Name == "Stone") or
                                    (v2088.Name == "Island Empress") or
                                    (v2088.Name == "Kilo Admiral") or
                                    (v2088.Name == "Captain Elephant") or
                                    (v2088.Name == "Beautiful Pirate") or
                                    (v2088.Name == "Cake Queen") or
                                    (v2088.Name == "rip_indra True Form") or
                                    (v2088.Name == "Longma") or
                                    (v2088.Name == "Soul Reaper") or
                                    (v2088.Name == "Cake Prince") or
                                    (v2088.Name == "Dough King"))
                             then
                                if
                                    ((v2088.HumanoidRootPart.Position -
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 17000)
                                 then
                                    repeat
                                        task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v2088.Humanoid.WalkSpeed = 0
                                        v2088.HumanoidRootPart.CanCollide = false
                                        v2088.Head.CanCollide = false
                                        v2088.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                        topos(v2088.HumanoidRootPart.CFrame * Pos)
                                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                    until (v2088.Humanoid.Health <= 0) or (_G.AllBoss == false) or not v2088.Parent
                                end
                            elseif _G.AllBossHop then
                                Hop()
                            end
                        end
                    end
                )
            end
        end
    end
)
v103:Seperator("Cày Đặt")
v103:Toggle(
    "Duy Chuyển Dạng Reset",
    BypassTP,
    function(v569)
        BypassTP = v569
    end
)
v103:Seperator("Bay")
local v128 = {"100", "150", "250", "300", "325", "350"}
getgenv().TweenSpeed = "325"
v103:Dropdown(
    "Tốc Độ Bay",
    v128,
    function(v570)
        getgenv().TweenSpeed = v570
    end
)
v103:Button(
    "Dừng Bay",
    function()
        topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        _G.Clip = false
    end
)
v103:Toggle(
    "Gôm Quái",
    true,
    function(v572)
        _G.BringMonster = v572
    end
)
spawn(
    function()
        while task.wait() do
            pcall(
                function()
                    if _G.BringMonster then
                        CheckQuest()
                        for v2089, v2090 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if
                                (_G.Level and StartMagnet and (v2090.Name == Mon) and
                                    ((Mon == "Factory Staff [Lv. 800]") or (Mon == "Monkey [Lv. 14]") or
                                        (Mon == "Dragon Crew Warrior [Lv. 1575]") or
                                        (Mon == "Dragon Crew Archer [Lv. 1600]")) and
                                    v2090:FindFirstChild("Humanoid") and
                                    v2090:FindFirstChild("HumanoidRootPart") and
                                    (v2090.Humanoid.Health > 0) and
                                    ((v2090.HumanoidRootPart.Position -
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                        220))
                             then
                                v2090.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                v2090.HumanoidRootPart.CFrame = PosMon
                                v2090.Humanoid:ChangeState(14)
                                v2090.HumanoidRootPart.CanCollide = false
                                v2090.Head.CanCollide = false
                                if v2090.Humanoid:FindFirstChild("Animator") then
                                    v2090.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            elseif
                                (_G.Level and StartMagnet and (v2090.Name == Mon) and v2090:FindFirstChild("Humanoid") and
                                    v2090:FindFirstChild("HumanoidRootPart") and
                                    (v2090.Humanoid.Health > 0) and
                                    ((v2090.HumanoidRootPart.Position -
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                        _G.BringMode))
                             then
                                v2090.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                v2090.HumanoidRootPart.CFrame = PosMon
                                v2090.Humanoid:ChangeState(14)
                                v2090.HumanoidRootPart.CanCollide = false
                                v2090.Head.CanCollide = false
                                if v2090.Humanoid:FindFirstChild("Animator") then
                                    v2090.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end
                    end
                end
            )
        end
    end
)
local v130 = {"Ít", "Vừa", "Nhiều"}
_G.BringMode = "Ít"
v103:Dropdown(
    "Chế Độ Gôm Quái",
    v130,
    function(v573)
        _G.BringMode = v573
    end
)
spawn(
    function()
        while wait(0.1) do
            if _G.BringMode then
                pcall(
                    function()
                        if (_G.BringMode == "Ít") then
                            _G.BringMode = 250
                        elseif (_G.BringMode == "Vừa") then
                            _G.BringMode = 300
                        elseif (_G.BringMode == "Nhiều") then
                            _G.BringMode = 350
                        end
                    end
                )
            end
        end
    end
)
v103:Toggle(
    "Tự Động Mở Haki",
    true,
    function(v574)
        _G.Haki = v574
    end
)
spawn(
    function()
        while wait(0.1) do
            if _G.Haki then
                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                    local v2091 = {[1] = "Buso"}
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v2091))
                end
            end
        end
    end
)
v103:Toggle(
    "Tự Động Nhấp chuột",
    false,
    function(v575)
        _G.Click = v575
    end
)
v103:Toggle(
    "Tắt Thông Báo",
    false,
    function(v576)
        _G.Remove_trct = v576
    end
)
spawn(
    function()
        while wait() do
            if _G.Remove_trct then
                game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = false
            else
                game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = true
            end
        end
    end
)
v103:Toggle(
    "Tắt Dame",
    true,
    function(v577)
        _G.KobenHeegeen = v577
    end
)
spawn(
    function()
        while wait() do
            if _G.KobenHeegeen then
                game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = false
            else
                game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = true
            end
        end
    end
)
spawn(
    function()
        while wait() do
            if _G.WhiteScreen then
                for v2029, v2030 in pairs(game.Workspace["_WorldOrigin"]:GetChildren()) do
                    if
                        ((v2030.Name == "CurvedRing") or (v2030.Name == "SlashHit") or (v2030.Name == "DamageCounter") or
                            (v2030.Name == "SwordSlash") or
                            (v2030.Name == "SlashTail") or
                            (v2030.Name == "Sounds"))
                     then
                        v2030:Destroy()
                    end
                end
            end
        end
    end
)
v103:Toggle(
    "Màng Hình Trắng",
    _G.WhiteScreen,
    function(v578)
        _G.WhiteScreen = v578
        if (_G.WhiteScreen == true) then
            game:GetService("RunService"):Set3dRenderingEnabled(false)
        elseif (_G.WhiteScreen == false) then
            game:GetService("RunService"):Set3dRenderingEnabled(true)
        end
    end
)
v103:Toggle(
    "Ẩn Quái",
    _G.inv,
    function(v579)
        _G.inv = v579
        while wait() do
            if _G.inv then
                pcall(
                    function()
                        for v2092, v2093 in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
                            if (v2093.ClassName == "MeshPart") then
                                v2093.Transparency = 1
                            end
                        end
                        for v2094, v2095 in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
                            if (v2095.Name == "Head") then
                                v2095.Transparency = 1
                            end
                        end
                        for v2096, v2097 in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
                            if (v2097.ClassName == "Accessory") then
                                v2097.Handle.Transparency = 1
                            end
                        end
                        for v2098, v2099 in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
                            if (v2099.ClassName == "Decal") then
                                v2099.Transparency = 1
                            end
                        end
                    end
                )
            end
        end
    end
)
v103:Seperator("Cày Đặt Cày Thông Thạo")
v103:Toggle(
    "Kỹ năng Z",
    true,
    function(v580)
        _G.SkillZ = v580
    end
)
v103:Toggle(
    "Kỹ năng X",
    true,
    function(v581)
        _G.SkillX = v581
    end
)
v103:Toggle(
    "Kỹ năng C",
    true,
    function(v582)
        _G.SkillC = v582
    end
)
v103:Toggle(
    "Kỹ năng V",
    true,
    function(v583)
        _G.SkillV = v583
    end
)
if (World1 or World2) then
    v104:Seperator("World")
end
if World1 then
    v104:Toggle(
        "Tự Động Qua Biển 2",
        _G.SecondSea,
        function(v1746)
            _G.SecondSea = v1746
            StopTween(_G.SecondSea)
        end
    )
    spawn(
        function()
            while wait() do
                if _G.SecondSea then
                    pcall(
                        function()
                            local v2157 = game:GetService("Players").LocalPlayer.Data.Level.Value
                            if ((v2157 >= 700) and World1) then
                                if
                                    ((game:GetService("Workspace").Map.Ice.Door.CanCollide == false) and
                                        (game:GetService("Workspace").Map.Ice.Door.Transparency == 1))
                                 then
                                    local v2767 = CFrame.new(4849.29883, 5.65138149, 719.611877)
                                    repeat
                                        topos(v2767)
                                        wait()
                                    until ((v2767.Position -
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                        3) or (_G.SecondSea == false)
                                    wait(1.1)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                        "DressrosaQuestProgress",
                                        "Detective"
                                    )
                                    wait(0.5)
                                    EquipWeapon("Key")
                                    repeat
                                        topos(CFrame.new(1347.7124, 37.3751602, -1325.6488))
                                        wait()
                                    until ((Vector3.new(1347.7124, 37.3751602, -1325.6488) -
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                        3) or (_G.SecondSea == false)
                                    wait(0.5)
                                elseif
                                    ((game:GetService("Workspace").Map.Ice.Door.CanCollide == false) and
                                        (game:GetService("Workspace").Map.Ice.Door.Transparency == 1))
                                 then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral") then
                                        for v3015, v3016 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if (v3016.Name == "Ice Admiral") then
                                                if (not v3016.Humanoid.Health <= 0) then
                                                    if
                                                        (v3016:FindFirstChild("Humanoid") and
                                                            v3016:FindFirstChild("HumanoidRootPart") and
                                                            (v3016.Humanoid.Health > 0))
                                                     then
                                                        OldCFrameSecond = v3016.HumanoidRootPart.CFrame
                                                        repeat
                                                            task.wait()
                                                            AutoHaki()
                                                            EquipWeapon(_G.SelectWeapon)
                                                            v3016.HumanoidRootPart.CanCollide = false
                                                            v3016.Humanoid.WalkSpeed = 0
                                                            v3016.Head.CanCollide = false
                                                            v3016.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                                            v3016.HumanoidRootPart.CFrame = OldCFrameSecond
                                                            topos(v3016.HumanoidRootPart.CFrame * Pos)
                                                            sethiddenproperty(
                                                                game:GetService("Players").LocalPlayer,
                                                                "SimulationRadius",
                                                                math.huge
                                                            )
                                                        until not _G.SecondSea or not v3016.Parent or
                                                            (v3016.Humanoid.Health <= 0)
                                                    end
                                                else
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                        "TravelDressrosa"
                                                    )
                                                end
                                            end
                                        end
                                    elseif game:GetService("ReplicatedStorage"):FindFirstChild("Ice Admiral") then
                                        topos(
                                            game:GetService("ReplicatedStorage"):FindFirstChild("Ice Admiral").HumanoidRootPart.CFrame *
                                                CFrame.new(5, 10, 7)
                                        )
                                    end
                                end
                            end
                        end
                    )
                end
            end
        end
    )
end
if World2 then
    v104:Toggle(
        "Tự Động Qua Biển 3",
        _G.ThirdSea,
        function(v1747)
            _G.ThirdSea = v1747
            StopTween(_G.ThirdSea)
        end
    )
    spawn(
        function()
            while wait() do
                if _G.ThirdSea then
                    pcall(
                        function()
                            if ((game:GetService("Players").LocalPlayer.Data.Level.Value >= 1500) and World2) then
                                _G.Level = false
                                if
                                    (game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer(
                                        "ZQuestProgress",
                                        "General"
                                    ) == 0)
                                 then
                                    topos(CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016))
                                    if
                                        ((CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016).Position -
                                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                            10)
                                     then
                                        wait(1.5)
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                            "ZQuestProgress",
                                            "Begin"
                                        )
                                    end
                                    wait(1.8)
                                    if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") then
                                        for v2896, v2897 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if (v2897.Name == "rip_indra") then
                                                OldCFrameThird = v2897.HumanoidRootPart.CFrame
                                                repeat
                                                    task.wait()
                                                    AutoHaki()
                                                    EquipWeapon(_G.SelectWeapon)
                                                    topos(v2897.HumanoidRootPart.CFrame * Pos)
                                                    v2897.HumanoidRootPart.CFrame = OldCFrameThird
                                                    v2897.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                                    v2897.HumanoidRootPart.CanCollide = false
                                                    v2897.Humanoid.WalkSpeed = 0
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                        "TravelZou"
                                                    )
                                                    sethiddenproperty(
                                                        game:GetService("Players").LocalPlayer,
                                                        "SimulationRadius",
                                                        math.huge
                                                    )
                                                until (_G.ThirdSea == false) or (v2897.Humanoid.Health <= 0) or
                                                    not v2897.Parent
                                            end
                                        end
                                    elseif
                                        (not game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") and
                                            ((CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016).Position -
                                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                                1000))
                                     then
                                        topos(CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016))
                                    end
                                end
                            end
                        end
                    )
                end
            end
        end
    )
end
if World2 then
    v104:Toggle(
        "Đánh Nhà Máy",
        _G.Factory,
        function(v1748)
            _G.Factory = v1748
            StopTween(_G.Factory)
        end
    )
    spawn(
        function()
            while wait() do
                pcall(
                    function()
                        if _G.Factory then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Core") then
                                for v2600, v2601 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if ((v2601.Name == "Core") and (v2601.Humanoid.Health > 0)) then
                                        repeat
                                            task.wait()
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            topos(CFrame.new(448.46756, 199.356781, -441.389252))
                                        until (v2601.Humanoid.Health <= 0) or (_G.Factory == false)
                                    end
                                end
                            else
                                topos(CFrame.new(448.46756, 199.356781, -441.389252))
                            end
                        end
                    end
                )
            end
        end
    )
end
v104:Seperator("Võ")
v104:Toggle(
    "Tự Động Superhuman",
    _G.Superhuman,
    function(v584)
        _G.Superhuman = v584
    end
)
spawn(
    function()
        pcall(
            function()
                while wait() do
                    if _G.Superhuman then
                        if
                            (game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or
                                (game.Players.LocalPlayer.Character:FindFirstChild("Combat") and
                                    (game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 150000)))
                         then
                            UnEquipWeapon("Combat")
                            wait(0.1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
                        end
                        if
                            (game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or
                                game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman"))
                         then
                            _G.SelectWeapon = "Superhuman"
                        end
                        if
                            (game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") or
                                game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") or
                                game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or
                                game.Players.LocalPlayer.Character:FindFirstChild("Electro") or
                                game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or
                                game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") or
                                game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or
                                game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw"))
                         then
                            if
                                (game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and
                                    (game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 299))
                             then
                                _G.SelectWeapon = "Black Leg"
                            end
                            if
                                (game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and
                                    (game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 299))
                             then
                                _G.SelectWeapon = "Electro"
                            end
                            if
                                (game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and
                                    (game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value <=
                                        299))
                             then
                                _G.SelectWeapon = "Fishman Karate"
                            end
                            if
                                (game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and
                                    (game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 299))
                             then
                                _G.SelectWeapon = "Dragon Claw"
                            end
                            if
                                (game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and
                                    (game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 300) and
                                    (game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 300000))
                             then
                                UnEquipWeapon("Black Leg")
                                wait(0.1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
                            end
                            if
                                (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and
                                    (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 300) and
                                    (game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 300000))
                             then
                                UnEquipWeapon("Black Leg")
                                wait(0.1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
                            end
                            if
                                (game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and
                                    (game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 300) and
                                    (game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 750000))
                             then
                                UnEquipWeapon("Electro")
                                wait(0.1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
                            end
                            if
                                (game.Players.LocalPlayer.Character:FindFirstChild("Electro") and
                                    (game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 300) and
                                    (game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 750000))
                             then
                                UnEquipWeapon("Electro")
                                wait(0.1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
                            end
                            if
                                (game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and
                                    (game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >=
                                        300) and
                                    (game:GetService("Players")["Localplayer"].Data.Fragments.Value >= 1500))
                             then
                                UnEquipWeapon("Fishman Karate")
                                wait(0.1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "BlackbeardReward",
                                    "DragonClaw",
                                    "1"
                                )
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "BlackbeardReward",
                                    "DragonClaw",
                                    "2"
                                )
                            end
                            if
                                (game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and
                                    (game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >=
                                        300) and
                                    (game:GetService("Players")["Localplayer"].Data.Fragments.Value >= 1500))
                             then
                                UnEquipWeapon("Fishman Karate")
                                wait(0.1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "BlackbeardReward",
                                    "DragonClaw",
                                    "1"
                                )
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "BlackbeardReward",
                                    "DragonClaw",
                                    "2"
                                )
                            end
                            if
                                (game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and
                                    (game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 300) and
                                    (game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 3000000))
                             then
                                UnEquipWeapon("Dragon Claw")
                                wait(0.1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
                            end
                            if
                                (game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and
                                    (game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 300) and
                                    (game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 3000000))
                             then
                                UnEquipWeapon("Dragon Claw")
                                wait(0.1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
                            end
                        end
                    end
                end
            end
        )
    end
)
v104:Toggle(
    "Tự Động Chân Đen",
    _G.DeathStep,
    function(v585)
        _G.DeathStep = v585
    end
)
spawn(
    function()
        while wait() do
            wait()
            if _G.DeathStep then
                if
                    (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") or
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Death Step") or
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Death Step"))
                 then
                    if
                        (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") and
                            (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >=
                                450))
                     then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
                        _G.SelectWeapon = "Death Step"
                    end
                    if
                        (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg") and
                            (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >=
                                450))
                     then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
                        _G.SelectWeapon = "Death Step"
                    end
                    if
                        (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") and
                            (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <=
                                449))
                     then
                        _G.SelectWeapon = "Black Leg"
                    end
                else
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
                end
            end
        end
    end
)
v104:Toggle(
    "Tự Động Võ Người Cá",
    _G.Sharkman,
    function(v586)
        _G.Sharkman = v586
    end
)
spawn(
    function()
        pcall(
            function()
                while wait() do
                    if _G.Sharkman then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
                        if
                            string.find(
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate"),
                                "keys"
                            )
                         then
                            if
                                (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Water Key") or
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Water Key"))
                             then
                                topos(
                                    CFrame.new(
                                        -2604.6958,
                                        239.432526,
                                        -10315.1982,
                                        0.0425701365,
                                        0,
                                        -0.999093413,
                                        0,
                                        1,
                                        0,
                                        0.999093413,
                                        0,
                                        0.0425701365
                                    )
                                )
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                            elseif
                                (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate") and
                                    (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >=
                                        400))
                             then
                            else
                                Ms = "Tide Keeper"
                                if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
                                    for v2898, v2899 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if (v2899.Name == Ms) then
                                            OldCFrameShark = v2899.HumanoidRootPart.CFrame
                                            repeat
                                                task.wait()
                                                AutoHaki()
                                                EquipWeapon(_G.SelectWeapon)
                                                v2899.Head.CanCollide = false
                                                v2899.Humanoid.WalkSpeed = 0
                                                v2899.HumanoidRootPart.CanCollide = false
                                                v2899.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                                v2899.HumanoidRootPart.CFrame = OldCFrameShark
                                                topos(v2899.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                                                sethiddenproperty(
                                                    game:GetService("Players").LocalPlayer,
                                                    "SimulationRadius",
                                                    math.huge
                                                )
                                            until not v2899.Parent or (v2899.Humanoid.Health <= 0) or
                                                (_G.Sharkman == false) or
                                                game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                                                    "Water Key"
                                                ) or
                                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                                                    "Water Key"
                                                )
                                        end
                                    end
                                else
                                    topos(
                                        CFrame.new(
                                            -3570.18652,
                                            123.328949,
                                            -11555.9072,
                                            0.465199202,
                                            -1.3857326e-8,
                                            0.885206044,
                                            4.0332897e-9,
                                            1,
                                            1.3534751e-8,
                                            -0.885206044,
                                            -2.7260627e-9,
                                            0.465199202
                                        )
                                    )
                                    wait(3)
                                end
                            end
                        else
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                        end
                    end
                end
            end
        )
    end
)
v104:Toggle(
    "Tự Động Võ Điện",
    _G.ElectricClaw,
    function(v587)
        _G.ElectricClaw = v587
        StopTween(_G.ElectricClaw)
    end
)
spawn(
    function()
        pcall(
            function()
                while wait() do
                    if _G.ElectricClaw then
                        if
                            (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") or
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electric Claw") or
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electric Claw"))
                         then
                            if
                                (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") and
                                    (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >=
                                        400))
                             then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
                                _G.SelectWeapon = "Electric Claw"
                            end
                            if
                                (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro") and
                                    (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro").Level.Value >=
                                        400))
                             then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
                                _G.SelectWeapon = "Electric Claw"
                            end
                            if
                                (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") and
                                    (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <=
                                        399))
                             then
                                _G.SelectWeapon = "Electro"
                            end
                        else
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
                        end
                    end
                    if _G.ElectricClaw then
                        if
                            (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") or
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro"))
                         then
                            if
                                (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") or
                                    (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro") and
                                        (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >=
                                            400)) or
                                    (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro").Level.Value >=
                                        400))
                             then
                                if (_G.Level == false) then
                                    repeat
                                        task.wait()
                                        topos(CFrame.new(-10371.4717, 330.764496, -10131.4199))
                                    until not _G.ElectricClaw or
                                        ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position -
                                            CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                        "BuyElectricClaw",
                                        "Start"
                                    )
                                    wait(2)
                                    repeat
                                        task.wait()
                                        topos(CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438))
                                    until not _G.ElectricClaw or
                                        ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position -
                                            CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438).Position).Magnitude <=
                                            10)
                                    wait(1)
                                    repeat
                                        task.wait()
                                        topos(CFrame.new(-10371.4717, 330.764496, -10131.4199))
                                    until not _G.ElectricClaw or
                                        ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position -
                                            CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10)
                                    wait(1)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
                                elseif (_G.Level == true) then
                                    _G.Level = false
                                    wait(1)
                                    repeat
                                        task.wait()
                                        topos(CFrame.new(-10371.4717, 330.764496, -10131.4199))
                                    until not _G.ElectricClaw or
                                        ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position -
                                            CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                        "BuyElectricClaw",
                                        "Start"
                                    )
                                    wait(2)
                                    repeat
                                        task.wait()
                                        topos(CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438))
                                    until not _G.ElectricClaw or
                                        ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position -
                                            CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438).Position).Magnitude <=
                                            10)
                                    wait(1)
                                    repeat
                                        task.wait()
                                        topos(CFrame.new(-10371.4717, 330.764496, -10131.4199))
                                    until not _G.ElectricClaw or
                                        ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position -
                                            CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10)
                                    wait(1)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
                                    _G.SelectWeapon = "Electric Claw"
                                    wait(0.1)
                                    _G.Level = true
                                end
                            end
                        end
                    end
                end
            end
        )
    end
)
v104:Toggle(
    "Tự Động Võ Rồng",
    _G.DragonTalon,
    function(v588)
        _G.DragonTalon = v588
    end
)
spawn(
    function()
        while wait() do
            if _G.DragonTalon then
                if
                    (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Talon") or
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Talon"))
                 then
                    if
                        (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and
                            (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >=
                                400))
                     then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
                        _G.SelectWeapon = "Dragon Talon"
                    end
                    if
                        (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw") and
                            (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >=
                                400))
                     then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
                        _G.SelectWeapon = "Dragon Talon"
                    end
                    if
                        (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and
                            (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <=
                                399))
                     then
                        _G.SelectWeapon = "Dragon Claw"
                    end
                else
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "BlackbeardReward",
                        "DragonClaw",
                        "2"
                    )
                end
            end
        end
    end
)
v104:Toggle(
    "Tự Động GodHuman",
    _G.God_Human,
    function(v589)
        _G.God_Human = v589
    end
)
spawn(
    function()
        while task.wait() do
            if _G.God_Human then
                pcall(
                    function()
                        if
                            (game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or
                                game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") or
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Death Step") or
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Death Step") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") or
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sharkman Karate") or
                                game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or
                                game.Players.LocalPlayer.Character:FindFirstChild("Electro") or
                                game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") or
                                game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Talon") or
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Talon") or
                                game.Players.LocalPlayer.Character:FindFirstChild("Godhuman") or
                                game.Players.LocalPlayer.Backpack:FindFirstChild("Godhuman"))
                         then
                            if
                                (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman", true) ==
                                    1)
                             then
                                if
                                    ((game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") and
                                        (game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman").Level.Value >=
                                            400)) or
                                        (game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") and
                                            (game.Players.LocalPlayer.Character:FindFirstChild("Superhuman").Level.Value >=
                                                400)))
                                 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
                                end
                            else
                            end
                            if
                                (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep", true) ==
                                    1)
                             then
                                if
                                    ((game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step") and
                                        (game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step").Level.Value >=
                                            400)) or
                                        (game.Players.LocalPlayer.Character:FindFirstChild("Death Step") and
                                            (game.Players.LocalPlayer.Character:FindFirstChild("Death Step").Level.Value >=
                                                400)))
                                 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                        "BuySharkmanKarate"
                                    )
                                end
                            else
                            end
                            if
                                (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "BuySharkmanKarate",
                                    true
                                ) == 1)
                             then
                                if
                                    ((game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") and
                                        (game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate").Level.Value >=
                                            400)) or
                                        (game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate") and
                                            (game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate").Level.Value >=
                                                400)))
                                 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
                                end
                            else
                            end
                            if
                                (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "BuyElectricClaw",
                                    true
                                ) == 1)
                             then
                                if
                                    ((game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") and
                                        (game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw").Level.Value >=
                                            400)) or
                                        (game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") and
                                            (game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw").Level.Value >=
                                                400)))
                                 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
                                end
                            else
                            end
                            if
                                (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "BuyDragonTalon",
                                    true
                                ) == 1)
                             then
                                if
                                    ((game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon") and
                                        (game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon").Level.Value >=
                                            400)) or
                                        (game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon") and
                                            (game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon").Level.Value >=
                                                400)))
                                 then
                                    if
                                        string.find(
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                "BuyGodhuman",
                                                true
                                            ),
                                            "Bring"
                                        )
                                     then
                                    else
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
                                    end
                                end
                            else
                            end
                        else
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
                        end
                    end
                )
            end
        end
    end
)
v104:Seperator("Nguyên Liệu")
if World2 then
    v104:Toggle(
        "Cày Vật Chất Phóng Xạ",
        false,
        function(v1749)
            Radioactive = v1749
            StopTween(Radioactive)
        end
    )
    local v1026 = CFrame.new(-507.7895202636719, 72.99479675292969, -126.45632934570312)
    spawn(
        function()
            while wait() do
                if (Radioactive and World2) then
                    pcall(
                        function()
                            if game:GetService("Workspace").Enemies:FindFirstChild("Factory Staff") then
                                for v2602, v2603 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if (v2603.Name == "Factory Staff") then
                                        if
                                            (v2603:FindFirstChild("Humanoid") and
                                                v2603:FindFirstChild("HumanoidRootPart") and
                                                (v2603.Humanoid.Health > 0))
                                         then
                                            repeat
                                                task.wait()
                                                AutoHaki()
                                                EquipWeapon(_G.SelectWeapon)
                                                v2603.HumanoidRootPart.CanCollide = false
                                                v2603.Humanoid.WalkSpeed = 0
                                                v2603.Head.CanCollide = false
                                                MakoriGayMag = true
                                                PosGay = v2603.HumanoidRootPart.CFrame
                                                topos(v2603.HumanoidRootPart.CFrame * Pos)
                                            until not Radioactive or not v2603.Parent or (v2603.Humanoid.Health <= 0)
                                            MakoriGayMag = false
                                        end
                                    end
                                end
                            else
                                if BypassTP then
                                    if
                                        ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v1026.Position).Magnitude >
                                            3500)
                                     then
                                        BTP(v1026)
                                    elseif
                                        ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v1026.Position).Magnitude <
                                            3500)
                                     then
                                        topos(v1026)
                                    end
                                else
                                    topos(v1026)
                                end
                                UnEquipWeapon(_G.SelectWeapon)
                                topos(CFrame.new(-507.7895202636719, 72.99479675292969, -126.45632934570312))
                                if game:GetService("ReplicatedStorage"):FindFirstChild("Factory Staff") then
                                    topos(
                                        game:GetService("ReplicatedStorage"):FindFirstChild("Factory Staff").HumanoidRootPart.CFrame *
                                            CFrame.new(2, 20, 2)
                                    )
                                elseif _G.StardHop then
                                    Hop()
                                end
                            end
                        end
                    )
                end
            end
        end
    )
end
if World2 then
    v104:Toggle(
        "Cày Giọt Nước Huyền Bí",
        false,
        function(v1750)
            _G.Makori_gay = v1750
            StopTween(_G.Makori_gay)
        end
    )
    local v1027 = CFrame.new(-3352.9013671875, 285.01556396484375, -10534.841796875)
    spawn(
        function()
            while wait() do
                if (_G.Makori_gay and World2) then
                    pcall(
                        function()
                            if game:GetService("Workspace").Enemies:FindFirstChild("Water Fighter") then
                                for v2604, v2605 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if (v2605.Name == "Water Fighter") then
                                        if
                                            (v2605:FindFirstChild("Humanoid") and
                                                v2605:FindFirstChild("HumanoidRootPart") and
                                                (v2605.Humanoid.Health > 0))
                                         then
                                            repeat
                                                task.wait()
                                                AutoHaki()
                                                EquipWeapon(_G.SelectWeapon)
                                                v2605.HumanoidRootPart.CanCollide = false
                                                v2605.Humanoid.WalkSpeed = 0
                                                v2605.Head.CanCollide = false
                                                MakoriGayMag = true
                                                PosGay = v2605.HumanoidRootPart.CFrame
                                                topos(v2605.HumanoidRootPart.CFrame * Pos)
                                            until not _G.Makori_gay or not v2605.Parent or (v2605.Humanoid.Health <= 0)
                                            MakoriGayMag = false
                                        end
                                    end
                                end
                            else
                                if BypassTP then
                                    if
                                        ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v1027.Position).Magnitude >
                                            3500)
                                     then
                                        BTP(v1027)
                                    elseif
                                        ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v1027.Position).Magnitude <
                                            3500)
                                     then
                                        topos(v1027)
                                    end
                                else
                                    topos(v1027)
                                end
                                UnEquipWeapon(_G.SelectWeapon)
                                topos(CFrame.new(-3352.9013671875, 285.01556396484375, -10534.841796875))
                                if game:GetService("ReplicatedStorage"):FindFirstChild("Water Fighter") then
                                    topos(
                                        game:GetService("ReplicatedStorage"):FindFirstChild("Water Fighter").HumanoidRootPart.CFrame *
                                            CFrame.new(2, 20, 2)
                                    )
                                elseif _G.StardHop then
                                    Hop()
                                end
                            end
                        end
                    )
                end
            end
        end
    )
end
if (World1 or World2) then
    v104:Toggle(
        "Cày Quặng Nham Thạch",
        _G.Makori_gay,
        function(v1751)
            _G.Umm = v1751
            StopTween(_G.Umm)
        end
    )
    local v1028 = CFrame.new(-5850.2802734375, 77.28675079345703, 8848.6748046875)
    spawn(
        function()
            while wait() do
                if (_G.Umm and World1) then
                    pcall(
                        function()
                            if game:GetService("Workspace").Enemies:FindFirstChild("Military Spy") then
                                for v2606, v2607 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if (v2607.Name == "Military Spy") then
                                        if
                                            (v2607:FindFirstChild("Humanoid") and
                                                v2607:FindFirstChild("HumanoidRootPart") and
                                                (v2607.Humanoid.Health > 0))
                                         then
                                            repeat
                                                task.wait()
                                                AutoHaki()
                                                EquipWeapon(_G.SelectWeapon)
                                                v2607.HumanoidRootPart.CanCollide = false
                                                v2607.Humanoid.WalkSpeed = 0
                                                v2607.Head.CanCollide = false
                                                MakoriGayMag = true
                                                PosGay = v2607.HumanoidRootPart.CFrame
                                                topos(v2607.HumanoidRootPart.CFrame * Pos)
                                            until not _G.Umm or not v2607.Parent or (v2607.Humanoid.Health <= 0)
                                            MakoriGayMag = false
                                        end
                                    end
                                end
                            else
                                if BypassTP then
                                    if
                                        ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v1028.Position).Magnitude >
                                            3500)
                                     then
                                        BTP(v1028)
                                    elseif
                                        ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v1028.Position).Magnitude <
                                            3500)
                                     then
                                        topos(v1028)
                                    end
                                else
                                    topos(v1028)
                                end
                                UnEquipWeapon(_G.SelectWeapon)
                                topos(CFrame.new(-5850.2802734375, 77.28675079345703, 8848.6748046875))
                                if game:GetService("ReplicatedStorage"):FindFirstChild("Military Spy") then
                                    topos(
                                        game:GetService("ReplicatedStorage"):FindFirstChild("Military Spy").HumanoidRootPart.CFrame *
                                            CFrame.new(2, 20, 2)
                                    )
                                elseif _G.StardHop then
                                    Hop()
                                end
                            end
                        end
                    )
                end
            end
        end
    )
    local v1029 = CFrame.new(-5234.60595703125, 51.953372955322266, -4732.27880859375)
    spawn(
        function()
            while wait() do
                if (_G.Umm and World2) then
                    pcall(
                        function()
                            if game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate") then
                                for v2608, v2609 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if (v2609.Name == "Lava Pirate") then
                                        if
                                            (v2609:FindFirstChild("Humanoid") and
                                                v2609:FindFirstChild("HumanoidRootPart") and
                                                (v2609.Humanoid.Health > 0))
                                         then
                                            repeat
                                                task.wait()
                                                AutoHaki()
                                                EquipWeapon(_G.SelectWeapon)
                                                v2609.HumanoidRootPart.CanCollide = false
                                                v2609.Humanoid.WalkSpeed = 0
                                                v2609.Head.CanCollide = false
                                                MakoriGayMag = true
                                                PosGay = v2609.HumanoidRootPart.CFrame
                                                topos(v2609.HumanoidRootPart.CFrame * Pos)
                                            until not _G.Umm or not v2609.Parent or (v2609.Humanoid.Health <= 0)
                                            MakoriGayMag = false
                                        end
                                    end
                                end
                            else
                                if BypassTP then
                                    if
                                        ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v1029.Position).Magnitude >
                                            3500)
                                     then
                                        BTP(v1029)
                                    elseif
                                        ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v1029.Position).Magnitude <
                                            3500)
                                     then
                                        topos(v1029)
                                    end
                                else
                                    topos(v1029)
                                end
                                UnEquipWeapon(_G.SelectWeapon)
                                topos(CFrame.new(-5234.60595703125, 51.953372955322266, -4732.27880859375))
                                if game:GetService("ReplicatedStorage"):FindFirstChild("Lava Pirate") then
                                    topos(
                                        game:GetService("ReplicatedStorage"):FindFirstChild("Lava Pirate").HumanoidRootPart.CFrame *
                                            CFrame.new(2, 20, 2)
                                    )
                                elseif _G.StardHop then
                                    Hop()
                                end
                            end
                        end
                    )
                end
            end
        end
    )
end
if World1 then
    v104:Toggle(
        "Cày Đôi cánh thiên thần",
        _G.Makori_gay,
        function(v1752)
            _G.Wing = v1752
            StopTween(_G.Wing)
        end
    )
    local v1030 = CFrame.new(-7827.15625, 5606.912109375, -1705.5833740234375)
    spawn(
        function()
            while wait() do
                if (_G.Wing and World1) then
                    pcall(
                        function()
                            if game:GetService("Workspace").Enemies:FindFirstChild("Royal Soldier") then
                                for v2610, v2611 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if (v2611.Name == "Royal Soldier") then
                                        if
                                            (v2611:FindFirstChild("Humanoid") and
                                                v2611:FindFirstChild("HumanoidRootPart") and
                                                (v2611.Humanoid.Health > 0))
                                         then
                                            repeat
                                                task.wait()
                                                AutoHaki()
                                                EquipWeapon(_G.SelectWeapon)
                                                v2611.HumanoidRootPart.CanCollide = false
                                                v2611.Humanoid.WalkSpeed = 0
                                                v2611.Head.CanCollide = false
                                                MakoriGayMag = true
                                                PosGay = v2611.HumanoidRootPart.CFrame
                                                topos(v2611.HumanoidRootPart.CFrame * Pos)
                                            until not _G.Wing or not v2611.Parent or (v2611.Humanoid.Health <= 0)
                                            MakoriGayMag = false
                                        end
                                    end
                                end
                            else
                                if BypassTP then
                                    if
                                        ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v1030.Position).Magnitude >
                                            3500)
                                     then
                                        BTP(v1030)
                                    elseif
                                        ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v1030.Position).Magnitude <
                                            3500)
                                     then
                                        topos(v1030)
                                    end
                                else
                                    topos(v1030)
                                end
                                UnEquipWeapon(_G.SelectWeapon)
                                topos(CFrame.new(-7827.15625, 5606.912109375, -1705.5833740234375))
                                if game:GetService("ReplicatedStorage"):FindFirstChild("Royal Soldier") then
                                    topos(
                                        game:GetService("ReplicatedStorage"):FindFirstChild("Royal Soldier").HumanoidRootPart.CFrame *
                                            CFrame.new(2, 20, 2)
                                    )
                                elseif _G.StardHop then
                                    Hop()
                                end
                            end
                        end
                    )
                end
            end
        end
    )
end
if (World1 or World2 or World3) then
    v104:Toggle(
        "Cày Da",
        _G.Makori_gay,
        function(v1753)
            _G.Leather = v1753
            StopTween(_G.Leather)
        end
    )
    local v1031 = CFrame.new(-1211.8792724609375, 4.787090301513672, 3916.83056640625)
    spawn(
        function()
            while wait() do
                if (_G.Leather and World1) then
                    pcall(
                        function()
                            if game:GetService("Workspace").Enemies:FindFirstChild("Pirate") then
                                for v2612, v2613 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if (v2613.Name == "Pirate") then
                                        if
                                            (v2613:FindFirstChild("Humanoid") and
                                                v2613:FindFirstChild("HumanoidRootPart") and
                                                (v2613.Humanoid.Health > 0))
                                         then
                                            repeat
                                                task.wait()
                                                AutoHaki()
                                                EquipWeapon(_G.SelectWeapon)
                                                v2613.HumanoidRootPart.CanCollide = false
                                                v2613.Humanoid.WalkSpeed = 0
                                                v2613.Head.CanCollide = false
                                                MakoriGayMag = true
                                                PosGay = v2613.HumanoidRootPart.CFrame
                                                topos(v2613.HumanoidRootPart.CFrame * Pos)
                                            until not _G.Leather or not v2613.Parent or (v2613.Humanoid.Health <= 0)
                                            MakoriGayMag = false
                                        end
                                    end
                                end
                            else
                                if BypassTP then
                                    if
                                        ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v1031.Position).Magnitude >
                                            3500)
                                     then
                                        BTP(v1031)
                                    elseif
                                        ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v1031.Position).Magnitude <
                                            3500)
                                     then
                                        topos(v1031)
                                    end
                                else
                                    topos(v1031)
                                end
                                UnEquipWeapon(_G.SelectWeapon)
                                topos(CFrame.new(-1211.8792724609375, 4.787090301513672, 3916.83056640625))
                                if game:GetService("ReplicatedStorage"):FindFirstChild("Pirate") then
                                    topos(
                                        game:GetService("ReplicatedStorage"):FindFirstChild("Pirate").HumanoidRootPart.CFrame *
                                            CFrame.new(2, 20, 2)
                                    )
                                elseif _G.StardHop then
                                    Hop()
                                end
                            end
                        end
                    )
                end
            end
        end
    )
    local v1032 = CFrame.new(-2010.5059814453125, 73.00115966796875, -3326.620849609375)
    spawn(
        function()
            while wait() do
                if (_G.Leather and World2) then
                    pcall(
                        function()
                            if game:GetService("Workspace").Enemies:FindFirstChild("Marine Captain") then
                                for v2614, v2615 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if (v2615.Name == "Marine Captain") then
                                        if
                                            (v2615:FindFirstChild("Humanoid") and
                                                v2615:FindFirstChild("HumanoidRootPart") and
                                                (v2615.Humanoid.Health > 0))
                                         then
                                            repeat
                                                task.wait()
                                                AutoHaki()
                                                EquipWeapon(_G.SelectWeapon)
                                                v2615.HumanoidRootPart.CanCollide = false
                                                v2615.Humanoid.WalkSpeed = 0
                                                v2615.Head.CanCollide = false
                                                MakoriGayMag = true
                                                PosGay = v2615.HumanoidRootPart.CFrame
                                                topos(v2615.HumanoidRootPart.CFrame * Pos)
                                            until not _G.Leather or not v2615.Parent or (v2615.Humanoid.Health <= 0)
                                            MakoriGayMag = false
                                        end
                                    end
                                end
                            else
                                if BypassTP then
                                    if
                                        ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v1032.Position).Magnitude >
                                            3500)
                                     then
                                        BTP(v1032)
                                    elseif
                                        ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v1032.Position).Magnitude <
                                            3500)
                                     then
                                        topos(v1032)
                                    end
                                else
                                    topos(v1032)
                                end
                                UnEquipWeapon(_G.SelectWeapon)
                                topos(CFrame.new(-2010.5059814453125, 73.00115966796875, -3326.620849609375))
                                if game:GetService("ReplicatedStorage"):FindFirstChild("Marine Captain") then
                                    topos(
                                        game:GetService("ReplicatedStorage"):FindFirstChild("Marine Captain").HumanoidRootPart.CFrame *
                                            CFrame.new(2, 20, 2)
                                    )
                                elseif _G.StardHop then
                                    Hop()
                                end
                            end
                        end
                    )
                end
            end
        end
    )
    local v1033 = CFrame.new(-11975.78515625, 331.7734069824219, -10620.0302734375)
    spawn(
        function()
            while wait() do
                if (_G.Leather and World3) then
                    pcall(
                        function()
                            if game:GetService("Workspace").Enemies:FindFirstChild("Jungle Pirate") then
                                for v2616, v2617 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if (v2617.Name == "Jungle Pirate") then
                                        if
                                            (v2617:FindFirstChild("Humanoid") and
                                                v2617:FindFirstChild("HumanoidRootPart") and
                                                (v2617.Humanoid.Health > 0))
                                         then
                                            repeat
                                                task.wait()
                                                AutoHaki()
                                                EquipWeapon(_G.SelectWeapon)
                                                v2617.HumanoidRootPart.CanCollide = false
                                                v2617.Humanoid.WalkSpeed = 0
                                                v2617.Head.CanCollide = false
                                                MakoriGayMag = true
                                                PosGay = v2617.HumanoidRootPart.CFrame
                                                topos(v2617.HumanoidRootPart.CFrame * Pos)
                                            until not _G.Leather or not v2617.Parent or (v2617.Humanoid.Health <= 0)
                                            MakoriGayMag = false
                                        end
                                    end
                                end
                            else
                                if BypassTP then
                                    if
                                        ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v1033.Position).Magnitude >
                                            3500)
                                     then
                                        BTP(v1033)
                                    elseif
                                        ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v1033.Position).Magnitude <
                                            3500)
                                     then
                                        topos(v1033)
                                    end
                                else
                                    topos(v1033)
                                end
                                UnEquipWeapon(_G.SelectWeapon)
                                topos(CFrame.new(-11975.78515625, 331.7734069824219, -10620.0302734375))
                                if game:GetService("ReplicatedStorage"):FindFirstChild("Jungle Pirate") then
                                    topos(
                                        game:GetService("ReplicatedStorage"):FindFirstChild("Jungle Pirate").HumanoidRootPart.CFrame *
                                            CFrame.new(2, 20, 2)
                                    )
                                elseif _G.StardHop then
                                    Hop()
                                end
                            end
                        end
                    )
                end
            end
        end
    )
end
if (World1 or world2 or World3) then
    v104:Toggle(
        "Cày Kim loại phế liệu",
        false,
        function(v1754)
            Scrap = v1754
            StopTween(Scrap)
        end
    )
    local v1034 = CFrame.new(-1132.4202880859375, 14.844913482666016, 4293.30517578125)
    spawn(
        function()
            while wait() do
                if (Scrap and World1) then
                    pcall(
                        function()
                            if game:GetService("Workspace").Enemies:FindFirstChild("Brute") then
                                for v2618, v2619 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if (v2619.Name == "Brute") then
                                        if
                                            (v2619:FindFirstChild("Humanoid") and
                                                v2619:FindFirstChild("HumanoidRootPart") and
                                                (v2619.Humanoid.Health > 0))
                                         then
                                            repeat
                                                task.wait()
                                                AutoHaki()
                                                EquipWeapon(_G.SelectWeapon)
                                                v2619.HumanoidRootPart.CanCollide = false
                                                v2619.Humanoid.WalkSpeed = 0
                                                v2619.Head.CanCollide = false
                                                MakoriGayMag = true
                                                PosGay = v2619.HumanoidRootPart.CFrame
                                                topos(v2619.HumanoidRootPart.CFrame * Pos)
                                            until not Scrap or not v2619.Parent or (v2619.Humanoid.Health <= 0)
                                            MakoriGayMag = false
                                        end
                                    end
                                end
                            else
                                if BypassTP then
                                    if
                                        ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v1034.Position).Magnitude >
                                            3500)
                                     then
                                        BTP(v1034)
                                    elseif
                                        ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v1034.Position).Magnitude <
                                            3500)
                                     then
                                        topos(v1034)
                                    end
                                else
                                    topos(v1034)
                                end
                                UnEquipWeapon(_G.SelectWeapon)
                                topos(CFrame.new(-1132.4202880859375, 14.844913482666016, 4293.30517578125))
                                if game:GetService("ReplicatedStorage"):FindFirstChild("Brute") then
                                    topos(
                                        game:GetService("ReplicatedStorage"):FindFirstChild("Brute").HumanoidRootPart.CFrame *
                                            CFrame.new(2, 20, 2)
                                    )
                                elseif _G.StardHop then
                                    Hop()
                                end
                            end
                        end
                    )
                end
            end
        end
    )
    local v1035 = CFrame.new(-972.307373046875, 73.04473876953125, 1419.2901611328125)
    spawn(
        function()
            while wait() do
                if (Scrap and World2) then
                    pcall(
                        function()
                            if game:GetService("Workspace").Enemies:FindFirstChild("Mercenary") then
                                for v2620, v2621 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if (v2621.Name == "Mercenary") then
                                        if
                                            (v2621:FindFirstChild("Humanoid") and
                                                v2621:FindFirstChild("HumanoidRootPart") and
                                                (v2621.Humanoid.Health > 0))
                                         then
                                            repeat
                                                task.wait()
                                                AutoHaki()
                                                EquipWeapon(_G.SelectWeapon)
                                                v2621.HumanoidRootPart.CanCollide = false
                                                v2621.Humanoid.WalkSpeed = 0
                                                v2621.Head.CanCollide = false
                                                MakoriGayMag = true
                                                PosGay = v2621.HumanoidRootPart.CFrame
                                                topos(v2621.HumanoidRootPart.CFrame * Pos)
                                            until not Scrap or not v2621.Parent or (v2621.Humanoid.Health <= 0)
                                            MakoriGayMag = false
                                        end
                                    end
                                end
                            else
                                if BypassTP then
                                    if
                                        ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v1035.Position).Magnitude >
                                            3500)
                                     then
                                        BTP(v1035)
                                    elseif
                                        ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v1035.Position).Magnitude <
                                            3500)
                                     then
                                        topos(v1035)
                                    end
                                else
                                    topos(v1035)
                                end
                                UnEquipWeapon(_G.SelectWeapon)
                                topos(CFrame.new(-972.307373046875, 73.04473876953125, 1419.2901611328125))
                                if game:GetService("ReplicatedStorage"):FindFirstChild("Mercenary") then
                                    topos(
                                        game:GetService("ReplicatedStorage"):FindFirstChild("Mercenary").HumanoidRootPart.CFrame *
                                            CFrame.new(2, 20, 2)
                                    )
                                elseif _G.StardHop then
                                    Hop()
                                end
                            end
                        end
                    )
                end
            end
        end
    )
    local v1036 = CFrame.new(-289.6311950683594, 43.8282470703125, 5583.66357421875)
    spawn(
        function()
            while wait() do
                if (Scrap and World3) then
                    pcall(
                        function()
                            if game:GetService("Workspace").Enemies:FindFirstChild("Pirate Millionaire") then
                                for v2622, v2623 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if (v2623.Name == "Pirate Millionaire") then
                                        if
                                            (v2623:FindFirstChild("Humanoid") and
                                                v2623:FindFirstChild("HumanoidRootPart") and
                                                (v2623.Humanoid.Health > 0))
                                         then
                                            repeat
                                                task.wait()
                                                AutoHaki()
                                                EquipWeapon(_G.SelectWeapon)
                                                v2623.HumanoidRootPart.CanCollide = false
                                                v2623.Humanoid.WalkSpeed = 0
                                                v2623.Head.CanCollide = false
                                                MakoriGayMag = true
                                                PosGay = v2623.HumanoidRootPart.CFrame
                                                topos(v2623.HumanoidRootPart.CFrame * Pos)
                                            until not Scrap or not v2623.Parent or (v2623.Humanoid.Health <= 0)
                                            MakoriGayMag = false
                                        end
                                    end
                                end
                            else
                                if BypassTP then
                                    if
                                        ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v1036.Position).Magnitude >
                                            3500)
                                     then
                                        BTP(v1036)
                                    elseif
                                        ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v1036.Position).Magnitude <
                                            3500)
                                     then
                                        topos(v1036)
                                    end
                                else
                                    topos(v1036)
                                end
                                UnEquipWeapon(_G.SelectWeapon)
                                topos(CFrame.new(-289.6311950683594, 43.8282470703125, 5583.66357421875))
                                if game:GetService("ReplicatedStorage"):FindFirstChild("Pirate Millionaire") then
                                    topos(
                                        game:GetService("ReplicatedStorage"):FindFirstChild("Pirate Millionaire").HumanoidRootPart.CFrame *
                                            CFrame.new(2, 20, 2)
                                    )
                                elseif _G.StardHop then
                                    Hop()
                                end
                            end
                        end
                    )
                end
            end
        end
    )
end
if World3 then
    v104:Toggle(
        "Cày Bột Ca cao",
        false,
        function(v1755)
            Cocoafarm = v1755
            StopTween(Cocoafarm)
        end
    )
    local v1037 = CFrame.new(744.7930908203125, 24.76934242248535, -12637.7255859375)
    spawn(
        function()
            while wait() do
                if (Cocoafarm and World3) then
                    pcall(
                        function()
                            if game:GetService("Workspace").Enemies:FindFirstChild("Chocolate Bar Battler") then
                                for v2624, v2625 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if (v2625.Name == "Chocolate Bar Battler") then
                                        if
                                            (v2625:FindFirstChild("Humanoid") and
                                                v2625:FindFirstChild("HumanoidRootPart") and
                                                (v2625.Humanoid.Health > 0))
                                         then
                                            repeat
                                                task.wait()
                                                AutoHaki()
                                                EquipWeapon(_G.SelectWeapon)
                                                v2625.HumanoidRootPart.CanCollide = false
                                                v2625.Humanoid.WalkSpeed = 0
                                                v2625.Head.CanCollide = false
                                                MakoriGayMag = true
                                                PosGay = v2625.HumanoidRootPart.CFrame
                                                topos(v2625.HumanoidRootPart.CFrame * Pos)
                                            until not Cocoafarm or not v2625.Parent or (v2625.Humanoid.Health <= 0)
                                            MakoriGayMag = false
                                        end
                                    end
                                end
                            else
                                if BypassTP then
                                    if
                                        ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v1037.Position).Magnitude >
                                            3500)
                                     then
                                        BTP(v1037)
                                    elseif
                                        ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v1037.Position).Magnitude <
                                            3500)
                                     then
                                        topos(v1037)
                                    end
                                else
                                    topos(v1037)
                                end
                                UnEquipWeapon(_G.SelectWeapon)
                                topos(CFrame.new(744.7930908203125, 24.76934242248535, -12637.7255859375))
                                if game:GetService("ReplicatedStorage"):FindFirstChild("Chocolate Bar Battler") then
                                    topos(
                                        game:GetService("ReplicatedStorage"):FindFirstChild("Chocolate Bar Battler").HumanoidRootPart.CFrame *
                                            CFrame.new(2, 20, 2)
                                    )
                                elseif _G.StardHop then
                                    Hop()
                                end
                            end
                        end
                    )
                end
            end
        end
    )
end
if World3 then
    v104:Toggle(
        "Cày Vảy Rồng",
        false,
        function(v1756)
            Dragon_Scale = v1756
            StopTween(Dragon_Scale)
        end
    )
    local v1038 = CFrame.new(6752, 565, 315)
    spawn(
        function()
            while wait() do
                if (Dragon_Scale and World3) then
                    pcall(
                        function()
                            if
                                (game:GetService("Workspace").Enemies:FindFirstChild("Dragon Crew Archer") or
                                    game:GetService("Workspace").Enemies:FindFirstChild("Dragon Crew Warrior"))
                             then
                                for v2626, v2627 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if ((v2627.Name == "Dragon Crew Archer") or (v2627.Name == "Dragon Crew Warrior")) then
                                        if
                                            (v2627:FindFirstChild("Humanoid") and
                                                v2627:FindFirstChild("HumanoidRootPart") and
                                                (v2627.Humanoid.Health > 0))
                                         then
                                            repeat
                                                task.wait()
                                                AutoHaki()
                                                EquipWeapon(_G.SelectWeapon)
                                                v2627.HumanoidRootPart.CanCollide = false
                                                v2627.Humanoid.WalkSpeed = 0
                                                v2627.Head.CanCollide = false
                                                MakoriGayMag = true
                                                PosGay = v2627.HumanoidRootPart.CFrame
                                                topos(v2627.HumanoidRootPart.CFrame * Pos)
                                            until not Dragon_Scale or not v2627.Parent or (v2627.Humanoid.Health <= 0)
                                            MakoriGayMag = false
                                        end
                                    end
                                end
                            else
                                if BypassTP then
                                    if
                                        ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v1038.Position).Magnitude >
                                            3500)
                                     then
                                        BTP(v1038)
                                    elseif
                                        ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v1038.Position).Magnitude <
                                            3500)
                                     then
                                        topos(v1038)
                                    end
                                else
                                    topos(v1038)
                                end
                                UnEquipWeapon(_G.SelectWeapon)
                                topos(CFrame.new(6752, 565, 315))
                                if
                                    (game:GetService("ReplicatedStorage"):FindFirstChild("Dragon Crew Archer") or
                                        game:GetService("ReplicatedStorage"):FindFirstChild("Dragon Crew Warrior"))
                                 then
                                    if game:GetService("ReplicatedStorage"):FindFirstChild("Dragon Crew Archer") then
                                        topos(
                                            game:GetService("ReplicatedStorage"):FindFirstChild("Dragon Crew Archer").HumanoidRootPart.CFrame *
                                                CFrame.new(2, 20, 2)
                                        )
                                    elseif game:GetService("ReplicatedStorage"):FindFirstChild("Dragon Crew Warrior") then
                                        topos(
                                            game:GetService("ReplicatedStorage"):FindFirstChild("Dragon Crew Warrior").HumanoidRootPart.CFrame *
                                                CFrame.new(2, 20, 2)
                                        )
                                    end
                                elseif _G.StardHop then
                                    Hop()
                                end
                            end
                        end
                    )
                end
            end
        end
    )
end
if World3 then
    v104:Toggle(
        "Cày Thuốc Súng",
        false,
        function(v1757)
            Gunpowder = v1757
            StopTween(Gunpowder)
        end
    )
    local v1039 = CFrame.new(-379.6134338378906, 73.84449768066406, 5928.5263671875)
    spawn(
        function()
            while wait() do
                if (Gunpowder and World3) then
                    pcall(
                        function()
                            if game:GetService("Workspace").Enemies:FindFirstChild("Pistol Billionaire") then
                                for v2628, v2629 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if (v2629.Name == "Pistol Billionaire") then
                                        if
                                            (v2629:FindFirstChild("Humanoid") and
                                                v2629:FindFirstChild("HumanoidRootPart") and
                                                (v2629.Humanoid.Health > 0))
                                         then
                                            repeat
                                                task.wait()
                                                AutoHaki()
                                                EquipWeapon(_G.SelectWeapon)
                                                v2629.HumanoidRootPart.CanCollide = false
                                                v2629.Humanoid.WalkSpeed = 0
                                                v2629.Head.CanCollide = false
                                                MakoriGayMag = true
                                                PosGay = v2629.HumanoidRootPart.CFrame
                                                topos(v2629.HumanoidRootPart.CFrame * Pos)
                                            until not Gunpowder or not v2629.Parent or (v2629.Humanoid.Health <= 0)
                                            MakoriGayMag = false
                                        end
                                    end
                                end
                            else
                                if BypassTP then
                                    if
                                        ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v1039.Position).Magnitude >
                                            3500)
                                     then
                                        BTP(v1039)
                                    elseif
                                        ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v1039.Position).Magnitude <
                                            3500)
                                     then
                                        topos(v1039)
                                    end
                                else
                                    topos(v1039)
                                end
                                UnEquipWeapon(_G.SelectWeapon)
                                topos(CFrame.new(-379.6134338378906, 73.84449768066406, 5928.5263671875))
                                if game:GetService("ReplicatedStorage"):FindFirstChild("Pistol Billionaire") then
                                    topos(
                                        game:GetService("ReplicatedStorage"):FindFirstChild("Pistol Billionaire").HumanoidRootPart.CFrame *
                                            CFrame.new(2, 20, 2)
                                    )
                                elseif _G.StardHop then
                                    Hop()
                                end
                            end
                        end
                    )
                end
            end
        end
    )
end
if World3 then
    v104:Toggle(
        "Cày Đuôi Cá",
        false,
        function(v1758)
            Fish = v1758
            StopTween(Fish)
        end
    )
    local v1040 = CFrame.new(-10961.0126953125, 331.7977600097656, -8914.29296875)
    spawn(
        function()
            while wait() do
                if (Fish and World3) then
                    pcall(
                        function()
                            if game:GetService("Workspace").Enemies:FindFirstChild("Fishman Captain") then
                                for v2630, v2631 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if (v2631.Name == "Fishman Captain") then
                                        if
                                            (v2631:FindFirstChild("Humanoid") and
                                                v2631:FindFirstChild("HumanoidRootPart") and
                                                (v2631.Humanoid.Health > 0))
                                         then
                                            repeat
                                                task.wait()
                                                AutoHaki()
                                                EquipWeapon(_G.SelectWeapon)
                                                v2631.HumanoidRootPart.CanCollide = false
                                                v2631.Humanoid.WalkSpeed = 0
                                                v2631.Head.CanCollide = false
                                                MakoriGayMag = true
                                                PosGay = v2631.HumanoidRootPart.CFrame
                                                topos(v2631.HumanoidRootPart.CFrame * Pos)
                                            until not Fish or not v2631.Parent or (v2631.Humanoid.Health <= 0)
                                            MakoriGayMag = false
                                        end
                                    end
                                end
                            else
                                if BypassTP then
                                    if
                                        ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v1040.Position).Magnitude >
                                            3500)
                                     then
                                        BTP(v1040)
                                    elseif
                                        ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v1040.Position).Magnitude <
                                            3500)
                                     then
                                        topos(v1040)
                                    end
                                else
                                    topos(v1040)
                                end
                                UnEquipWeapon(_G.SelectWeapon)
                                topos(CFrame.new(-10961.0126953125, 331.7977600097656, -8914.29296875))
                                if game:GetService("ReplicatedStorage"):FindFirstChild("Fishman Captain") then
                                    topos(
                                        game:GetService("ReplicatedStorage"):FindFirstChild("Fishman Captain").HumanoidRootPart.CFrame *
                                            CFrame.new(2, 20, 2)
                                    )
                                elseif _G.StardHop then
                                    Hop()
                                end
                            end
                        end
                    )
                end
            end
        end
    )
end
if World3 then
    v104:Toggle(
        "Cày Sừng Tê Giác",
        false,
        function(v1759)
            MiniHee = v1759
            StopTween(MiniHee)
        end
    )
    local v1041 = CFrame.new(-13516.0458984375, 469.8182373046875, -6899.16064453125)
    spawn(
        function()
            while wait() do
                if (MiniHee and World3) then
                    pcall(
                        function()
                            if game:GetService("Workspace").Enemies:FindFirstChild("Mythological Pirate") then
                                for v2632, v2633 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if (v2633.Name == "Mythological Pirate") then
                                        if
                                            (v2633:FindFirstChild("Humanoid") and
                                                v2633:FindFirstChild("HumanoidRootPart") and
                                                (v2633.Humanoid.Health > 0))
                                         then
                                            repeat
                                                task.wait()
                                                AutoHaki()
                                                EquipWeapon(_G.SelectWeapon)
                                                v2633.HumanoidRootPart.CanCollide = false
                                                v2633.Humanoid.WalkSpeed = 0
                                                v2633.Head.CanCollide = false
                                                MakoriGayMag = true
                                                PosGay = v2633.HumanoidRootPart.CFrame
                                                topos(v2633.HumanoidRootPart.CFrame * Pos)
                                            until not MiniHee or not v2633.Parent or (v2633.Humanoid.Health <= 0)
                                            MakoriGayMag = false
                                        end
                                    end
                                end
                            else
                                if BypassTP then
                                    if
                                        ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v1041.Position).Magnitude >
                                            3500)
                                     then
                                        BTP(v1041)
                                    elseif
                                        ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v1041.Position).Magnitude <
                                            3500)
                                     then
                                        topos(v1041)
                                    end
                                else
                                    topos(v1041)
                                end
                                UnEquipWeapon(_G.SelectWeapon)
                                topos(CFrame.new(-13516.0458984375, 469.8182373046875, -6899.16064453125))
                                if game:GetService("ReplicatedStorage"):FindFirstChild("Mythological Pirate") then
                                    topos(
                                        game:GetService("ReplicatedStorage"):FindFirstChild("Mythological Pirate").HumanoidRootPart.CFrame *
                                            CFrame.new(2, 20, 2)
                                    )
                                elseif _G.StardHop then
                                    Hop()
                                end
                            end
                        end
                    )
                end
            end
        end
    )
end
v104:Seperator("nâng cao")
v104:Toggle(
    "Tự động đột kích Phoenix",
    _G.AdvanceDungeon,
    function(v590)
        _G.AdvanceDungeon = v590
        StopTween(_G.AdvanceDungeon)
    end
)
spawn(
    function()
        while wait() do
            if _G.AdvanceDungeon then
                pcall(
                    function()
                        if
                            (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix"))
                         then
                            if
                                game.Players.LocalPlayer.Backpack:FindFirstChild(
                                    game.Players.LocalPlayer.Data.DevilFruit.Value
                                )
                             then
                                if
                                    (game.Players.LocalPlayer.Backpack:FindFirstChild(
                                        game.Players.LocalPlayer.Data.DevilFruit.Value
                                    ).Level.Value >= 400)
                                 then
                                    topos(CFrame.new(-2812.76708984375, 254.803466796875, -12595.560546875))
                                    if
                                        ((CFrame.new(-2812.76708984375, 254.803466796875, -12595.560546875).Position -
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                            10)
                                     then
                                        wait(1.5)
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                            "SickScientist",
                                            "Check"
                                        )
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                            "SickScientist",
                                            "Heal"
                                        )
                                    end
                                end
                            elseif
                                game.Players.LocalPlayer.Character:FindFirstChild(
                                    game.Players.LocalPlayer.Data.DevilFruit.Value
                                )
                             then
                                if
                                    (game.Players.LocalPlayer.Character:FindFirstChild(
                                        game.Players.LocalPlayer.Data.DevilFruit.Value
                                    ).Level.Value >= 400)
                                 then
                                    topos(CFrame.new(-2812.76708984375, 254.803466796875, -12595.560546875))
                                    if
                                        ((CFrame.new(-2812.76708984375, 254.803466796875, -12595.560546875).Position -
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                            10)
                                     then
                                        wait(1.5)
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                            "SickScientist",
                                            "Check"
                                        )
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                            "SickScientist",
                                            "Heal"
                                        )
                                    end
                                end
                            end
                        end
                    end
                )
            end
        end
    end
)
v104:Label("Biển 1")
v104:Seperator("Saw")
v104:Toggle(
    "Đánh Sharks saw",
    _G.doughking,
    function(v591)
        _G.saw = v591
        StopTween(_G.saw)
    end
)
v104:Toggle(
    "Đánh Shark Saw Đổi Sever",
    _G.doughkingHop,
    function(v592)
        _G.sawhop = v592
    end
)
local v131 = CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094)
spawn(
    function()
        while wait() do
            if (_G.saw and World1) then
                pcall(
                    function()
                        if game:GetService("Workspace").Enemies:FindFirstChild("The Saw") then
                            for v2329, v2330 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if (v2330.Name == "The Saw") then
                                    if
                                        (v2330:FindFirstChild("Humanoid") and v2330:FindFirstChild("HumanoidRootPart") and
                                            (v2330.Humanoid.Health > 0))
                                     then
                                        repeat
                                            task.wait()
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            v2330.HumanoidRootPart.CanCollide = false
                                            v2330.Humanoid.WalkSpeed = 0
                                            v2330.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                            topos(v2330.HumanoidRootPart.CFrame * Pos)
                                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                        until not _G.saw or not v2330.Parent or (v2330.Humanoid.Health <= 0)
                                    end
                                end
                            end
                        else
                            if BypassTP then
                                if
                                    ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v131.Position).Magnitude >
                                        3500)
                                 then
                                    BTP(v131)
                                elseif
                                    ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v131.Position).Magnitude <
                                        3500)
                                 then
                                    topos(v131)
                                end
                            else
                                topos(v131)
                            end
                            UnEquipWeapon(_G.SelectWeapon)
                            topos(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
                            if game:GetService("ReplicatedStorage"):FindFirstChild("The Saw") then
                                topos(
                                    game:GetService("ReplicatedStorage"):FindFirstChild("The Saw").HumanoidRootPart.CFrame *
                                        CFrame.new(2, 40, 2)
                                )
                            elseif _G.sawhop then
                                Hop()
                            end
                        end
                    end
                )
            end
        end
    end
)
spawn(
    function()
        pcall(
            function()
                while wait(0.1) do
                    if
                        (_G.FarmSwanGlasses and _G.FarmSwanGlasses_Hop and World2 and
                            not game:GetService("ReplicatedStorage"):FindFirstChild("Don Swan [Lv. 1000] [Boss]") and
                            not game:GetService("Workspace").Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]"))
                     then
                        Hop()
                    end
                end
            end
        )
    end
)
v104:Seperator("Thanh kiếm Waden")
v104:Toggle(
    "Lấy kiếm Waden",
    _G.waden,
    function(v593)
        _G.waden = v593
        StopTween(_G.waden)
    end
)
v104:Toggle(
    "kiếm Waden Đổi Sever",
    _G.wadenhop,
    function(v594)
        _G.wadenhop = v594
    end
)
local v132 = CFrame.new(5186.14697265625, 24.86684226989746, 832.1885375976562)
spawn(
    function()
        while wait() do
            if (_G.waden and World1) then
                pcall(
                    function()
                        if game:GetService("Workspace").Enemies:FindFirstChild("Chief Warden") then
                            for v2331, v2332 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if (v2332.Name == "Chief Warden") then
                                    if
                                        (v2332:FindFirstChild("Humanoid") and v2332:FindFirstChild("HumanoidRootPart") and
                                            (v2332.Humanoid.Health > 0))
                                     then
                                        repeat
                                            task.wait()
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            v2332.HumanoidRootPart.CanCollide = false
                                            v2332.Humanoid.WalkSpeed = 0
                                            v2332.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                            topos(v2332.HumanoidRootPart.CFrame * Pos)
                                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                        until not _G.waden or not v2332.Parent or (v2332.Humanoid.Health <= 0)
                                    end
                                end
                            end
                        else
                            if BypassTP then
                                if
                                    ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - TridentPos.Position).Magnitude >
                                        3500)
                                 then
                                    BTP(TridentPos)
                                elseif
                                    ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - TridentPos.Position).Magnitude <
                                        3500)
                                 then
                                    topos(TridentPos)
                                end
                            else
                                topos(TridentPos)
                            end
                            UnEquipWeapon(_G.SelectWeapon)
                            topos(CFrame.new(5186.14697265625, 24.86684226989746, 832.1885375976562))
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Chief Warden") then
                                topos(
                                    game:GetService("ReplicatedStorage"):FindFirstChild("Chief Warden").HumanoidRootPart.CFrame *
                                        CFrame.new(2, 20, 2)
                                )
                            elseif _G.wadenhop then
                                Hop()
                            end
                        end
                    end
                )
            end
        end
    end
)
v104:Seperator("Râu Xám")
v104:Toggle(
    "Đánh Râu Xám",
    _G.doughking,
    function(v595)
        _G.gay = v595
        StopTween(_G.gay)
    end
)
v104:Toggle(
    "Đánh Râu Xám Đổi Sever",
    _G.doughkingHop,
    function(v596)
        _G.gayhop = v596
    end
)
local v133 = CFrame.new(-5023.38330078125, 28.65203285217285, 4332.3818359375)
spawn(
    function()
        while wait() do
            if (_G.gay and World1) then
                pcall(
                    function()
                        if game:GetService("Workspace").Enemies:FindFirstChild("Greybeard") then
                            for v2333, v2334 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if (v2334.Name == "Greybeard") then
                                    if
                                        (v2334:FindFirstChild("Humanoid") and v2334:FindFirstChild("HumanoidRootPart") and
                                            (v2334.Humanoid.Health > 0))
                                     then
                                        repeat
                                            task.wait()
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            v2334.HumanoidRootPart.CanCollide = false
                                            v2334.Humanoid.WalkSpeed = 0
                                            v2334.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                            topos(v2334.HumanoidRootPart.CFrame * Pos)
                                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                        until not _G.gay or not v2334.Parent or (v2334.Humanoid.Health <= 0)
                                    end
                                end
                            end
                        else
                            if BypassTP then
                                if
                                    ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v133.Position).Magnitude >
                                        3500)
                                 then
                                    BTP(v133)
                                elseif
                                    ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v133.Position).Magnitude <
                                        3500)
                                 then
                                    topos(v133)
                                end
                            else
                                topos(v133)
                            end
                            UnEquipWeapon(_G.SelectWeapon)
                            topos(CFrame.new(-5023.38330078125, 28.65203285217285, 4332.3818359375))
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Greybeard") then
                                topos(
                                    game:GetService("ReplicatedStorage"):FindFirstChild("Greybeard").HumanoidRootPart.CFrame *
                                        CFrame.new(2, 20, 2)
                                )
                            elseif _G.gayhop then
                                Hop()
                            end
                        end
                    end
                )
            end
        end
    end
)
v104:Seperator("Saber")
v104:Toggle(
    "Tự Động Lấy Saber",
    _G.Saber,
    function(v597)
        _G.Saber = v597
        StopTween(_G.Saber)
    end
)
v104:Toggle(
    "Saber Đổi Sever",
    _G.SaberHop,
    function(v598)
        _G.SaberHop = v598
    end
)
spawn(
    function()
        while task.wait() do
            if (_G.Saber and (game.Players.LocalPlayer.Data.Level.Value >= 200)) then
                pcall(
                    function()
                        if (game:GetService("Workspace").Map.Jungle.Final.Part.Transparency == 0) then
                            if (game:GetService("Workspace").Map.Jungle.QuestPlates.Door.Transparency == 0) then
                                if
                                    ((CFrame.new(
                                        -1612.55884,
                                        36.9774132,
                                        148.719543,
                                        0.37091279,
                                        3.071715e-9,
                                        -0.928667724,
                                        3.970995e-8,
                                        1,
                                        1.9167935e-8,
                                        0.928667724,
                                        -4.398698e-8,
                                        0.37091279
                                    ).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                        100)
                                 then
                                    topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                                    wait(1)
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                        game:GetService("Workspace").Map.Jungle.QuestPlates.Plate1.Button.CFrame
                                    wait(1)
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                        game:GetService("Workspace").Map.Jungle.QuestPlates.Plate2.Button.CFrame
                                    wait(1)
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                        game:GetService("Workspace").Map.Jungle.QuestPlates.Plate3.Button.CFrame
                                    wait(1)
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                        game:GetService("Workspace").Map.Jungle.QuestPlates.Plate4.Button.CFrame
                                    wait(1)
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                        game:GetService("Workspace").Map.Jungle.QuestPlates.Plate5.Button.CFrame
                                    wait(1)
                                else
                                    topos(
                                        CFrame.new(
                                            -1612.55884,
                                            36.9774132,
                                            148.719543,
                                            0.37091279,
                                            3.071715e-9,
                                            -0.928667724,
                                            3.970995e-8,
                                            1,
                                            1.9167935e-8,
                                            0.928667724,
                                            -4.398698e-8,
                                            0.37091279
                                        )
                                    )
                                end
                            elseif (game:GetService("Workspace").Map.Desert.Burn.Part.Transparency == 0) then
                                if
                                    (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Torch") or
                                        game.Players.LocalPlayer.Character:FindFirstChild("Torch"))
                                 then
                                    EquipWeapon("Torch")
                                    topos(
                                        CFrame.new(
                                            1114.61475,
                                            5.04679728,
                                            4350.22803,
                                            -0.648466587,
                                            -1.2879909e-9,
                                            0.761243105,
                                            -5.706529e-10,
                                            1,
                                            1.2058454e-9,
                                            -0.761243105,
                                            3.4754488e-10,
                                            -0.648466587
                                        )
                                    )
                                else
                                    topos(
                                        CFrame.new(
                                            -1610.00757,
                                            11.5049858,
                                            164.001587,
                                            0.984807551,
                                            -0.167722285,
                                            -0.0449818149,
                                            0.17364943,
                                            0.951244235,
                                            0.254912198,
                                            0.00003423728,
                                            -0.258850515,
                                            0.965917408
                                        )
                                    )
                                end
                            elseif
                                (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "ProQuestProgress",
                                    "SickMan"
                                ) ~= 0)
                             then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "ProQuestProgress",
                                    "GetCup"
                                )
                                wait(0.5)
                                EquipWeapon("Cup")
                                wait(0.5)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "ProQuestProgress",
                                    "FillCup",
                                    game:GetService("Players").LocalPlayer.Character.Cup
                                )
                                wait(0)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "ProQuestProgress",
                                    "SickMan"
                                )
                            elseif
                                (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "ProQuestProgress",
                                    "RichSon"
                                ) == nil)
                             then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "ProQuestProgress",
                                    "RichSon"
                                )
                            elseif
                                (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "ProQuestProgress",
                                    "RichSon"
                                ) == 0)
                             then
                                if
                                    (game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader") or
                                        game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader"))
                                 then
                                    topos(
                                        CFrame.new(
                                            -2967.59521,
                                            -4.91089821,
                                            5328.70703,
                                            0.342208564,
                                            -0.0227849055,
                                            0.939347804,
                                            0.0251603816,
                                            0.999569714,
                                            0.0150796166,
                                            -0.939287126,
                                            0.0184739735,
                                            0.342634559
                                        )
                                    )
                                    for v3087, v3088 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if (v3088.Name == "Mob Leader") then
                                            if
                                                game:GetService("Workspace").Enemies:FindFirstChild(
                                                    "Mob Leader [Lv. 120] [Boss]"
                                                )
                                             then
                                                if
                                                    (v3088:FindFirstChild("Humanoid") and
                                                        v3088:FindFirstChild("HumanoidRootPart") and
                                                        (v3088.Humanoid.Health > 0))
                                                 then
                                                    repeat
                                                        task.wait()
                                                        AutoHaki()
                                                        EquipWeapon(_G.SelectWeapon)
                                                        v3088.HumanoidRootPart.CanCollide = false
                                                        v3088.Humanoid.WalkSpeed = 0
                                                        v3088.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                                        topos(v3088.HumanoidRootPart.CFrame * Pos)
                                                        sethiddenproperty(
                                                            game:GetService("Players").LocalPlayer,
                                                            "SimulationRadius",
                                                            math.huge
                                                        )
                                                    until (v3088.Humanoid.Health <= 0) or not _G.Saber
                                                end
                                            end
                                            if game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader") then
                                                topos(
                                                    game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader").HumanoidRootPart.CFrame *
                                                        Farm_Mode
                                                )
                                            end
                                        end
                                    end
                                end
                            elseif
                                (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "ProQuestProgress",
                                    "RichSon"
                                ) == 1)
                             then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "ProQuestProgress",
                                    "RichSon"
                                )
                                wait(0.5)
                                EquipWeapon("Relic")
                                wait(0.5)
                                topos(
                                    CFrame.new(
                                        -1404.91504,
                                        29.9773273,
                                        3.80598116,
                                        0.876514494,
                                        5.6690688e-9,
                                        0.481375456,
                                        2.53852e-8,
                                        1,
                                        -5.799956e-8,
                                        -0.481375456,
                                        6.3057264e-8,
                                        0.876514494
                                    )
                                )
                            end
                        elseif
                            (game:GetService("Workspace").Enemies:FindFirstChild("Saber Expert") or
                                game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert"))
                         then
                            for v2634, v2635 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if
                                    (v2635:FindFirstChild("Humanoid") and v2635:FindFirstChild("HumanoidRootPart") and
                                        (v2635.Humanoid.Health > 0))
                                 then
                                    if (v2635.Name == "Saber Expert") then
                                        repeat
                                            task.wait()
                                            EquipWeapon(_G.SelectWeapon)
                                            topos(v2635.HumanoidRootPart.CFrame * Pos)
                                            v2635.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                            v2635.HumanoidRootPart.Transparency = 1
                                            v2635.Humanoid.JumpPower = 0
                                            v2635.Humanoid.WalkSpeed = 0
                                            v2635.HumanoidRootPart.CanCollide = false
                                            FarmPos = v2635.HumanoidRootPart.CFrame
                                            MonFarm = v2635.Name
                                        until (v2635.Humanoid.Health <= 0) or not _G.Saber
                                        if (v2635.Humanoid.Health <= 0) then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                "ProQuestProgress",
                                                "PlaceRelic"
                                            )
                                        end
                                    end
                                end
                            end
                        end
                    end
                )
            end
        end
    end
)
v104:Seperator("Lôi Thể")
v104:Toggle(
    "Lấy Gậy Lôi Thể v1",
    _G.doughking,
    function(v599)
        _G.pole = v599
        StopTween(_G.pole)
    end
)
v104:Toggle(
    "Gậy Lôi Thể Đổi Sever",
    _G.doughkingHop,
    function(v600)
        _G.polehop = v600
    end
)
local v134 = CFrame.new(-7748.0185546875, 5606.80615234375, -2305.898681640625)
spawn(
    function()
        while wait() do
            if (_G.pole and World1) then
                pcall(
                    function()
                        if game:GetService("Workspace").Enemies:FindFirstChild("Thunder God") then
                            for v2335, v2336 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if (v2336.Name == "Thunder God") then
                                    if
                                        (v2336:FindFirstChild("Humanoid") and v2336:FindFirstChild("HumanoidRootPart") and
                                            (v2336.Humanoid.Health > 0))
                                     then
                                        repeat
                                            task.wait()
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            v2336.HumanoidRootPart.CanCollide = false
                                            v2336.Humanoid.WalkSpeed = 0
                                            v2336.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                            topos(v2336.HumanoidRootPart.CFrame * Pos)
                                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                        until not _G.pole or not v2336.Parent or (v2336.Humanoid.Health <= 0)
                                    end
                                end
                            end
                        else
                            if BypassTP then
                                if
                                    ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v134.Position).Magnitude >
                                        3500)
                                 then
                                    BTP(v134)
                                elseif
                                    ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v134.Position).Magnitude <
                                        3500)
                                 then
                                    topos(v134)
                                end
                            else
                                topos(TridentPos)
                            end
                            UnEquipWeapon(_G.SelectWeapon)
                            topos(CFrame.new(-7748.0185546875, 5606.80615234375, -2305.898681640625))
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Thunder God") then
                                topos(
                                    game:GetService("ReplicatedStorage"):FindFirstChild("Thunder God").HumanoidRootPart.CFrame *
                                        CFrame.new(2, 20, 2)
                                )
                            elseif _G.polehop then
                                Hop()
                            end
                        end
                    end
                )
            end
        end
    end
)
v104:Label("Biển 2")
v104:Seperator("Kiếm Huyền Thoại")
v104:Toggle(
    "Mua Kiếm Huyền Thoại",
    _G.BuyLegendarySword,
    function(v601)
        _G.BuyLegendarySword = v601
    end
)
spawn(
    function()
        while wait() do
            if _G.BuyLegendarySword then
                pcall(
                    function()
                        local v2031 = {[1] = "LegendarySwordDealer", [2] = "1"}
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v2031))
                        local v2031 = {[1] = "LegendarySwordDealer", [2] = "2"}
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v2031))
                        local v2031 = {[1] = "LegendarySwordDealer", [2] = "3"}
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v2031))
                        if (_G.BuyLegendarySword_Hop and _G.BuyLegendarySword and World2) then
                            wait(10)
                            Hop()
                        end
                    end
                )
            end
        end
    end
)
v104:Toggle(
    "Kiếm Huyền Thoại Đổi Sever",
    _G.BuyLegendarySword_Hop,
    function(v602)
        _G.BuyLegendarySword_Hop = v602
    end
)
v104:Seperator("Haki Màu")
local v135 =
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(
    "ColorsDealer",
    "1"
)
v104:Toggle(
    "Mua Haki Màu",
    _G.BuyEnchancementColour,
    function(v603)
        _G.BuyEnchancementColour = v603
    end
)
v104:Toggle(
    "Haki Màu Đổi Sever",
    _G.BuyEnchancementColour_Hop,
    function(v604)
        _G.BuyEnchancementColour_Hop = v604
    end
)
spawn(
    function()
        while wait() do
            if _G.BuyEnchancementColour then
                local v1923 = {[1] = "ColorsDealer", [2] = "2"}
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v1923))
                if (_G.BuyEnchancementColour_Hop and _G.BuyEnchancementColour and not World1) then
                    wait(10)
                    Hop()
                end
            end
        end
    end
)
v104:Seperator("Bartlio")
v104:Toggle(
    "Làm Nhiệm Vụ Bartlio",
    _G.Bartilo,
    function(v605)
        _G.Bartilo = v605
    end
)
spawn(
    function()
        pcall(
            function()
                while wait(0.1) do
                    if _G.Bartilo then
                        if
                            ((game:GetService("Players").LocalPlayer.Data.Level.Value >= 800) and
                                (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "BartiloQuestProgress",
                                    "Bartilo"
                                ) == 0))
                         then
                            if
                                (string.find(
                                    game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,
                                    "Swan Pirates"
                                ) and
                                    string.find(
                                        game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,
                                        "50"
                                    ) and
                                    (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true))
                             then
                                if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate") then
                                    Ms = "Swan Pirate"
                                    for v2793, v2794 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if (v2794.Name == Ms) then
                                            pcall(
                                                function()
                                                    repeat
                                                        task.wait()
                                                        sethiddenproperty(
                                                            game:GetService("Players").LocalPlayer,
                                                            "SimulationRadius",
                                                            math.huge
                                                        )
                                                        EquipWeapon(_G.SelectWeapon)
                                                        AutoHaki()
                                                        v2794.HumanoidRootPart.Transparency = 1
                                                        v2794.HumanoidRootPart.CanCollide = false
                                                        v2794.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                                        topos(v2794.HumanoidRootPart.CFrame * Pos)
                                                        PosMonBarto = v2794.HumanoidRootPart.CFrame
                                                        AutoBartiloBring = true
                                                    until not v2794.Parent or (v2794.Humanoid.Health <= 0) or
                                                        (_G.Bartilo == false) or
                                                        (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible ==
                                                            false)
                                                    AutoBartiloBring = false
                                                end
                                            )
                                        end
                                    end
                                else
                                    repeat
                                        topos(
                                            CFrame.new(
                                                932.624451,
                                                156.106079,
                                                1180.27466,
                                                -0.973085582,
                                                4.5513712e-8,
                                                -0.230443969,
                                                2.6702471e-8,
                                                1,
                                                8.474911e-8,
                                                0.230443969,
                                                7.631471e-8,
                                                -0.973085582
                                            )
                                        )
                                        wait()
                                    until not _G.Bartilo or
                                        ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position -
                                            Vector3.new(
                                                932.624451,
                                                156.106079,
                                                1180.27466,
                                                -0.973085582,
                                                4.5513712e-8,
                                                -0.230443969,
                                                2.6702471e-8,
                                                1,
                                                8.474911e-8,
                                                0.230443969,
                                                7.631471e-8,
                                                -0.973085582
                                            )).Magnitude <= 10)
                                end
                            else
                                repeat
                                    topos(CFrame.new(-456.28952, 73.0200958, 299.895966))
                                    wait()
                                until not _G.Bartilo or
                                    ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position -
                                        Vector3.new(-456.28952, 73.0200958, 299.895966)).Magnitude <= 10)
                                wait(1.1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "StartQuest",
                                    "BartiloQuest",
                                    1
                                )
                            end
                        elseif
                            ((game:GetService("Players").LocalPlayer.Data.Level.Value >= 800) and
                                (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "BartiloQuestProgress",
                                    "Bartilo"
                                ) == 1))
                         then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Jeremy") then
                                Ms = "Jeremy"
                                for v2795, v2796 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if (v2796.Name == Ms) then
                                        OldCFrameBartlio = v2796.HumanoidRootPart.CFrame
                                        repeat
                                            task.wait()
                                            sethiddenproperty(
                                                game:GetService("Players").LocalPlayer,
                                                "SimulationRadius",
                                                math.huge
                                            )
                                            EquipWeapon(_G.SelectWeapon)
                                            AutoHaki()
                                            v2796.HumanoidRootPart.Transparency = 1
                                            v2796.HumanoidRootPart.CanCollide = false
                                            v2796.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                            v2796.HumanoidRootPart.CFrame = OldCFrameBartlio
                                            topos(v2796.HumanoidRootPart.CFrame * Pos)
                                            sethiddenproperty(
                                                game:GetService("Players").LocalPlayer,
                                                "SimulationRadius",
                                                math.huge
                                            )
                                        until not v2796.Parent or (v2796.Humanoid.Health <= 0) or (_G.Bartilo == false)
                                    end
                                end
                            elseif game:GetService("ReplicatedStorage"):FindFirstChild("Jeremy [Lv. 850] [Boss]") then
                                repeat
                                    topos(CFrame.new(-456.28952, 73.0200958, 299.895966))
                                    wait()
                                until not _G.Bartilo or
                                    ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position -
                                        Vector3.new(-456.28952, 73.0200958, 299.895966)).Magnitude <= 10)
                                wait(1.1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "BartiloQuestProgress",
                                    "Bartilo"
                                )
                                wait(1)
                                repeat
                                    topos(CFrame.new(2099.88159, 448.931, 648.997375))
                                    wait()
                                until not _G.Bartilo or
                                    ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position -
                                        Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10)
                                wait(2)
                            else
                                repeat
                                    topos(CFrame.new(2099.88159, 448.931, 648.997375))
                                    wait()
                                until not _G.Bartilo or
                                    ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position -
                                        Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10)
                            end
                        elseif
                            ((game:GetService("Players").LocalPlayer.Data.Level.Value >= 800) and
                                (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "BartiloQuestProgress",
                                    "Bartilo"
                                ) == 2))
                         then
                            repeat
                                topos(CFrame.new(-1850.49329, 13.1789551, 1750.89685))
                                wait()
                            until not _G.Bartilo or
                                ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position -
                                    Vector3.new(-1850.49329, 13.1789551, 1750.89685)).Magnitude <= 10)
                            wait(1)
                            repeat
                                topos(CFrame.new(-1858.87305, 19.3777466, 1712.01807))
                                wait()
                            until not _G.Bartilo or
                                ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position -
                                    Vector3.new(-1858.87305, 19.3777466, 1712.01807)).Magnitude <= 10)
                            wait(1)
                            repeat
                                topos(CFrame.new(-1803.94324, 16.5789185, 1750.89685))
                                wait()
                            until not _G.Bartilo or
                                ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position -
                                    Vector3.new(-1803.94324, 16.5789185, 1750.89685)).Magnitude <= 10)
                            wait(1)
                            repeat
                                topos(CFrame.new(-1858.55835, 16.8604317, 1724.79541))
                                wait()
                            until not _G.Bartilo or
                                ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position -
                                    Vector3.new(-1858.55835, 16.8604317, 1724.79541)).Magnitude <= 10)
                            wait(1)
                            repeat
                                topos(CFrame.new(-1869.54224, 15.987854, 1681.00659))
                                wait()
                            until not _G.Bartilo or
                                ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position -
                                    Vector3.new(-1869.54224, 15.987854, 1681.00659)).Magnitude <= 10)
                            wait(1)
                            repeat
                                topos(CFrame.new(-1800.0979, 16.4978027, 1684.52368))
                                wait()
                            until not _G.Bartilo or
                                ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position -
                                    Vector3.new(-1800.0979, 16.4978027, 1684.52368)).Magnitude <= 10)
                            wait(1)
                            repeat
                                topos(CFrame.new(-1819.26343, 14.795166, 1717.90625))
                                wait()
                            until not _G.Bartilo or
                                ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position -
                                    Vector3.new(-1819.26343, 14.795166, 1717.90625)).Magnitude <= 10)
                            wait(1)
                            repeat
                                topos(CFrame.new(-1813.51843, 14.8604736, 1724.79541))
                                wait()
                            until not _G.Bartilo or
                                ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position -
                                    Vector3.new(-1813.51843, 14.8604736, 1724.79541)).Magnitude <= 10)
                        end
                    end
                end
            end
        )
    end
)
v104:Seperator("Kính Thiên Nga")
v104:Toggle(
    "Lấy Kính Thiên Nga",
    _G.FarmSwanGlasses,
    function(v606)
        _G.FarmSwanGlasses = v606
        StopTween(_G.FarmSwanGlasses)
    end
)
spawn(
    function()
        pcall(
            function()
                while wait() do
                    if _G.FarmSwanGlasses then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Don Swan") then
                            for v2337, v2338 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if
                                    ((v2338.Name == "Don Swan") and (v2338.Humanoid.Health > 0) and v2338:IsA("Model") and
                                        v2338:FindFirstChild("Humanoid") and
                                        v2338:FindFirstChild("HumanoidRootPart"))
                                 then
                                    repeat
                                        task.wait()
                                        pcall(
                                            function()
                                                AutoHaki()
                                                EquipWeapon(_G.SelectWeapon)
                                                v2338.HumanoidRootPart.CanCollide = false
                                                v2338.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                                topos(v2338.HumanoidRootPart.CFrame * Pos)
                                                sethiddenproperty(
                                                    game:GetService("Players").LocalPlayer,
                                                    "SimulationRadius",
                                                    math.huge
                                                )
                                            end
                                        )
                                    until (_G.FarmSwanGlasses == false) or (v2338.Humanoid.Health <= 0)
                                end
                            end
                        else
                            repeat
                                task.wait()
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "requestEntrance",
                                    Vector3.new(2284.912109375, 15.537666320801, 905.48291015625)
                                )
                            until ((CFrame.new(2284.912109375, 15.537666320801, 905.48291015625).Position -
                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                4) or (_G.FarmSwanGlasses == false)
                        end
                    end
                end
            end
        )
    end
)
v104:Toggle(
    "Kính Thiên Nga Đổi Sever",
    _G.FarmSwanGlasses_Hop,
    function(v607)
        _G.FarmSwanGlasses_Hop = v607
    end
)
v104:Toggle(
    "Tự Động Nâng Tộc V2",
    _G.EvoRace,
    function(v608)
        _G.EvoRace = v608
        StopTween(_G.EvoRace)
    end
)
spawn(
    function()
        pcall(
            function()
                while wait(0.1) do
                    if _G.EvoRace then
                        if not game:GetService("Players").LocalPlayer.Data.Race:FindFirstChild("Evolved") then
                            if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "1") == 0) then
                                topos(
                                    CFrame.new(
                                        -2779.83521,
                                        72.9661407,
                                        -3574.02002,
                                        -0.730484903,
                                        6.390141e-8,
                                        -0.68292886,
                                        3.5996322e-8,
                                        1,
                                        5.5066703e-8,
                                        0.68292886,
                                        1.5642467e-8,
                                        -0.730484903
                                    )
                                )
                                if
                                    ((Vector3.new(-2779.83521, 72.9661407, -3574.02002) -
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                        4)
                                 then
                                    wait(1.3)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "2")
                                end
                            elseif
                                (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "1") == 1)
                             then
                                pcall(
                                    function()
                                        if
                                            (not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                                                "Flower 1"
                                            ) and
                                                not game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                                                    "Flower 1"
                                                ))
                                         then
                                            topos(game:GetService("Workspace").Flower1.CFrame)
                                        elseif
                                            (not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                                                "Flower 2"
                                            ) and
                                                not game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                                                    "Flower 2"
                                                ))
                                         then
                                            topos(game:GetService("Workspace").Flower2.CFrame)
                                        elseif
                                            (not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                                                "Flower 3"
                                            ) and
                                                not game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                                                    "Flower 3"
                                                ))
                                         then
                                            if game:GetService("Workspace").Enemies:FindFirstChild("Zombie") then
                                                for v3094, v3095 in pairs(
                                                    game:GetService("Workspace").Enemies:GetChildren()
                                                ) do
                                                    if (v3095.Name == "Zombie") then
                                                        repeat
                                                            task.wait()
                                                            AutoHaki()
                                                            EquipWeapon(_G.SelectWeapon)
                                                            topos(v3095.HumanoidRootPart.CFrame * Pos)
                                                            v3095.HumanoidRootPart.CanCollide = false
                                                            v3095.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                                            PosMonEvo = v3095.HumanoidRootPart.CFrame
                                                            StartEvoMagnet = true
                                                        until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                                                            "Flower 3"
                                                        ) or
                                                            not v3095.Parent or
                                                            (v3095.Humanoid.Health <= 0) or
                                                            (_G.EvoRace == false)
                                                        StartEvoMagnet = false
                                                    end
                                                end
                                            else
                                                StartEvoMagnet = false
                                                topos(CFrame.new(-5685.9233398438, 48.480125427246, -853.23724365234))
                                            end
                                        end
                                    end
                                )
                            elseif
                                (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "1") == 2)
                             then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "3")
                            end
                        end
                    end
                end
            end
        )
    end
)
v104:Seperator("Vật Chất Kì Dị")
v104:Toggle(
    "Cày Vật Chất Kì Dị",
    _G.Ectoplasm,
    function(v609)
        _G.Ectoplasm = v609
        StopTween(_G.Ectoplasm)
    end
)
spawn(
    function()
        pcall(
            function()
                while wait() do
                    if _G.Ectoplasm then
                        if
                            (game:GetService("Workspace").Enemies:FindFirstChild("Ship Deckhand") or
                                game:GetService("Workspace").Enemies:FindFirstChild("Ship Engineer") or
                                game:GetService("Workspace").Enemies:FindFirstChild("Ship Steward") or
                                game:GetService("Workspace").Enemies:FindFirstChild("Ship Officer"))
                         then
                            for v2339, v2340 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if
                                    ((v2340.Name == "Ship Deckhand") or (v2340.Name == "Ship Engineer") or
                                        (v2340.Name == "Ship Steward") or
                                        (v2340.Name == "Ship Officer"))
                                 then
                                    repeat
                                        task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        AutoHaki()
                                        if string.find(v2340.Name, "Ship") then
                                            v2340.HumanoidRootPart.CanCollide = false
                                            v2340.Head.CanCollide = false
                                            v2340.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                            topos(v2340.HumanoidRootPart.CFrame * Pos)
                                            EctoplasmMon = v2340.HumanoidRootPart.CFrame
                                            StartEctoplasmMagnet = true
                                        else
                                            StartEctoplasmMagnet = false
                                            topos(CFrame.new(911.35827636719, 125.95812988281, 33159.5390625))
                                        end
                                    until (_G.Ectoplasm == false) or not v2340.Parent or (v2340.Humanoid.Health <= 0)
                                end
                            end
                        else
                            topos(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                            StartEctoplasmMagnet = false
                            local v2158 =
                                (Vector3.new(911.35827636719, 125.95812988281, 33159.5390625) -
                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                            if (v2158 > 18000) then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "requestEntrance",
                                    Vector3.new(923.21252441406, 126.9760055542, 32852.83203125)
                                )
                            end
                            topos(CFrame.new(911.35827636719, 125.95812988281, 33159.5390625))
                        end
                    end
                end
            end
        )
    end
)
v104:Seperator("Rengoku")
v104:Toggle(
    "Lấy Rengoku",
    _G.Rengoku,
    function(v610)
        _G.Rengoku = v610
        StopTween(_G.Rengoku)
    end
)
spawn(
    function()
        pcall(
            function()
                while wait() do
                    if _G.Rengoku then
                        if
                            (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hidden Key"))
                         then
                            EquipWeapon("Hidden Key")
                            topos(CFrame.new(6571.1201171875, 299.23028564453, -6967.841796875))
                        elseif
                            (game:GetService("Workspace").Enemies:FindFirstChild("Snow Lurker") or
                                game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior"))
                         then
                            for v2636, v2637 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if
                                    (((v2637.Name == "Snow Lurker") or (v2637.Name == "Arctic Warrior")) and
                                        (v2637.Humanoid.Health > 0))
                                 then
                                    repeat
                                        task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        AutoHaki()
                                        v2637.HumanoidRootPart.CanCollide = false
                                        v2637.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                        RengokuMon = v2637.HumanoidRootPart.CFrame
                                        topos(v2637.HumanoidRootPart.CFrame * Pos)
                                        StartRengokuMagnet = true
                                    until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or
                                        (_G.Rengoku == false) or
                                        not v2637.Parent or
                                        (v2637.Humanoid.Health <= 0)
                                    StartRengokuMagnet = false
                                end
                            end
                        else
                            StartRengokuMagnet = false
                            topos(CFrame.new(5439.716796875, 84.420944213867, -6715.1635742188))
                        end
                    end
                end
            end
        )
    end
)
v104:Seperator("Trident")
v104:Toggle(
    "Lấy Dragon Trident",
    _G.Dragon_Trident,
    function(v611)
        _G.Dragon_Trident = v611
        StopTween(_G.Dragon_Trident)
    end
)
v104:Toggle(
    "Lấy Dragon Trident Đổi Sever",
    _G.Dragon_Trident_Hop,
    function(v612)
        _G.Dragon_Trident_Hop = v612
    end
)
local v136 = CFrame.new(-3914.830322265625, 123.29389190673828, -11516.8642578125)
spawn(
    function()
        while wait() do
            if (_G.Dragon_Trident and World2) then
                pcall(
                    function()
                        if game:GetService("Workspace").Enemies:FindFirstChild("Tide Keeper") then
                            for v2341, v2342 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if (v2342.Name == "Tide Keeper") then
                                    if
                                        (v2342:FindFirstChild("Humanoid") and v2342:FindFirstChild("HumanoidRootPart") and
                                            (v2342.Humanoid.Health > 0))
                                     then
                                        repeat
                                            task.wait()
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            v2342.HumanoidRootPart.CanCollide = false
                                            v2342.Humanoid.WalkSpeed = 0
                                            v2342.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                        until not _G.Dragon_Trident or not v2342.Parent or (v2342.Humanoid.Health <= 0)
                                    end
                                end
                            end
                        else
                            if BypassTP then
                                if
                                    ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v136.Position).Magnitude >
                                        3500)
                                 then
                                    BTP(v136)
                                elseif
                                    ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v136.Position).Magnitude <
                                        3500)
                                 then
                                    topos(v136)
                                end
                            else
                                topos(v136)
                            end
                            UnEquipWeapon(_G.SelectWeapon)
                            topos(CFrame.new(-3914.830322265625, 123.29389190673828, -11516.8642578125))
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper") then
                                topos(
                                    game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper").HumanoidRootPart.CFrame *
                                        CFrame.new(2, 20, 2)
                                )
                            elseif _G.Dragon_Trident_Hop then
                                Hop()
                            end
                        end
                    end
                )
            end
        end
    end
)
v104:Label("Biển 3")
v104:Seperator("Rip Indra")
v104:Toggle(
    "Đánh Rip_Indra True",
    _G.DarkDagger,
    function(v613)
        _G.DarkDagger = v613
        StopTween(_G.DarkDagger)
    end
)
local v137 = CFrame.new(-5344.822265625, 423.98541259766, -2725.0930175781)
spawn(
    function()
        pcall(
            function()
                while wait() do
                    if _G.DarkDagger then
                        if
                            (game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form") or
                                game:GetService("Workspace").Enemies:FindFirstChild("rip_indra"))
                         then
                            for v2343, v2344 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if
                                    ((v2344.Name == ("rip_indra True Form" or (v2344.Name == "rip_indra"))) and
                                        (v2344.Humanoid.Health > 0) and
                                        v2344:IsA("Model") and
                                        v2344:FindFirstChild("Humanoid") and
                                        v2344:FindFirstChild("HumanoidRootPart"))
                                 then
                                    repeat
                                        task.wait()
                                        pcall(
                                            function()
                                                AutoHaki()
                                                EquipWeapon(_G.SelectWeapon)
                                                v2344.HumanoidRootPart.CanCollide = false
                                                v2344.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                                topos(v2344.HumanoidRootPart.CFrame * Pos)
                                            end
                                        )
                                    until (_G.DarkDagger == false) or (v2344.Humanoid.Health <= 0)
                                end
                            end
                        else
                            if BypassTP then
                                if
                                    ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v137.Position).Magnitude >
                                        3500)
                                 then
                                    BTP(v137)
                                elseif
                                    ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v137.Position).Magnitude <
                                        3500)
                                 then
                                    topos(v137)
                                end
                            else
                                topos(v137)
                            end
                            UnEquipWeapon(_G.SelectWeapon)
                            topos(CFrame.new(-5344.822265625, 423.98541259766, -2725.0930175781))
                        end
                    end
                end
            end
        )
    end
)
v104:Toggle(
    "Rip_Indra True Đổi Sever",
    _G.DarkDagger_Hop,
    function(v614)
        _G.DarkDagger_Hop = v614
    end
)
spawn(
    function()
        pcall(
            function()
                while wait() do
                    if
                        (_G.DarkDagger_Hop and _G.DarkDagger and World3 and
                            not game:GetService("ReplicatedStorage"):FindFirstChild(
                                "rip_indra True Form [Lv. 5000] [Raid Boss]"
                            ) and
                            not game:GetService("Workspace").Enemies:FindFirstChild(
                                "rip_indra True Form [Lv. 5000] [Raid Boss]"
                            ))
                     then
                        Hop()
                    end
                end
            end
        )
    end
)
v104:Toggle(
    "Tự động nhấn nút Haki",
    _G.Ob_Color,
    function(v615)
        Open_Color_Haki = v615
        StopTween(Open_Color_Haki)
    end
)
spawn(
    function()
        while wait(0.3) do
            pcall(
                function()
                    if Open_Color_Haki then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor", "Winter Sky")
                        wait(0.5)
                        repeat
                            topos(CFrame.new(-5420.16602, 1084.9657, -2666.8208))
                            wait()
                        until (_G.StopTween == true) or (Open_Color_Haki == false) or
                            ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                                Vector3.new(-5420.16602, 1084.9657, -2666.8208)).Magnitude <= 10)
                        wait(0.5)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor", "Pure Red")
                        wait(0.5)
                        repeat
                            topos(CFrame.new(-5414.41357, 309.865753, -2212.45776))
                            wait()
                        until (_G.StopTween == true) or (Open_Color_Haki == false) or
                            ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                                Vector3.new(-5414.41357, 309.865753, -2212.45776)).Magnitude <= 10)
                        wait(0.5)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor", "Snow White")
                        wait(0.5)
                        repeat
                            topos(CFrame.new(-4971.47559, 331.565765, -3720.02954))
                            wait()
                        until (_G.StopTween == true) or (Open_Color_Haki == false) or
                            ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                                Vector3.new(-4971.47559, 331.565765, -3720.02954)).Magnitude <= 10)
                        wait(0.5)
                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 600))
                        wait(3)
                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 600))
                    end
                end
            )
        end
    end
)
function EquipAllWeapon()
    pcall(
        function()
            for v1760, v1761 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if
                    (v1761:IsA("Tool") and
                        not ((v1761.Name == "Summon Sea Beast") or (v1761.Name == "Water Body") or
                            (v1761.Name == "Awakening")))
                 then
                    local v2032 = game.Players.LocalPlayer.Backpack:FindFirstChild(v1761.Name)
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(v2032)
                    wait(1)
                end
            end
        end
    )
end
v104:Seperator("Yama")
v104:Toggle(
    "Lấy Yama",
    _G.Yama,
    function(v616)
        _G.Yama = v616
        StopTween(_G.Yama)
    end
)
spawn(
    function()
        while wait() do
            if _G.Yama then
                if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter", "Progress") >= 30) then
                    repeat
                        wait(0.1)
                        fireclickdetector(game:GetService("Workspace").Map.Waterfall.SealedKatana.Handle.ClickDetector)
                    until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Yama") or not _G.Yama
                end
            end
        end
    end
)
v104:Seperator("Musketeer")
v104:Toggle(
    "Lấy Musketeer Hat",
    _G.MusketeerHat,
    function(v617)
        _G.MusketeerHat = v617
        StopTween(_G.MusketeerHat)
    end
)
spawn(
    function()
        pcall(
            function()
                while wait(0.1) do
                    if _G.MusketeerHat then
                        if
                            ((game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800) and
                                (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "CitizenQuestProgress"
                                ).KilledBandits == false))
                         then
                            if
                                (string.find(
                                    game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,
                                    "Forest Pirate"
                                ) and
                                    string.find(
                                        game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,
                                        "50"
                                    ) and
                                    (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true))
                             then
                                if game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate") then
                                    for v2801, v2802 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if (v2802.Name == "Forest Pirate") then
                                            repeat
                                                task.wait()
                                                pcall(
                                                    function()
                                                        EquipWeapon(_G.SelectWeapon)
                                                        AutoHaki()
                                                        v2802.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                                        topos(v2802.HumanoidRootPart.CFrame * Pos)
                                                        v2802.HumanoidRootPart.CanCollide = false
                                                        MusketeerHatMon = v2802.HumanoidRootPart.CFrame
                                                        StartMagnetMusketeerhat = true
                                                    end
                                                )
                                            until (_G.MusketeerHat == false) or not v2802.Parent or
                                                (v2802.Humanoid.Health <= 0) or
                                                (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible ==
                                                    false)
                                            StartMagnetMusketeerhat = false
                                        end
                                    end
                                else
                                    StartMagnetMusketeerhat = false
                                    topos(CFrame.new(-13206.452148438, 425.89199829102, -7964.5537109375))
                                end
                            else
                                topos(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))
                                if
                                    ((Vector3.new(-12443.8671875, 332.40396118164, -7675.4892578125) -
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                        30)
                                 then
                                    wait(1.5)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                        "StartQuest",
                                        "CitizenQuest",
                                        1
                                    )
                                end
                            end
                        elseif
                            ((game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800) and
                                (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "CitizenQuestProgress"
                                ).KilledBoss == false))
                         then
                            if
                                (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible and
                                    string.find(
                                        game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,
                                        "Captain Elephant"
                                    ) and
                                    (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true))
                             then
                                if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then
                                    for v2901, v2902 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if (v2902.Name == "Captain Elephant") then
                                            OldCFrameElephant = v2902.HumanoidRootPart.CFrame
                                            repeat
                                                task.wait()
                                                pcall(
                                                    function()
                                                        EquipWeapon(_G.SelectWeapon)
                                                        AutoHaki()
                                                        v2902.HumanoidRootPart.CanCollide = false
                                                        v2902.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                                        topos(v2902.HumanoidRootPart.CFrame * Pos)
                                                        v2902.HumanoidRootPart.CanCollide = false
                                                        v2902.HumanoidRootPart.CFrame = OldCFrameElephant
                                                        sethiddenproperty(
                                                            game:GetService("Players").LocalPlayer,
                                                            "SimulationRadius",
                                                            math.huge
                                                        )
                                                    end
                                                )
                                            until (_G.MusketeerHat == false) or (v2902.Humanoid.Health <= 0) or
                                                not v2902.Parent or
                                                (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible ==
                                                    false)
                                        end
                                    end
                                else
                                    topos(CFrame.new(-13374.889648438, 421.27752685547, -8225.208984375))
                                end
                            else
                                topos(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))
                                if
                                    ((CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125).Position -
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                        4)
                                 then
                                    wait(1.5)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                        "CitizenQuestProgress",
                                        "Citizen"
                                    )
                                end
                            end
                        elseif
                            ((game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800) and
                                (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "CitizenQuestProgress",
                                    "Citizen"
                                ) == 2))
                         then
                            topos(CFrame.new(-12512.138671875, 340.39279174805, -9872.8203125))
                        end
                    end
                end
            end
        )
    end
)
v104:Seperator("Twin Hook")
v104:Toggle(
    "Lấy Twin Hook",
    _G.TwinHook,
    function(v618)
        _G.TwinHook = v618
        StopTween(_G.TwinHook)
    end
)
v104:Toggle(
    "Lấy Twin Hook Đổi Sever",
    _G.TwinHook_Hop,
    function(v619)
        _G.TwinHook_Hop = v619
    end
)
local v138 = CFrame.new(-13348.0654296875, 405.8904113769531, -8570.62890625)
spawn(
    function()
        while wait() do
            if (_G.TwinHook and World3) then
                pcall(
                    function()
                        if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then
                            for v2345, v2346 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if (v2346.Name == "Captain Elephant") then
                                    if
                                        (v2346:FindFirstChild("Humanoid") and v2346:FindFirstChild("HumanoidRootPart") and
                                            (v2346.Humanoid.Health > 0))
                                     then
                                        repeat
                                            task.wait()
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            v2346.HumanoidRootPart.CanCollide = false
                                            v2346.Humanoid.WalkSpeed = 0
                                            v2346.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                            topos(v2346.HumanoidRootPart.CFrame * Pos)
                                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                        until not _G.TwinHook or not v2346.Parent or (v2346.Humanoid.Health <= 0)
                                    end
                                end
                            end
                        else
                            if BypassTP then
                                if
                                    ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v138.Position).Magnitude >
                                        3500)
                                 then
                                    BTP(v138)
                                elseif
                                    ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v138.Position).Magnitude <
                                        3500)
                                 then
                                    topos(v138)
                                end
                            else
                                topos(v138)
                            end
                            UnEquipWeapon(_G.SelectWeapon)
                            topos(CFrame.new(-13348.0654296875, 405.8904113769531, -8570.62890625))
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Captain Elephant") then
                                topos(
                                    game:GetService("ReplicatedStorage"):FindFirstChild("Captain Elephant").HumanoidRootPart.CFrame *
                                        CFrame.new(2, 20, 2)
                                )
                            elseif _G.TwinHook_Hop then
                                Hop()
                            end
                        end
                    end
                )
            end
        end
    end
)
v104:Seperator("Haki")
v104:Toggle(
    "Lấy Haki Màu",
    _G.Rainbow_Haki,
    function(v620)
        _G.Rainbow_Haki = v620
        StopTween(_G.Rainbow_Haki)
    end
)
spawn(
    function()
        pcall(
            function()
                while wait(0.1) do
                    if _G.Rainbow_Haki then
                        if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) then
                            topos(CFrame.new(-11892.0703125, 930.57672119141, -8760.1591796875))
                            if
                                ((Vector3.new(-11892.0703125, 930.57672119141, -8760.1591796875) -
                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                    30)
                             then
                                wait(1.5)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan", "Bet")
                            end
                        elseif
                            ((game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true) and
                                string.find(
                                    game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,
                                    "Stone"
                                ))
                         then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Stone") then
                                for v2803, v2804 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if (v2804.Name == "Stone") then
                                        OldCFrameRainbow = v2804.HumanoidRootPart.CFrame
                                        repeat
                                            task.wait()
                                            EquipWeapon(_G.SelectWeapon)
                                            topos(v2804.HumanoidRootPart.CFrame * Pos)
                                            v2804.HumanoidRootPart.CanCollide = false
                                            v2804.HumanoidRootPart.CFrame = OldCFrameRainbow
                                            v2804.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                            sethiddenproperty(
                                                game:GetService("Players").LocalPlayer,
                                                "SimulationRadius",
                                                math.huge
                                            )
                                        until (_G.Rainbow_Haki == false) or (v2804.Humanoid.Health <= 0) or
                                            not v2804.Parent or
                                            (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible ==
                                                false)
                                    end
                                end
                            else
                                topos(
                                    CFrame.new(
                                        -1086.11621,
                                        38.8425903,
                                        6768.71436,
                                        0.0231462717,
                                        -0.592676699,
                                        0.805107772,
                                        0.000020325184,
                                        0.805323839,
                                        0.592835128,
                                        -0.999732077,
                                        -0.0137055516,
                                        0.0186523199
                                    )
                                )
                            end
                        elseif
                            ((game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true) and
                                string.find(
                                    game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,
                                    "Island Empress"
                                ))
                         then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Island Empress") then
                                for v2904, v2905 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if (v2905.Name == "Island Empress") then
                                        OldCFrameRainbow = v2905.HumanoidRootPart.CFrame
                                        repeat
                                            task.wait()
                                            EquipWeapon(_G.SelectWeapon)
                                            topos(v2905.HumanoidRootPart.CFrame * Pos)
                                            v2905.HumanoidRootPart.CanCollide = false
                                            v2905.HumanoidRootPart.CFrame = OldCFrameRainbow
                                            v2905.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                            sethiddenproperty(
                                                game:GetService("Players").LocalPlayer,
                                                "SimulationRadius",
                                                math.huge
                                            )
                                        until (_G.Rainbow_Haki == false) or (v2905.Humanoid.Health <= 0) or
                                            not v2905.Parent or
                                            (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible ==
                                                false)
                                    end
                                end
                            else
                                topos(
                                    CFrame.new(
                                        5713.98877,
                                        601.922974,
                                        202.751251,
                                        -0.101080291,
                                        "-0",
                                        -0.994878292,
                                        "-0",
                                        1,
                                        "-0",
                                        0.994878292,
                                        0,
                                        -0.101080291
                                    )
                                )
                            end
                        elseif
                            string.find(
                                game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,
                                "Kilo Admiral"
                            )
                         then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Kilo Admiral") then
                                for v3028, v3029 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if (v3029.Name == "Kilo Admiral") then
                                        OldCFrameRainbow = v3029.HumanoidRootPart.CFrame
                                        repeat
                                            task.wait()
                                            EquipWeapon(_G.SelectWeapon)
                                            topos(v3029.HumanoidRootPart.CFrame * Pos)
                                            v3029.HumanoidRootPart.CanCollide = false
                                            v3029.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                            v3029.HumanoidRootPart.CFrame = OldCFrameRainbow
                                            sethiddenproperty(
                                                game:GetService("Players").LocalPlayer,
                                                "SimulationRadius",
                                                math.huge
                                            )
                                        until (_G.Rainbow_Haki == false) or (v3029.Humanoid.Health <= 0) or
                                            not v3029.Parent or
                                            (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible ==
                                                false)
                                    end
                                end
                            else
                                topos(
                                    CFrame.new(
                                        2877.61743,
                                        423.558685,
                                        -7207.31006,
                                        -0.989591599,
                                        "-0",
                                        -0.143904909,
                                        "-0",
                                        1.00000012,
                                        "-0",
                                        0.143904924,
                                        0,
                                        -0.989591479
                                    )
                                )
                            end
                        elseif
                            string.find(
                                game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,
                                "Captain Elephant"
                            )
                         then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then
                                for v3071, v3072 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if (v3072.Name == "Captain Elephant") then
                                        OldCFrameRainbow = v3072.HumanoidRootPart.CFrame
                                        repeat
                                            task.wait()
                                            EquipWeapon(_G.SelectWeapon)
                                            topos(v3072.HumanoidRootPart.CFrame * Pos)
                                            v3072.HumanoidRootPart.CanCollide = false
                                            v3072.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                            v3072.HumanoidRootPart.CFrame = OldCFrameRainbow
                                            sethiddenproperty(
                                                game:GetService("Players").LocalPlayer,
                                                "SimulationRadius",
                                                math.huge
                                            )
                                        until (_G.Rainbow_Haki == false) or (v3072.Humanoid.Health <= 0) or
                                            not v3072.Parent or
                                            (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible ==
                                                false)
                                    end
                                end
                            else
                                topos(
                                    CFrame.new(
                                        -13485.0283,
                                        331.709259,
                                        -8012.4873,
                                        0.714521289,
                                        7.988499e-8,
                                        0.69961375,
                                        -1.0206575e-7,
                                        1,
                                        -9.943831e-9,
                                        -0.69961375,
                                        -6.4301524e-8,
                                        0.714521289
                                    )
                                )
                            end
                        elseif
                            string.find(
                                game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,
                                "Beautiful Pirate"
                            )
                         then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate") then
                                for v3090, v3091 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if (v3091.Name == "Beautiful Pirate") then
                                        OldCFrameRainbow = v3091.HumanoidRootPart.CFrame
                                        repeat
                                            task.wait()
                                            EquipWeapon(_G.SelectWeapon)
                                            topos(v3091.HumanoidRootPart.CFrame * Pos)
                                            v3091.HumanoidRootPart.CanCollide = false
                                            v3091.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                            v3091.HumanoidRootPart.CFrame = OldCFrameRainbow
                                            sethiddenproperty(
                                                game:GetService("Players").LocalPlayer,
                                                "SimulationRadius",
                                                math.huge
                                            )
                                        until (_G.Rainbow_Haki == false) or (v3091.Humanoid.Health <= 0) or
                                            not v3091.Parent or
                                            (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible ==
                                                false)
                                    end
                                end
                            else
                                topos(CFrame.new(5312.3598632813, 20.141201019287, -10.158538818359))
                            end
                        else
                            topos(CFrame.new(-11892.0703125, 930.57672119141, -8760.1591796875))
                            if
                                ((Vector3.new(-11892.0703125, 930.57672119141, -8760.1591796875) -
                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                    30)
                             then
                                wait(1.5)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan", "Bet")
                            end
                        end
                    end
                end
            end
        )
    end
)
v104:Toggle(
    "Lấy Haki Quan Sát V2",
    _G.Observationv2,
    function(v621)
        _G.Observationv2 = v621
        StopTween(_G.Observationv2)
    end
)
spawn(
    function()
        while wait() do
            pcall(
                function()
                    if _G.Observationv2 then
                        if
                            (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "CitizenQuestProgress",
                                "Citizen"
                            ) == 3)
                         then
                            _G.MusketeerHat = false
                            if
                                (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Banana") and
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Apple") and
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Pineapple"))
                             then
                                repeat
                                    topos(CFrame.new(-12444.78515625, 332.40396118164, -7673.1806640625))
                                    wait()
                                until not _G.Observationv2 or
                                    ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position -
                                        Vector3.new(-12444.78515625, 332.40396118164, -7673.1806640625)).Magnitude <= 10)
                                wait(0.5)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "CitizenQuestProgress",
                                    "Citizen"
                                )
                            elseif
                                (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fruit Bowl") or
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fruit Bowl"))
                             then
                                repeat
                                    topos(CFrame.new(-10920.125, 624.20275878906, -10266.995117188))
                                    wait()
                                until not _G.Observationv2 or
                                    ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position -
                                        Vector3.new(-10920.125, 624.20275878906, -10266.995117188)).Magnitude <= 10)
                                wait(0.5)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2", "Start")
                                wait(1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2", "Buy")
                            else
                                for v2805, v2806 in pairs(game:GetService("Workspace"):GetDescendants()) do
                                    if
                                        ((v2806.Name == "Apple") or (v2806.Name == "Banana") or
                                            (v2806.Name == "Pineapple"))
                                     then
                                        v2806.Handle.CFrame =
                                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame *
                                            CFrame.new(0, 1, 10)
                                        wait()
                                        firetouchinterest(
                                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
                                            v2806.Handle,
                                            0
                                        )
                                        wait()
                                    end
                                end
                            end
                        else
                            _G.MusketeerHat = true
                        end
                    end
                end
            )
        end
    end
)
v104:Seperator("Carvander")
v104:Toggle(
    "Lấy Cavander",
    _G.Carvender,
    function(v622)
        _G.Carvender = v622
        StopTween(_G.Carvender)
    end
)
v104:Toggle(
    "Lấy Carvander Đổi Sever",
    _G.Carvenderhop,
    function(v623)
        _G.Carvenderhop = v623
    end
)
local v139 = CFrame.new(5311.07421875, 426.0243835449219, 165.12762451171875)
spawn(
    function()
        while wait() do
            if (_G.Carvender and World3) then
                pcall(
                    function()
                        if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate") then
                            for v2347, v2348 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if (v2348.Name == "Beautiful Pirate") then
                                    if
                                        (v2348:FindFirstChild("Humanoid") and v2348:FindFirstChild("HumanoidRootPart") and
                                            (v2348.Humanoid.Health > 0))
                                     then
                                        repeat
                                            task.wait()
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            v2348.HumanoidRootPart.CanCollide = false
                                            v2348.Humanoid.WalkSpeed = 0
                                            v2348.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                            topos(v2348.HumanoidRootPart.CFrame * Pos)
                                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                        until not _G.Carvender or not v2348.Parent or (v2348.Humanoid.Health <= 0)
                                    end
                                end
                            end
                        else
                            if BypassTP then
                                if
                                    ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v139.Position).Magnitude >
                                        3500)
                                 then
                                    BTP(v139)
                                elseif
                                    ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v139.Position).Magnitude <
                                        3500)
                                 then
                                    topos(v139)
                                end
                            else
                                topos(v139)
                            end
                            UnEquipWeapon(_G.SelectWeapon)
                            topos(CFrame.new(5311.07421875, 426.0243835449219, 165.12762451171875))
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Beautiful Pirate") then
                                topos(
                                    game:GetService("ReplicatedStorage"):FindFirstChild("Beautiful Pirate").HumanoidRootPart.CFrame *
                                        CFrame.new(2, 20, 2)
                                )
                            elseif _G.Cavanderhop then
                                Hop()
                            end
                        end
                    end
                )
            end
        end
    end
)
v104:Seperator("Tushita")
v104:Toggle(
    "Lấy Tushita",
    _G.tushita,
    function(v624)
        _G.tushita = v624
        StopTween(_G.tushita)
    end
)
v104:Toggle(
    "Lấy Tushita Đổi Sever",
    _G.tushitahop,
    function(v625)
        _G.tushitahop = v625
    end
)
local v140 = CFrame.new(-10238.875976563, 389.7912902832, -9549.7939453125)
spawn(
    function()
        while wait() do
            if (_G.tushita and World3) then
                pcall(
                    function()
                        if game:GetService("Workspace").Enemies:FindFirstChild("Longma") then
                            for v2349, v2350 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if (v2350.Name == "Longma") then
                                    if
                                        (v2350:FindFirstChild("Humanoid") and v2350:FindFirstChild("HumanoidRootPart") and
                                            (v2350.Humanoid.Health > 0))
                                     then
                                        repeat
                                            task.wait()
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            v2350.HumanoidRootPart.CanCollide = false
                                            v2350.Humanoid.WalkSpeed = 0
                                            v2350.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                            topos(v2350.HumanoidRootPart.CFrame * Pos)
                                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                        until not _G.tushita or not v2350.Parent or (v2350.Humanoid.Health <= 0)
                                    end
                                end
                            end
                        else
                            if BypassTP then
                                if
                                    ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v140.Position).Magnitude >
                                        3500)
                                 then
                                    BTP(v140)
                                elseif
                                    ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v140.Position).Magnitude <
                                        3500)
                                 then
                                    topos(v140)
                                end
                            else
                                topos(v140)
                            end
                            UnEquipWeapon(_G.SelectWeapon)
                            topos(CFrame.new(-10238.875976563, 389.7912902832, -9549.7939453125))
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Longma") then
                                topos(
                                    game:GetService("ReplicatedStorage"):FindFirstChild("Longma").HumanoidRootPart.CFrame *
                                        CFrame.new(2, 20, 2)
                                )
                            elseif _G.tushitahop then
                                Hop()
                            end
                        end
                    end
                )
            end
        end
    end
)
v104:Seperator("Hallow Scythe")
v104:Toggle(
    "Lấy Lưỡi Hái",
    _G.FarmBossHallow,
    function(v626)
        _G.FarmBossHallow = v626
        StopTween(_G.FarmBossHallow)
    end
)
v104:Toggle(
    "Lưỡi Hái Đổi Sever",
    _G.FarmBossHallowHop,
    function(v627)
        _G.FarmBossHallowHop = v627
    end
)
spawn(
    function()
        while wait() do
            if _G.FarmBossHallow then
                pcall(
                    function()
                        if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") then
                            for v2351, v2352 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if string.find(v2352.Name, "Soul Reaper") then
                                    repeat
                                        task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        AutoHaki()
                                        v2352.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                        topos(v2352.HumanoidRootPart.CFrame * Pos)
                                        v2352.HumanoidRootPart.Transparency = 1
                                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                    until (v2352.Humanoid.Health <= 0) or (_G.FarmBossHallow == false)
                                end
                            end
                        elseif
                            (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence"))
                         then
                            repeat
                                topos(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125))
                                wait()
                            until (CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125).Position -
                                game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8
                            EquipWeapon("Hallow Essence")
                        elseif game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper") then
                            topos(
                                game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper").HumanoidRootPart.CFrame *
                                    CFrame.new(2, 20, 2)
                            )
                        elseif _G.FarmBossHallowHop then
                            Hop()
                        end
                    end
                )
            end
        end
    end
)
v104:Seperator("Buddy Sword")
v104:Toggle(
    "Lấy Kiếm Buddy",
    _G.BudySword,
    function(v628)
        _G.BudySword = v628
        StopTween(_G.BudySword)
    end
)
v104:Toggle(
    "Kiếm Buddy Đổi Sever",
    _G.BudySwordHop,
    function(v629)
        _G.BudySwordHop = v629
    end
)
local v141 = CFrame.new(-731.2034301757812, 381.5658874511719, -11198.4951171875)
spawn(
    function()
        while wait() do
            if (_G.BudySword and World3) then
                pcall(
                    function()
                        if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen") then
                            for v2353, v2354 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if (v2354.Name == "Cake Queen") then
                                    if
                                        (v2354:FindFirstChild("Humanoid") and v2354:FindFirstChild("HumanoidRootPart") and
                                            (v2354.Humanoid.Health > 0))
                                     then
                                        repeat
                                            task.wait()
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            v2354.HumanoidRootPart.CanCollide = false
                                            v2354.Humanoid.WalkSpeed = 0
                                            v2354.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                            topos(v2354.HumanoidRootPart.CFrame * Pos)
                                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                        until not _G.BudySword or not v2354.Parent or (v2354.Humanoid.Health <= 0)
                                    end
                                end
                            end
                        else
                            if BypassTP then
                                if
                                    ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v141.Position).Magnitude >
                                        3500)
                                 then
                                    BTP(v141)
                                elseif
                                    ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v141.Position).Magnitude <
                                        3500)
                                 then
                                    topos(v141)
                                end
                            else
                                topos(v141)
                            end
                            UnEquipWeapon(_G.SelectWeapon)
                            topos(CFrame.new(-731.2034301757812, 381.5658874511719, -11198.4951171875))
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen") then
                                topos(
                                    game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen").HumanoidRootPart.CFrame *
                                        CFrame.new(2, 20, 2)
                                )
                            elseif _G.BudySwordHop then
                                Hop()
                            end
                        end
                    end
                )
            end
        end
    end
)
spawn(
    function()
        while task.wait() do
            pcall(
                function()
                    if _G.BringMonster then
                        CheckQuest()
                        for v2100, v2101 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if
                                (_G.Level and StartMagnet and (v2101.Name == Mon) and
                                    ((Mon == "Factory Staff") or (Mon == "Monkey") or (Mon == "Dragon Crew Warrior") or
                                        (Mon == "Dragon Crew Archer")) and
                                    v2101:FindFirstChild("Humanoid") and
                                    v2101:FindFirstChild("HumanoidRootPart") and
                                    (v2101.Humanoid.Health > 0) and
                                    ((v2101.HumanoidRootPart.Position -
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                        250))
                             then
                                v2101.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                v2101.HumanoidRootPart.CFrame = PosMon
                                v2101.Humanoid:ChangeState(14)
                                v2101.HumanoidRootPart.CanCollide = false
                                v2101.Head.CanCollide = false
                                if v2101.Humanoid:FindFirstChild("Animator") then
                                    v2101.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            elseif
                                (_G.Level and StartMagnet and (v2101.Name == Mon) and v2101:FindFirstChild("Humanoid") and
                                    v2101:FindFirstChild("HumanoidRootPart") and
                                    (v2101.Humanoid.Health > 0) and
                                    ((v2101.HumanoidRootPart.Position -
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                        _G.BringMode))
                             then
                                v2101.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                v2101.HumanoidRootPart.CFrame = PosMon
                                v2101.Humanoid:ChangeState(14)
                                v2101.HumanoidRootPart.CanCollide = false
                                v2101.Head.CanCollide = false
                                if v2101.Humanoid:FindFirstChild("Animator") then
                                    v2101.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                            if (_G.Ectoplasm and StartEctoplasmMagnet) then
                                if
                                    (string.find(v2101.Name, "Ship") and v2101:FindFirstChild("Humanoid") and
                                        v2101:FindFirstChild("HumanoidRootPart") and
                                        (v2101.Humanoid.Health > 0) and
                                        ((v2101.HumanoidRootPart.Position - EctoplasmMon.Position).Magnitude <=
                                            _G.BringMode))
                                 then
                                    v2101.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                    v2101.HumanoidRootPart.CFrame = EctoplasmMon
                                    v2101.Humanoid:ChangeState(14)
                                    v2101.HumanoidRootPart.CanCollide = false
                                    v2101.Head.CanCollide = false
                                    if v2101.Humanoid:FindFirstChild("Animator") then
                                        v2101.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(
                                        game:GetService("Players").LocalPlayer,
                                        "SimulationRadius",
                                        math.huge
                                    )
                                end
                            end
                            if (_G.Rengoku and StartRengokuMagnet) then
                                if
                                    (((v2101.Name == "Snow Lurker") or (v2101.Name == "Arctic Warrior")) and
                                        ((v2101.HumanoidRootPart.Position - RengokuMon.Position).Magnitude <=
                                            _G.BringMode) and
                                        v2101:FindFirstChild("Humanoid") and
                                        v2101:FindFirstChild("HumanoidRootPart") and
                                        (v2101.Humanoid.Health > 0))
                                 then
                                    v2101.HumanoidRootPart.Size = Vector3.new(1500, 1500, 1500)
                                    v2101.Humanoid:ChangeState(14)
                                    v2101.HumanoidRootPart.CanCollide = false
                                    v2101.Head.CanCollide = false
                                    v2101.HumanoidRootPart.CFrame = RengokuMon
                                    if v2101.Humanoid:FindFirstChild("Animator") then
                                        v2101.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(
                                        game:GetService("Players").LocalPlayer,
                                        "SimulationRadius",
                                        math.huge
                                    )
                                end
                            end
                            if (_G.MusketeerHat and StartMagnetMusketeerhat) then
                                if
                                    ((v2101.Name == "Forest Pirate") and
                                        ((v2101.HumanoidRootPart.Position - MusketeerHatMon.Position).Magnitude <=
                                            _G.BringMode) and
                                        v2101:FindFirstChild("Humanoid") and
                                        v2101:FindFirstChild("HumanoidRootPart") and
                                        (v2101.Humanoid.Health > 0))
                                 then
                                    v2101.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                    v2101.Humanoid:ChangeState(14)
                                    v2101.HumanoidRootPart.CanCollide = false
                                    v2101.Head.CanCollide = false
                                    v2101.HumanoidRootPart.CFrame = MusketeerHatMon
                                    if v2101.Humanoid:FindFirstChild("Animator") then
                                        v2101.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(
                                        game:GetService("Players").LocalPlayer,
                                        "SimulationRadius",
                                        math.huge
                                    )
                                end
                            end
                            if (_G.ObservationHakiV2 and Mangnetcitzenmon) then
                                if
                                    ((v2101.Name == "Forest Pirate") and
                                        ((v2101.HumanoidRootPart.Position - MusketeerHatMon.Position).Magnitude <=
                                            _G.BringMode) and
                                        v2101:FindFirstChild("Humanoid") and
                                        v2101:FindFirstChild("HumanoidRootPart") and
                                        (v2101.Humanoid.Health > 0))
                                 then
                                    v2101.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                    v2101.Humanoid:ChangeState(14)
                                    v2101.HumanoidRootPart.CanCollide = false
                                    v2101.Head.CanCollide = false
                                    v2101.HumanoidRootPart.CFrame = PosHee
                                    if v2101.Humanoid:FindFirstChild("Animator") then
                                        v2101.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(
                                        game:GetService("Players").LocalPlayer,
                                        "SimulationRadius",
                                        math.huge
                                    )
                                end
                            end
                            if (_G.EvoRace and StartEvoMagnet) then
                                if
                                    ((v2101.Name == "Zombie") and
                                        ((v2101.HumanoidRootPart.Position - PosMonEvo.Position).Magnitude <=
                                            _G.BringMode) and
                                        v2101:FindFirstChild("Humanoid") and
                                        v2101:FindFirstChild("HumanoidRootPart") and
                                        (v2101.Humanoid.Health > 0))
                                 then
                                    v2101.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                    v2101.Humanoid:ChangeState(14)
                                    v2101.HumanoidRootPart.CanCollide = false
                                    v2101.Head.CanCollide = false
                                    v2101.HumanoidRootPart.CFrame = PosMonEvo
                                    if v2101.Humanoid:FindFirstChild("Animator") then
                                        v2101.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(
                                        game:GetService("Players").LocalPlayer,
                                        "SimulationRadius",
                                        math.huge
                                    )
                                end
                            end
                            if (_G.Bartilo and AutoBartiloBring) then
                                if
                                    ((v2101.Name == "Swan Pirate") and
                                        ((v2101.HumanoidRootPart.Position - PosMonBarto.Position).Magnitude <=
                                            _G.BringMode) and
                                        v2101:FindFirstChild("Humanoid") and
                                        v2101:FindFirstChild("HumanoidRootPart") and
                                        (v2101.Humanoid.Health > 0))
                                 then
                                    v2101.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                    v2101.Humanoid:ChangeState(14)
                                    v2101.HumanoidRootPart.CanCollide = false
                                    v2101.Head.CanCollide = false
                                    v2101.HumanoidRootPart.CFrame = PosMonBarto
                                    if v2101.Humanoid:FindFirstChild("Animator") then
                                        v2101.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(
                                        game:GetService("Players").LocalPlayer,
                                        "SimulationRadius",
                                        math.huge
                                    )
                                end
                            end
                            if (_G.FarmFruitMastery and StartMasteryFruitMagnet) then
                                if (v2101.Name == "Monkey") then
                                    if
                                        (((v2101.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <=
                                            _G.BringMode) and
                                            v2101:FindFirstChild("Humanoid") and
                                            v2101:FindFirstChild("HumanoidRootPart") and
                                            (v2101.Humanoid.Health > 0))
                                     then
                                        v2101.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                        v2101.Humanoid:ChangeState(14)
                                        v2101.HumanoidRootPart.CanCollide = false
                                        v2101.Head.CanCollide = false
                                        v2101.HumanoidRootPart.CFrame = PosMonMasteryFruit
                                        if v2101.Humanoid:FindFirstChild("Animator") then
                                            v2101.Humanoid.Animator:Destroy()
                                        end
                                        sethiddenproperty(
                                            game:GetService("Players").LocalPlayer,
                                            "SimulationRadius",
                                            math.huge
                                        )
                                    end
                                elseif (v2101.Name == "Factory Staff") then
                                    if
                                        (((v2101.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <=
                                            _G.BringMode) and
                                            v2101:FindFirstChild("Humanoid") and
                                            v2101:FindFirstChild("HumanoidRootPart") and
                                            (v2101.Humanoid.Health > 0))
                                     then
                                        v2101.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                        v2101.Humanoid:ChangeState(14)
                                        v2101.HumanoidRootPart.CanCollide = false
                                        v2101.Head.CanCollide = false
                                        v2101.HumanoidRootPart.CFrame = PosMonMasteryFruit
                                        if v2101.Humanoid:FindFirstChild("Animator") then
                                            v2101.Humanoid.Animator:Destroy()
                                        end
                                        sethiddenproperty(
                                            game:GetService("Players").LocalPlayer,
                                            "SimulationRadius",
                                            math.huge
                                        )
                                    end
                                elseif (v2101.Name == Mon) then
                                    if
                                        (((v2101.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <=
                                            _G.BringMode) and
                                            v2101:FindFirstChild("Humanoid") and
                                            v2101:FindFirstChild("HumanoidRootPart") and
                                            (v2101.Humanoid.Health > 0))
                                     then
                                        v2101.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                        v2101.Humanoid:ChangeState(14)
                                        v2101.HumanoidRootPart.CanCollide = false
                                        v2101.Head.CanCollide = false
                                        v2101.HumanoidRootPart.CFrame = PosMonMasteryFruit
                                        if v2101.Humanoid:FindFirstChild("Animator") then
                                            v2101.Humanoid.Animator:Destroy()
                                        end
                                        sethiddenproperty(
                                            game:GetService("Players").LocalPlayer,
                                            "SimulationRadius",
                                            math.huge
                                        )
                                    end
                                end
                            end
                            if (_G.FarmGunMastery and StartMasteryGunMagnet) then
                                if (v2101.Name == "Monkey") then
                                    if
                                        (((v2101.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <=
                                            _G.BringMode) and
                                            v2101:FindFirstChild("Humanoid") and
                                            v2101:FindFirstChild("HumanoidRootPart") and
                                            (v2101.Humanoid.Health > 0))
                                     then
                                        v2101.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                        v2101.Humanoid:ChangeState(14)
                                        v2101.HumanoidRootPart.CanCollide = false
                                        v2101.Head.CanCollide = false
                                        v2101.HumanoidRootPart.CFrame = PosMonMasteryGun
                                        if v2101.Humanoid:FindFirstChild("Animator") then
                                            v2101.Humanoid.Animator:Destroy()
                                        end
                                        sethiddenproperty(
                                            game:GetService("Players").LocalPlayer,
                                            "SimulationRadius",
                                            math.huge
                                        )
                                    end
                                elseif (v2101.Name == "Factory Staff") then
                                    if
                                        (((v2101.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <=
                                            _G.BringMode) and
                                            v2101:FindFirstChild("Humanoid") and
                                            v2101:FindFirstChild("HumanoidRootPart") and
                                            (v2101.Humanoid.Health > 0))
                                     then
                                        v2101.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                        v2101.Humanoid:ChangeState(14)
                                        v2101.HumanoidRootPart.CanCollide = false
                                        v2101.Head.CanCollide = false
                                        v2101.HumanoidRootPart.CFrame = PosMonMasteryGun
                                        if v2101.Humanoid:FindFirstChild("Animator") then
                                            v2101.Humanoid.Animator:Destroy()
                                        end
                                        sethiddenproperty(
                                            game:GetService("Players").LocalPlayer,
                                            "SimulationRadius",
                                            math.huge
                                        )
                                    end
                                elseif (v2101.Name == Mon) then
                                    if
                                        (((v2101.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <=
                                            _G.BringMode) and
                                            v2101:FindFirstChild("Humanoid") and
                                            v2101:FindFirstChild("HumanoidRootPart") and
                                            (v2101.Humanoid.Health > 0))
                                     then
                                        v2101.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                        v2101.Humanoid:ChangeState(14)
                                        v2101.HumanoidRootPart.CanCollide = false
                                        v2101.Head.CanCollide = false
                                        v2101.HumanoidRootPart.CFrame = PosMonMasteryGun
                                        if v2101.Humanoid:FindFirstChild("Animator") then
                                            v2101.Humanoid.Animator:Destroy()
                                        end
                                        sethiddenproperty(
                                            game:GetService("Players").LocalPlayer,
                                            "SimulationRadius",
                                            math.huge
                                        )
                                    end
                                end
                            end
                            if (_G.Bone and StartMagnetBoneMon) then
                                if
                                    (((v2101.Name == "Reborn Skeleton") or (v2101.Name == "Living Zombie") or
                                        (v2101.Name == "Demonic Soul") or
                                        (v2101.Name == "Posessed Mummy")) and
                                        ((v2101.HumanoidRootPart.Position - PosMonBone.Position).Magnitude <=
                                            _G.BringMode) and
                                        v2101:FindFirstChild("Humanoid") and
                                        v2101:FindFirstChild("HumanoidRootPart") and
                                        (v2101.Humanoid.Health > 0))
                                 then
                                    v2101.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                    v2101.Humanoid:ChangeState(14)
                                    v2101.HumanoidRootPart.CanCollide = false
                                    v2101.Head.CanCollide = false
                                    v2101.HumanoidRootPart.CFrame = PosMonBone
                                    if v2101.Humanoid:FindFirstChild("Animator") then
                                        v2101.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(
                                        game:GetService("Players").LocalPlayer,
                                        "SimulationRadius",
                                        math.huge
                                    )
                                end
                            end
                            if (_G.FarmCandy and StartCandyMagnet) then
                                if
                                    (((v2101.Name == "Ice Cream Chef") or (v2101.Name == "Ice Cream Commander")) and
                                        ((v2101.HumanoidRootPart.Position - CandyMon.Position).Magnitude <= _G.BringMode) and
                                        v2101:FindFirstChild("Humanoid") and
                                        v2101:FindFirstChild("HumanoidRootPart") and
                                        (v2101.Humanoid.Health > 0))
                                 then
                                    v2101.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                    v2101.Humanoid:ChangeState(14)
                                    v2101.HumanoidRootPart.CanCollide = false
                                    v2101.Head.CanCollide = false
                                    v2101.HumanoidRootPart.CFrame = CandyMon
                                    if v2101.Humanoid:FindFirstChild("Animator") then
                                        v2101.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(
                                        game:GetService("Players").LocalPlayer,
                                        "SimulationRadius",
                                        math.huge
                                    )
                                end
                            end
                            if (StardFarm and FarmMag) then
                                if
                                    (((v2101.Name == "Cocoa Warrior") or (v2101.Name == "Chocolate Bar Battler") or
                                        (v2101.Name == "Sweet Thief") or
                                        (v2101.Name == "Candy Rebel")) and
                                        ((v2101.HumanoidRootPart.Position - PosGG.Position).Magnitude <= 250) and
                                        v2101:FindFirstChild("Humanoid") and
                                        v2101:FindFirstChild("HumanoidRootPart") and
                                        (v2101.Humanoid.Health > 0))
                                 then
                                    v2101.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                    v2101.Humanoid:ChangeState(14)
                                    v2101.HumanoidRootPart.CanCollide = false
                                    v2101.Head.CanCollide = false
                                    v2101.HumanoidRootPart.CFrame = PosGG
                                    if v2101.Humanoid:FindFirstChild("Animator") then
                                        v2101.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(
                                        game:GetService("Players").LocalPlayer,
                                        "SimulationRadius",
                                        math.huge
                                    )
                                end
                            end
                            if (_G.Farmfast and StardMag) then
                                if
                                    (((v2101.Name == "Shanda") or (v2101.Name == "Shanda")) and
                                        ((v2101.HumanoidRootPart.Position - FastMon.Position).Magnitude <= _G.BringMode) and
                                        v2101:FindFirstChild("Humanoid") and
                                        v2101:FindFirstChild("HumanoidRootPart") and
                                        (v2101.Humanoid.Health > 0))
                                 then
                                    v2101.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                    v2101.Humanoid:ChangeState(14)
                                    v2101.HumanoidRootPart.CanCollide = false
                                    v2101.Head.CanCollide = false
                                    v2101.HumanoidRootPart.CFrame = FastMon
                                    if v2101.Humanoid:FindFirstChild("Animator") then
                                        v2101.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(
                                        game:GetService("Players").LocalPlayer,
                                        "SimulationRadius",
                                        math.huge
                                    )
                                end
                            end
                            if (_G.DoughtBoss and MagnetDought) then
                                if
                                    (((v2101.Name == "Cookie Crafter") or (v2101.Name == "Cake Guard") or
                                        (v2101.Name == "Baking Staff") or
                                        (v2101.Name == "Head Baker")) and
                                        ((v2101.HumanoidRootPart.Position - PosMonDoughtOpenDoor.Position).Magnitude <=
                                            _G.BringMode) and
                                        v2101:FindFirstChild("Humanoid") and
                                        v2101:FindFirstChild("HumanoidRootPart") and
                                        (v2101.Humanoid.Health > 0))
                                 then
                                    v2101.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                    v2101.Humanoid:ChangeState(14)
                                    v2101.HumanoidRootPart.CanCollide = false
                                    v2101.Head.CanCollide = false
                                    v2101.HumanoidRootPart.CFrame = PosMonDoughtOpenDoor
                                    if v2101.Humanoid:FindFirstChild("Animator") then
                                        v2101.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(
                                        game:GetService("Players").LocalPlayer,
                                        "SimulationRadius",
                                        math.huge
                                    )
                                end
                            end
                        end
                    end
                end
            )
        end
    end
)
task.spawn(
    function()
        while true do
            wait()
            if setscriptable then
                setscriptable(game.Players.LocalPlayer, "SimulationRadius", true)
            end
            if sethiddenproperty then
                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
            end
        end
    end
)
function InMyNetWork(v630)
    if isnetworkowner then
        return isnetworkowner(v630)
    else
        if ((v630.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode) then
            return true
        end
        return false
    end
end
task.spawn(
    function()
        while task.wait() do
            pcall(
                function()
                    if (MakoriGayMag and _G.BringMonster) then
                        for v2102, v2103 in pairs(game.Workspace.Enemies:GetChildren()) do
                            if
                                (not string.find(v2103.Name, "Boss") and
                                    ((v2103.HumanoidRootPart.Position -
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                        _G.BringMode))
                             then
                                if InMyNetWork(v2103.HumanoidRootPart) then
                                    v2103.HumanoidRootPart.CFrame = PosGay
                                    v2103.Humanoid.JumpPower = 0
                                    v2103.Humanoid.WalkSpeed = 0
                                    v2103.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v2103.HumanoidRootPart.Transparency = 1
                                    v2103.HumanoidRootPart.CanCollide = false
                                    v2103.Head.CanCollide = false
                                    if v2103.Humanoid:FindFirstChild("Animator") then
                                        v2103.Humanoid.Animator:Destroy()
                                    end
                                    v2103.Humanoid:ChangeState(11)
                                    v2103.Humanoid:ChangeState(14)
                                end
                            end
                        end
                    end
                end
            )
        end
    end
)
task.spawn(
    function()
        while task.wait() do
            pcall(
                function()
                    if (Anchor and _G.BringMonster) then
                        for v2104, v2105 in pairs(game.Workspace.Enemies:GetChildren()) do
                            if
                                (not string.find(v2105.Name, "Boss") and
                                    ((v2105.HumanoidRootPart.Position -
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                        _G.BringMode))
                             then
                                if InMyNetWork(v2105.HumanoidRootPart) then
                                    v2105.HumanoidRootPart.CFrame = PosNarathiwat
                                    v2105.Humanoid.JumpPower = 0
                                    v2105.Humanoid.WalkSpeed = 0
                                    v2105.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v2105.HumanoidRootPart.Transparency = 1
                                    v2105.HumanoidRootPart.CanCollide = false
                                    v2105.Head.CanCollide = false
                                    if v2105.Humanoid:FindFirstChild("Animator") then
                                        v2105.Humanoid.Animator:Destroy()
                                    end
                                    v2105.Humanoid:ChangeState(11)
                                    v2105.Humanoid:ChangeState(14)
                                end
                            end
                        end
                    end
                end
            )
        end
    end
)
task.spawn(
    function()
        while task.wait() do
            pcall(
                function()
                    if ((_G.FarmNearest and AutoFarmNearestMagnet) or (SelectMag and _G.BringMonster)) then
                        for v2106, v2107 in pairs(game.Workspace.Enemies:GetChildren()) do
                            if
                                (not string.find(v2107.Name, "Boss") and
                                    ((v2107.HumanoidRootPart.Position -
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                        _G.BringMode))
                             then
                                if InMyNetWork(v2107.HumanoidRootPart) then
                                    v2107.HumanoidRootPart.CFrame = PosMon
                                    v2107.Humanoid.JumpPower = 0
                                    v2107.Humanoid.WalkSpeed = 0
                                    v2107.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v2107.HumanoidRootPart.Transparency = 1
                                    v2107.HumanoidRootPart.CanCollide = false
                                    v2107.Head.CanCollide = false
                                    if v2107.Humanoid:FindFirstChild("Animator") then
                                        v2107.Humanoid.Animator:Destroy()
                                    end
                                    v2107.Humanoid:ChangeState(11)
                                    v2107.Humanoid:ChangeState(14)
                                end
                            end
                        end
                    end
                end
            )
        end
    end
)
if (World1 or World2) then
    v105:Label("Hãy Qua Sea 3")
end
if World3 then
    v105:Seperator("Đảo Bí Ẩn")
    v105:Toggle(
        "Tự Động Đảo Bí Ẩn",
        _G.MysticIsland,
        function(v1762)
            _G.MysticIsland = v1762
            StopTween(_G.MysticIsland)
        end
    )
    spawn(
        function()
            pcall(
                function()
                    while wait() do
                        if _G.MysticIsland then
                            if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                                topos(
                                    CFrame.new(
                                        game:GetService("Workspace").Map.MysticIsland.Center.Position.X,
                                        500,
                                        game:GetService("Workspace").Map.MysticIsland.Center.Position.Z
                                    )
                                )
                            end
                        end
                    end
                end
            )
        end
    )
    v105:Toggle(
        "Tự Động Lái",
        AutoW,
        function(v1763)
            AutoW = v1763
        end
    )
    spawn(
        function()
            while wait() do
                pcall(
                    function()
                        if AutoW then
                            game:service("VirtualInputManager"):SendKeyEvent(true, "W", false, game)
                            wait(0.35)
                            game:service("VirtualInputManager"):SendKeyEvent(false, "W", false, game)
                            wait(1.5)
                            game:service("VirtualInputManager"):SendKeyEvent(true, "S", false, game)
                            wait(0.35)
                            game:service("VirtualInputManager"):SendKeyEvent(false, "S", false, game)
                            wait(1.5)
                        end
                    end
                )
            end
        end
    )
    v105:Toggle(
        "Auto Summon Mirage Island",
        _G.dao,
        function(v1764)
            if v1764 then
                _G.dao = true
            else
                _G.dao = false
            end
            if _G.dao then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                wait(1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(
                    -5411.22021,
                    778.609863,
                    -2682.27759,
                    0.927179396,
                    0,
                    0.374617696,
                    0,
                    1,
                    0,
                    -0.374617696,
                    0,
                    0.927179396
                )
                wait(0)
                local v2034 = {[1] = "BuyBoat", [2] = "PirateBrigade"}
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v2034))
                function two(v2108)
                    pcall(
                        function()
                            game.Players.LocalPlayer.Character.Humanoid.Sit = false
                            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
                        end
                    )
                    if
                        ((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - v2108.Position).Magnitude <=
                            200)
                     then
                        pcall(
                            function()
                                tweenz:Cancel()
                            end
                        )
                        game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.CFrame = v2108
                    else
                        local v2360 = game:service("TweenService")
                        local v2361 =
                            TweenInfo.new(
                            (game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position -
                                v2108.Position).Magnitude / 325,
                            Enum.EasingStyle.Linear
                        )
                        tween, err =
                            pcall(
                            function()
                                tweenz =
                                    v2360:Create(
                                    game.Players.LocalPlayer.Character["HumanoidRootPart"],
                                    v2361,
                                    {CFrame = v2108}
                                )
                                tweenz:Play()
                            end
                        )
                        if not tween then
                            return err
                        end
                    end
                    function _TweenCanCle()
                        tweenz:Cancel()
                    end
                end
                two(
                    CFrame.new(
                        -5100.7085,
                        29.968586,
                        -6792.45459,
                        -0.33648631,
                        -0.0396691673,
                        0.940852463,
                        -6.404617e-7,
                        0.999112308,
                        0.0421253517,
                        -0.941688359,
                        0.0141740013,
                        -0.336187631
                    )
                )
                wait(13)
                for v2109, v2110 in next, workspace.Boats.PirateBrigade:GetDescendants() do
                    if v2110.Name:find("VehicleSeat") then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v2110.CFrame
                        if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                            topos(
                                game:GetService("Workspace").Map:FindFirstChild("MysticIsland").HumanoidRootPart.CFrame *
                                    CFrame.new(0, 500, -100)
                            )
                        end
                    end
                end
            end
        end
    )
    v105:Toggle(
        "Bay Đến Chổ Bán Trái",
        _G.TPNPC,
        function(v1765)
            _G.Miragenpc = v1765
            StopTween(_G.Miragenpc)
        end
    )
    spawn(
        function()
            pcall(
                function()
                    while wait() do
                        if _G.Miragenpc then
                            if game:GetService("Workspace").NPCs:FindFirstChild("Advanced Fruit Dealer") then
                                topos(
                                    CFrame.new(
                                        game:GetService("Workspace").NPCs["Advanced Fruit Dealer"].HumanoidRootPart.Position
                                    )
                                )
                            end
                        end
                    end
                end
            )
        end
    )
    v105:Button(
        "Đến Chổ Bán Trái",
        function()
            TweenNpc()
        end
    )
    function TweenNpc()
        repeat
            wait()
        until game:GetService("Workspace").Map:FindFirstChild("MysticIsland")
        if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
            AllNPCS = getnilinstances()
            for v2111, v2112 in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
                table.insert(AllNPCS, v2112)
            end
            for v2113, v2114 in pairs(AllNPCS) do
                if (v2114.Name == "Advanced Fruit Dealer") then
                    topos(v2114.HumanoidRootPart.CFrame)
                end
            end
        end
    end
    v105:Toggle(
        "Bay Đến Bánh Răng",
        _G.TweenMGear,
        function(v1766)
            _G.TweenMGear = v1766
            StopTween(_G.TweenMGear)
        end
    )
    spawn(
        function()
            pcall(
                function()
                    while wait() do
                        if _G.TweenMGear then
                            if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                                for v2707, v2708 in pairs(game:GetService("Workspace").Map.MysticIsland:GetChildren()) do
                                    if v2708:IsA("MeshPart") then
                                        if (v2708.Material == Enum.Material.Neon) then
                                            topos(v2708.CFrame)
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            )
        end
    )
end
if World3 then
    v105:Seperator("Tộc V4")
    v105:Button(
        "Bay Đến Đỉnh Cay Đại Thụ",
        function()
            topos(CFrame.new(2947.556884765625, 2281.630615234375, -7213.54931640625))
        end
    )
    v105:Button(
        "Dịch chuyển đến đền Thờ thời gian",
        function()
            Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286, 14897, 103)
        end
    )
    v105:Button(
        "Bay Đến Cần Gạt",
        function()
            topos(CFrame.new(28575.181640625, 14936.6279296875, 72.31636810302734))
        end
    )
    v105:Button(
        "Bay Đến Chỗ Bán Bánh Răng",
        function()
            topos(CFrame.new(28981.552734375, 14888.4267578125, -120.245849609375))
        end
    )
    v105:Button(
        "Truy cập đồng hồ",
        function()
            game:GetService("Workspace").Map["Temple of Time"].DoNotEnter:Remove()
            game:GetService("Workspace").Map["Temple of Time"].ClockRoomExit:Remove()
        end
    )
    v105:Toggle(
        "Mua Bánh Răng",
        _G.Bone4,
        function(v1768)
            _G.Bone4 = v1768
            StopTween(_G.Bone4)
        end
    )
    spawn(
        function()
            pcall(
                function()
                    while wait(0.1) do
                        if _G.Bone4 then
                            local v2161 = {[1] = true}
                            local v2161 = {[1] = "UpgradeRace", [2] = "Buy"}
                            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(
                                unpack(v2161)
                            )
                        end
                    end
                end
            )
        end
    )
    v105:Button(
        "Bay Đến Tộc Của Bạn",
        function()
            Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286, 14897, 103)
            wait(0.1)
            Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286, 14897, 103)
            wait(0.1)
            Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286, 14897, 103)
            wait(0.1)
            Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286, 14897, 103)
            if (game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman") then
                Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286, 14897, 103)
                wait(0.6)
                topos(CFrame.new(28224.056640625, 14889.4267578125, -210.5872039794922))
            elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Human") then
                Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286, 14897, 103)
                wait(0.6)
                topos(CFrame.new(29237.294921875, 14889.4267578125, -206.94955444335938))
            elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Cyborg") then
                Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286, 14897, 103)
                wait(0.6)
                topos(CFrame.new(28492.4140625, 14894.4267578125, -422.1100158691406))
            elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea") then
                Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286, 14897, 103)
                wait(0.6)
                topos(CFrame.new(28967.408203125, 14918.0751953125, 234.31198120117188))
            elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Ghoul") then
                Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286, 14897, 103)
                wait(0.6)
                topos(CFrame.new(28672.720703125, 14889.1279296875, 454.5961608886719))
            elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink") then
                Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286, 14897, 103)
                wait(0.6)
                topos(CFrame.new(29020.66015625, 14889.4267578125, -379.2682800292969))
            end
        end
    )
    v105:Button(
        "Bay Đến Đồng Hồ",
        function()
            topos(CFrame.new(29551.9941, 15069.002, -85.5179291))
        end
    )
    v105:Toggle(
        "Tự Động Hoàng Thành Ải",
        false,
        function(v1770)
            _G.QuestRace = v1770
            StopTween(_G.QuestRace)
        end
    )
    spawn(
        function()
            pcall(
                function()
                    while wait() do
                        if _G.QuestRace then
                            if (game:GetService("Players").LocalPlayer.Data.Race.Value == "Human") then
                                for v2709, v2710 in pairs(game.Workspace.Enemies:GetDescendants()) do
                                    if
                                        (v2710:FindFirstChild("Humanoid") and v2710:FindFirstChild("HumanoidRootPart") and
                                            (v2710.Humanoid.Health > 0))
                                     then
                                        pcall(
                                            function()
                                                repeat
                                                    wait(0.1)
                                                    v2710.Humanoid.Health = 0
                                                    v2710.HumanoidRootPart.CanCollide = false
                                                    sethiddenproperty(
                                                        game.Players.LocalPlayer,
                                                        "SimulationRadius",
                                                        math.huge
                                                    )
                                                until not _G.QuestRace or not v2710.Parent or
                                                    (v2710.Humanoid.Health <= 0)
                                            end
                                        )
                                    end
                                end
                            elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea") then
                                for v2815, v2816 in pairs(
                                    game:GetService("Workspace").Map.SkyTrial.Model:GetDescendants()
                                ) do
                                    if (v2816.Name == "snowisland_Cylinder.081") then
                                        topos(v2816.CFrame * CFrame.new(0, 0, 0))
                                    end
                                end
                            elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman") then
                                for v2917, v2918 in pairs(
                                    game:GetService("Workspace").SeaBeasts.SeaBeast1:GetDescendants()
                                ) do
                                    if (v2918.Name == "HumanoidRootPart") then
                                        topos(v2918.CFrame * CFrame.new(PosX, PosY, PosZ))
                                        for v3057, v3058 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                            if v3058:IsA("Tool") then
                                                if (v3058.ToolTip == "Melee") then
                                                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(v3058)
                                                end
                                            end
                                        end
                                        game:GetService("VirtualInputManager"):SendKeyEvent(
                                            true,
                                            122,
                                            false,
                                            game.Players.LocalPlayer.Character.HumanoidRootPart
                                        )
                                        game:GetService("VirtualInputManager"):SendKeyEvent(
                                            false,
                                            122,
                                            false,
                                            game.Players.LocalPlayer.Character.HumanoidRootPart
                                        )
                                        wait(0.2)
                                        game:GetService("VirtualInputManager"):SendKeyEvent(
                                            true,
                                            120,
                                            false,
                                            game.Players.LocalPlayer.Character.HumanoidRootPart
                                        )
                                        game:GetService("VirtualInputManager"):SendKeyEvent(
                                            false,
                                            120,
                                            false,
                                            game.Players.LocalPlayer.Character.HumanoidRootPart
                                        )
                                        wait(0.2)
                                        game:GetService("VirtualInputManager"):SendKeyEvent(
                                            true,
                                            99,
                                            false,
                                            game.Players.LocalPlayer.Character.HumanoidRootPart
                                        )
                                        game:GetService("VirtualInputManager"):SendKeyEvent(
                                            false,
                                            99,
                                            false,
                                            game.Players.LocalPlayer.Character.HumanoidRootPart
                                        )
                                        for v3059, v3060 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                            if v3060:IsA("Tool") then
                                                if (v3060.ToolTip == "Blox Fruit") then
                                                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(v3060)
                                                end
                                            end
                                        end
                                        game:GetService("VirtualInputManager"):SendKeyEvent(
                                            true,
                                            122,
                                            false,
                                            game.Players.LocalPlayer.Character.HumanoidRootPart
                                        )
                                        game:GetService("VirtualInputManager"):SendKeyEvent(
                                            false,
                                            122,
                                            false,
                                            game.Players.LocalPlayer.Character.HumanoidRootPart
                                        )
                                        wait(0.2)
                                        game:GetService("VirtualInputManager"):SendKeyEvent(
                                            true,
                                            120,
                                            false,
                                            game.Players.LocalPlayer.Character.HumanoidRootPart
                                        )
                                        game:GetService("VirtualInputManager"):SendKeyEvent(
                                            false,
                                            120,
                                            false,
                                            game.Players.LocalPlayer.Character.HumanoidRootPart
                                        )
                                        wait(0.2)
                                        game:GetService("VirtualInputManager"):SendKeyEvent(
                                            true,
                                            99,
                                            false,
                                            game.Players.LocalPlayer.Character.HumanoidRootPart
                                        )
                                        game:GetService("VirtualInputManager"):SendKeyEvent(
                                            false,
                                            99,
                                            false,
                                            game.Players.LocalPlayer.Character.HumanoidRootPart
                                        )
                                        wait(0.5)
                                        for v3061, v3062 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                            if v3062:IsA("Tool") then
                                                if (v3062.ToolTip == "Sword") then
                                                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(v3062)
                                                end
                                            end
                                        end
                                        game:GetService("VirtualInputManager"):SendKeyEvent(
                                            true,
                                            122,
                                            false,
                                            game.Players.LocalPlayer.Character.HumanoidRootPart
                                        )
                                        game:GetService("VirtualInputManager"):SendKeyEvent(
                                            false,
                                            122,
                                            false,
                                            game.Players.LocalPlayer.Character.HumanoidRootPart
                                        )
                                        wait(0.2)
                                        game:GetService("VirtualInputManager"):SendKeyEvent(
                                            true,
                                            120,
                                            false,
                                            game.Players.LocalPlayer.Character.HumanoidRootPart
                                        )
                                        game:GetService("VirtualInputManager"):SendKeyEvent(
                                            false,
                                            120,
                                            false,
                                            game.Players.LocalPlayer.Character.HumanoidRootPart
                                        )
                                        wait(0.2)
                                        game:GetService("VirtualInputManager"):SendKeyEvent(
                                            true,
                                            99,
                                            false,
                                            game.Players.LocalPlayer.Character.HumanoidRootPart
                                        )
                                        game:GetService("VirtualInputManager"):SendKeyEvent(
                                            false,
                                            99,
                                            false,
                                            game.Players.LocalPlayer.Character.HumanoidRootPart
                                        )
                                        wait(0.5)
                                        for v3063, v3064 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                            if v3064:IsA("Tool") then
                                                if (v3064.ToolTip == "Gun") then
                                                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(v3064)
                                                end
                                            end
                                        end
                                        game:GetService("VirtualInputManager"):SendKeyEvent(
                                            true,
                                            122,
                                            false,
                                            game.Players.LocalPlayer.Character.HumanoidRootPart
                                        )
                                        game:GetService("VirtualInputManager"):SendKeyEvent(
                                            false,
                                            122,
                                            false,
                                            game.Players.LocalPlayer.Character.HumanoidRootPart
                                        )
                                        wait(0.2)
                                        game:GetService("VirtualInputManager"):SendKeyEvent(
                                            true,
                                            120,
                                            false,
                                            game.Players.LocalPlayer.Character.HumanoidRootPart
                                        )
                                        game:GetService("VirtualInputManager"):SendKeyEvent(
                                            false,
                                            120,
                                            false,
                                            game.Players.LocalPlayer.Character.HumanoidRootPart
                                        )
                                        wait(0.2)
                                        game:GetService("VirtualInputManager"):SendKeyEvent(
                                            true,
                                            99,
                                            false,
                                            game.Players.LocalPlayer.Character.HumanoidRootPart
                                        )
                                        game:GetService("VirtualInputManager"):SendKeyEvent(
                                            false,
                                            99,
                                            false,
                                            game.Players.LocalPlayer.Character.HumanoidRootPart
                                        )
                                    end
                                end
                            elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Cyborg") then
                                topos(CFrame.new(28654, 14898.7832, -30, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                            elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Ghoul") then
                                for v3073, v3074 in pairs(game.Workspace.Enemies:GetDescendants()) do
                                    if
                                        (v3074:FindFirstChild("Humanoid") and v3074:FindFirstChild("HumanoidRootPart") and
                                            (v3074.Humanoid.Health > 0))
                                     then
                                        pcall(
                                            function()
                                                repeat
                                                    wait(0.1)
                                                    v3074.Humanoid.Health = 0
                                                    v3074.HumanoidRootPart.CanCollide = false
                                                    sethiddenproperty(
                                                        game.Players.LocalPlayer,
                                                        "SimulationRadius",
                                                        math.huge
                                                    )
                                                until not _G.QuestRace or not v3074.Parent or
                                                    (v3074.Humanoid.Health <= 0)
                                            end
                                        )
                                    end
                                end
                            elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink") then
                                for v3092, v3093 in pairs(game:GetService("Workspace"):GetDescendants()) do
                                    if (v3093.Name == "StartPoint") then
                                        topos(v3093.CFrame * CFrame.new(0, 10, 0))
                                    end
                                end
                            end
                        end
                    end
                end
            )
        end
    )
    v105:Toggle(
        "Tự Động Cày Và Bậc V4",
        false,
        function(v1771)
            _G.Bone = v1771
            _G.Bone4 = v1771
            _G.ActiveV4 = v1771
            StopTween(_G.Bone)
        end
    )
    v105:Toggle(
        "Giết Người Chơi Trial",
        false,
        function(v1772)
            _G.KillAfterTrials = v1772
            _G.Click = v1772
            _G.TurnKen = v1772
            _G.AimNearest = v1772
            _G.Aimbot_Skill = v1772
            StopTween(_G.KillAfterTrials)
        end
    )
    spawn(
        function()
            while wait() do
                pcall(
                    function()
                        if _G.KillAfterTrials then
                            for v2364, v2365 in pairs(game:GetService("Workspace").Characters:GetChildren()) do
                                if
                                    ((v2365.Name ~= game.Players.LocalPlayer.Name) and
                                        ((v2365.HumanoidRootPart.Position -
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                            100))
                                 then
                                    if (v2365.Humanoid.Health > 0) then
                                        repeat
                                            wait()
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            NameTarget = v2365.Name
                                            TP1(v2365.HumanoidRootPart.CFrame * CFrame.new(0, 0, 5))
                                            v2365.HumanoidRootPart.CanCollide = false
                                            v2365.Head.CanCollide = false
                                            v2365.HumanoidRootPart.Size = Vector3.new(100, 100, 100)
                                            Click()
                                        until not _G.KillAfterTrials or not v2365.Parent or (v2365.Humanoid.Health <= 0)
                                    end
                                end
                            end
                        end
                    end
                )
            end
        end
    )
    spawn(
        function()
            while wait() do
                pcall(
                    function()
                        if _G.TurnKen then
                            repeat
                                task.wait()
                                if
                                    not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild(
                                        "ImageLabel"
                                    )
                                 then
                                    game:GetService("VirtualUser"):CaptureController()
                                    game:GetService("VirtualUser"):SetKeyDown("0x65")
                                    wait(2)
                                    game:GetService("VirtualUser"):SetKeyUp("0x65")
                                end
                            until game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild(
                                "ImageLabel"
                            ) or not _G.Observation
                        end
                    end
                )
            end
        end
    )
    v105:Toggle(
        "Tự động khóa mặt trăng",
        _G.LockCamToMoon,
        function(v1773)
            _G.LockCamToMoon = v1773
        end
    )
    function CamToMoon()
        workspace.CurrentCamera.CFrame =
            CFrame.new(
            workspace.CurrentCamera.CFrame.Position,
            game:GetService("Lighting"):GetMoonDirection() + workspace.CurrentCamera.CFrame.Position
        )
    end
    spawn(
        function()
            pcall(
                function()
                    while wait() do
                        if _G.LockCamToMoon then
                            CamToMoon()
                        end
                    end
                end
            )
        end
    )
    v105:Button(
        "Mua nhiệm vụ cổ đại",
        function(v1775)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("UpgradeRace", "Buy")
        end
    )
end
local v142 = v106:Label("Trạng Thái Đảo: ")
task.spawn(
    function()
        while task.wait() do
            pcall(
                function()
                    if game.Workspace._WorldOrigin.Locations:FindFirstChild("Prehistoric Island") then
                        v142:Set("Đảo Núi Lửa : Có!")
                    else
                        v142:Set("Đảo Núi Lửa : Không")
                    end
                end
            )
        end
    end
)
v106:Button(
    "Xoá Dung Nham Ở Đảo Núi Lửa",
    function()
        for v1042, v1043 in pairs(game.Workspace:GetDescendants()) do
            if (v1043.Name == "Lava") then
                v1043:Destroy()
            end
        end
        for v1044, v1045 in pairs(game.ReplicatedStorage:GetDescendants()) do
            if (v1045.Name == "Lava") then
                v1045:Destroy()
            end
        end
    end
)
v106:Button(
    "Lấp Năm Châm",
    function()
        local v631 = {"CraftItem", "Craft", "Volcanic Magnet"}
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v631))
    end
)
v106:Toggle(
    "Bay Đến Đảo Tiki",
    false,
    function(v632)
        _G.TpSpy = v632
        StopTween(_G.TpSpy)
        task.spawn(
            function()
                while _G.TpSpy do
                    task.wait()
                    topos(CFrame.new(-16927.451171875, 9.0863618850708, 433.8642883300781))
                end
            end
        )
    end
)
v106:Toggle(
    "Tìm Đảo Núi Lửa",
    false,
    function(v633)
        _G.AutoFindPrehistoric = v633
    end
)
local v143 = {}
local v144 = game:GetService("Players")
local v145 = game:GetService("RunService")
local v146 = game:GetService("VirtualInputManager")
local v147 = game:GetService("Workspace")
local v148 = 350
game:GetService("RunService").RenderStepped:Connect(
    function()
        for v1046, v1047 in pairs(v143) do
            if (v1047 and v1047.Parent and (v1047.Name == "VehicleSeat") and not v1047.Occupant) then
                v143[v1046] = v1047
            end
        end
    end
)
local function v149()
    for v1048, v1049 in pairs(v143) do
        if (v1049 and v1049.Parent and (v1049.Name == "VehicleSeat") and not v1049.Occupant) then
            topos(v1049.CFrame)
        end
    end
end
local v96 = false
local v150 = false
v145.RenderStepped:Connect(
    function()
        if not _G.AutoFindPrehistoric then
            v150 = false
            return
        end
        local v634 = v144.LocalPlayer
        local v635 = v634.Character
        if (not v635 or not v635:FindFirstChild("Humanoid")) then
            return
        end
        local function v636()
            if v96 then
                return
            end
            v96 = true
            for v1776, v1777 in pairs(v143) do
                if (v1777 and v1777.Parent and (v1777.Name == "VehicleSeat") and not v1777.Occupant) then
                    topos(v1777.CFrame)
                    break
                end
            end
            v96 = false
        end
        local v637 = v635.Humanoid
        local v638 = false
        local v639 = nil
        for v1050, v1051 in pairs(v147.Boats:GetChildren()) do
            local v1052 = v1051:FindFirstChild("VehicleSeat")
            if (v1052 and (v1052.Occupant == v637)) then
                v638 = true
                v639 = v1052
                v143[v1051.Name] = v1052
            elseif (v1052 and (v1052.Occupant == nil)) then
                v636()
            end
        end
        if not v638 then
            return
        end
        v639.MaxSpeed = v148
        v639.CFrame = CFrame.new(Vector3.new(v639.Position.X, v639.Position.Y, v639.Position.Z)) * v639.CFrame.Rotation
        v146:SendKeyEvent(true, "W", false, game)
        for v1053, v1054 in pairs(v147.Boats:GetDescendants()) do
            if v1054:IsA("BasePart") then
                v1054.CanCollide = false
            end
        end
        for v1055, v1056 in pairs(v635:GetDescendants()) do
            if v1056:IsA("BasePart") then
                v1056.CanCollide = false
            end
        end
        local v642 = {
            "ShipwreckIsland",
            "SandIsland",
            "TreeIsland",
            "TinyIsland",
            "MysticIsland",
            "KitsuneIsland",
            "FrozenDimension"
        }
        for v1057, v1058 in ipairs(v642) do
            local v1059 = v147.Map:FindFirstChild(v1058)
            if (v1059 and v1059:IsA("Model")) then
                v1059:Destroy()
            end
        end
        local v643 = v147.Map:FindFirstChild("PrehistoricIsland")
        if v643 then
            v146:SendKeyEvent(false, "W", false, game)
            _G.AutoFindPrehistoric = false
            if not v150 then
                v150 = true
            end
            return
        end
    end
)
v106:Toggle(
    "Bay Lại Đầu Lâu Đảo Núi Lửa",
    false,
    function(v644)
        _G.TpPrehistoric = v644
        StopTween(_G.TpPrehistoric)
    end
)
spawn(
    function()
        local v645
        while not v645 do
            v645 = game:GetService("Workspace").Map:FindFirstChild("PrehistoricIsland")
            wait()
        end
        while wait() do
            if _G.TpPrehistoric then
                local v1928 = game:GetService("Workspace").Map:FindFirstChild("PrehistoricIsland")
                if v1928 then
                    local v2115 = v1928:FindFirstChild("Core") and v1928.Core:FindFirstChild("PrehistoricRelic")
                    local v2116 = v2115 and v2115:FindFirstChild("Skull")
                    if v2116 then
                        topos(CFrame.new(v2116.Position))
                        _G.TpPrehistoric = false
                    end
                end
            end
        end
    end
)
v106:Toggle(
    "Đánh Golem",
    false,
    function(v646)
        _G.KillGolem = v646
        StopTween(_G.KillGolem)
    end
)
v106:Toggle(
    "Giết Golem Aura",
    false,
    function(v647)
        _G.Kill_Aura = v647
    end
)
spawn(
    function()
        while wait() do
            if (_G.KillGolem and World3) then
                pcall(
                    function()
                        if game:GetService("Workspace").Enemies:FindFirstChild("Lava Golem") then
                            for v2366, v2367 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if (v2367.Name == "Lava Golem") then
                                    if
                                        (v2367:FindFirstChild("Humanoid") and v2367:FindFirstChild("HumanoidRootPart") and
                                            (v2367.Humanoid.Health > 0))
                                     then
                                        repeat
                                            task.wait()
                                            AutoHaki()
                                            v2367.HumanoidRootPart.CanCollide = false
                                            v2367.Humanoid.WalkSpeed = 0
                                            v2367.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                            topos(v2367.HumanoidRootPart.CFrame * Pos)
                                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                        until not _G.KillGolem or not v2367.Parent or (v2367.Humanoid.Health <= 0)
                                    end
                                end
                            end
                        else
                            UnEquipWeapon(_G.SelectWeapon)
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Lava Golem") then
                                topos(
                                    game:GetService("ReplicatedStorage"):FindFirstChild("Lava Golem").HumanoidRootPart.CFrame *
                                        CFrame.new(2, 20, 2)
                                )
                            end
                        end
                    end
                )
            end
        end
    end
)
spawn(
    function()
        pcall(
            function()
                while wait() do
                    if _G.Kill_Aura then
                        local v2036 = game:GetService("Players").LocalPlayer
                        local v2037 = game:GetService("Workspace").Enemies:GetChildren()
                        local v2038 =
                            v2036.Character and v2036.Character:FindFirstChild("HumanoidRootPart") and
                            v2036.Character.HumanoidRootPart.Position
                        if v2038 then
                            for v2368, v2369 in pairs(v2037) do
                                if
                                    (v2369:FindFirstChild("Humanoid") and v2369:FindFirstChild("HumanoidRootPart") and
                                        (v2369.Humanoid.Health > 0))
                                 then
                                    local v2711 = (v2369.HumanoidRootPart.Position - v2038).Magnitude
                                    if (v2711 <= 1000) then
                                        pcall(
                                            function()
                                                repeat
                                                    wait()
                                                    sethiddenproperty(v2036, "SimulationRadius", math.huge)
                                                    v2369.Humanoid.Health = 0
                                                    v2369.HumanoidRootPart.CanCollide = false
                                                until not _G.Kill_Aura or not v2369.Parent or
                                                    (v2369.Humanoid.Health <= 0)
                                            end
                                        )
                                    end
                                end
                            end
                        end
                    end
                end
            end
        )
    end
)
v106:Toggle(
    "Tự Động Lấp Núi Lửa",
    false,
    function(v648)
        _G.DefendVolcano = v648
        StopTween(_G.DefendVolcano)
    end
)
local function v151(v649)
    game:GetService("VirtualInputManager"):SendKeyEvent(true, v649, false, game)
    game:GetService("VirtualInputManager"):SendKeyEvent(false, v649, false, game)
end
local function v152()
    local v650 = game.Workspace.Map.PrehistoricIsland.Core:FindFirstChild("InteriorLava")
    if (v650 and v650:IsA("Model")) then
        v650:Destroy()
    end
    local v651 = game.Workspace.Map:FindFirstChild("PrehistoricIsland")
    if v651 then
        for v1929, v1930 in pairs(v651:GetDescendants()) do
            if (v1930:IsA("Part") and v1930.Name:lower():find("lava")) then
                v1930:Destroy()
            end
        end
    end
    local v652 = game.Workspace.Map:FindFirstChild("PrehistoricIsland")
    if v652 then
        for v1931, v1932 in pairs(v652:GetDescendants()) do
            if v1932:IsA("Model") then
                for v2163, v2164 in pairs(v1932:GetDescendants()) do
                    if (v2164:IsA("MeshPart") and v2164.Name:lower():find("lava")) then
                        v2164:Destroy()
                    end
                end
            end
        end
    end
end
local function v153()
    local v653 = game.Workspace.Map.PrehistoricIsland.Core.VolcanoRocks
    for v1060, v1061 in pairs(v653:GetChildren()) do
        if v1061:IsA("Model") then
            local v1933 = v1061:FindFirstChild("volcanorock")
            if (v1933 and v1933:IsA("MeshPart")) then
                local v2117 = v1933.Color
                if ((v2117 == Color3.fromRGB(185, 53, 56)) or (v2117 == Color3.fromRGB(185, 53, 57))) then
                    return v1933
                end
            end
        end
    end
    return nil
end
local function v154(v654)
    local v655 = game.Players.LocalPlayer
    local v656 = v655.Backpack
    for v1062, v1063 in pairs(v656:GetChildren()) do
        if (v1063:IsA("Tool") and (v1063.ToolTip == v654)) then
            v1063.Parent = v655.Character
            for v2039, v2040 in ipairs({"Z", "X", "C", "V", "F"}) do
                wait()
                pcall(
                    function()
                        v151(v2040)
                    end
                )
            end
            v1063.Parent = v656
            break
        end
    end
end
spawn(
    function()
        while wait() do
            if _G.DefendVolcano then
                AutoHaki()
                pcall(v152)
                local v1936 = v153()
                if v1936 then
                    local v2118 = CFrame.new(v1936.Position)
                    topos(v2118)
                    local v2119 = v1936.Color
                    if ((v2119 ~= Color3.fromRGB(185, 53, 56)) and (v2119 ~= Color3.fromRGB(185, 53, 57))) then
                        v1936 = v153()
                    else
                        local v2370 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                        local v2371 = (v2370 - v1936.Position).Magnitude
                        if (v2371 <= 1) then
                            if _G.UseMelee then
                                v154("Melee")
                            end
                            if _G.UseSword then
                                v154("Sword")
                            end
                            if _G.UseGun then
                                v154("Gun")
                            end
                        end
                        _G.TpPrehistoric = false
                    end
                else
                    _G.TpPrehistoric = true
                end
            end
        end
    end
)
v106:Toggle(
    "Lụm Xương",
    false,
    function(v657)
        _G.CollectBone = v657
    end
)
spawn(
    function()
        while wait() do
            if _G.CollectBone then
                for v2041, v2042 in pairs(workspace:GetDescendants()) do
                    if (v2042:IsA("BasePart") and (v2042.Name == "DinoBone")) then
                        topos(CFrame.new(v2042.Position))
                    end
                end
            end
        end
    end
)
v106:Toggle(
    "Lụm Trứng",
    false,
    function(v658)
        _G.CollectEgg = v658
    end
)
spawn(
    function()
        while wait() do
            if _G.CollectEgg then
                local v1937 = workspace.Map.PrehistoricIsland.Core.SpawnedDragonEggs:GetChildren()
                if (#v1937 > 0) then
                    local v2120 = v1937[math.random(1, #v1937)]
                    if (v2120:IsA("Model") and v2120.PrimaryPart) then
                        topos(v2120.PrimaryPart.CFrame)
                        local v2372 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                        local v2373 = v2120.PrimaryPart.Position
                        local v2374 = (v2372 - v2373).Magnitude
                        if (v2374 <= 1) then
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                            wait(1.5)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false, "E", false, game)
                        end
                    end
                end
            end
        end
    end
)
v106:Seperator("Tộc Rồng")
v106:Toggle(
    "Bay Đến Cổng Tộc Rồng",
    false,
    function(v659)
        _G.AutoTrialTeleport = v659
    end
)
spawn(
    function()
        while wait() do
            if _G.AutoTrialTeleport then
                local v1938 = workspace.Map.PrehistoricIsland:FindFirstChild("TrialTeleport")
                if (v1938 and v1938:IsA("Part")) then
                    topos(CFrame.new(v1938.Position))
                    local v2121 =
                        (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v1938.Position).Magnitude
                    if (v2121 <= 1) then
                        _G.AutoTrialTeleport = false
                    end
                end
            end
        end
    end
)
v106:Toggle(
    "Bay",
    false,
    function(v660)
        if v660 then
            _G.NoClip = true
            v95(speaker, true)
        else
            _G.NoClip = false
            v94(speaker)
        end
    end
)
v106:Seperator("Cài Đặt")
v106:Toggle(
    "Sử Dụng Võ",
    true,
    function(v661)
        _G.UseMelee = v661
    end
)
v106:Toggle(
    "Sử Dụng Kiếm",
    false,
    function(v662)
        _G.UseSword = v662
    end
)
v106:Toggle(
    "Sử Dụng Súng",
    false,
    function(v663)
        _G.UseGun = v663
    end
)
v108:Seperator("Định Vị")
v108:Toggle(
    "Định Vị Người Chơi",
    false,
    function(v664)
        ESPPlayer = v664
        UpdatePlayerChams()
    end
)
v108:Toggle(
    "Định Vị Đảo Kitsune",
    false,
    function(v665)
        IslandESP = v665
        while IslandESP do
            wait()
            UpdateIslandESPKitsune()
        end
    end
)
function UpdateIslandESPKitsune()
    for v1064, v1065 in pairs(game:GetService("Workspace").Map.KitsuneIsland.ShrineActive:GetChildren()) do
        pcall(
            function()
                if IslandESP then
                    if (v1065.Name ~= "NeonShrinePart") then
                        if not v1065:FindFirstChild("IslandESP") then
                            local v2568 = Instance.new("BillboardGui", v1065)
                            v2568.Name = "IslandESP"
                            v2568.ExtentsOffset = Vector3.new(0, 1, 0)
                            v2568.Size = UDim2.new(1, 200, 1, 30)
                            v2568.Adornee = v1065
                            v2568.AlwaysOnTop = true
                            local v2574 = Instance.new("TextLabel", v2568)
                            v2574.Font = "Code"
                            v2574.FontSize = "Size14"
                            v2574.TextWrapped = true
                            v2574.Size = UDim2.new(1, 0, 1, 0)
                            v2574.TextYAlignment = "Top"
                            v2574.BackgroundTransparency = 1
                            v2574.TextStrokeTransparency = 0.5
                            v2574.TextColor3 = Color3.fromRGB(80, 245, 245)
                            v2574.Text = "Kitsune Island"
                        else
                            v1065["IslandESP"].TextLabel.Text = "Kitsune Island"
                        end
                    end
                elseif v1065:FindFirstChild("IslandESP") then
                    v1065:FindFirstChild("IslandESP"):Destroy()
                end
            end
        )
    end
end
v108:Toggle(
    "Định Vị Rương",
    false,
    function(v666)
        ChestESP = v666
        UpdateChestChams()
    end
)
v108:Toggle(
    "Định Vị Trái Ác Quỷ",
    false,
    function(v667)
        DevilFruitESP = v667
        while DevilFruitESP do
            wait()
            UpdateDevilChams()
        end
    end
)
v108:Toggle(
    "Định Vị Trái Cây",
    RealFruitESP,
    function(v668)
        RealFruitESP = v668
        UpdateRealFruitChams()
    end
)
v108:Toggle(
    "Định Vị Hoa",
    false,
    function(v669)
        FlowerESP = v669
        UpdateFlowerChams()
    end
)
spawn(
    function()
        while wait() do
            if FlowerESP then
                UpdateFlowerChams()
            end
            if DevilFruitESP then
                UpdateDevilChams()
            end
            if ChestESP then
                UpdateChestChams()
            end
            if ESPPlayer then
                UpdatePlayerChams()
            end
            if RealFruitESP then
                UpdateRealFruitChams()
            end
        end
    end
)
v108:Toggle(
    "Định Vị Đảo",
    IslandESP,
    function(v670)
        IslandESP = v670
        while IslandESP do
            wait()
            UpdateIslandESP()
        end
    end
)
v108:Toggle(
    "Định Vị Đảo Bí Ẩn",
    false,
    function(v671)
        MirageIslandESP = v671
        while MirageIslandESP do
            wait()
            UpdateIslandMirageESP()
        end
    end
)
v108:Seperator("Chơi khăm")
v108:Button(
    "Mưa Trái",
    function()
        for v1066, v1067 in pairs(game:GetObjects("rbxassetid://14759368201")[1]:GetChildren()) do
            v1067.Parent = game.Workspace.Map
            v1067:MoveTo(
                game.Players.LocalPlayer.Character.PrimaryPart.Position +
                    Vector3.new(math.random(-50, 50), 100, math.random(-50, 50))
            )
            if v1067.Fruit:FindFirstChild("AnimationController") then
                v1067.Fruit:FindFirstChild("AnimationController"):LoadAnimation(v1067.Fruit:FindFirstChild("Idle")):Play(

                )
            end
            v1067.Handle.Touched:Connect(
                function(v1778)
                    if (v1778.Parent == game.Players.LocalPlayer.Character) then
                        v1067.Parent = game.Players.LocalPlayer.Backpack
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(v1067)
                    end
                end
            )
        end
    end
)
v108:Button(
    "Làm Giả Cấp/Beli/Kinh Nghiệm",
    function()
        local v672 = game:GetService("Players").LocalPlayer
        local v673 = require(game:GetService("ReplicatedStorage").Notification)
        local v674 = v672:WaitForChild("Data")
        local v675 = require(game.ReplicatedStorage:WaitForChild("EXPFunction"))
        local v676 = require(game:GetService("ReplicatedStorage").Effect.Container.LevelUp)
        local v677 = require(game:GetService("ReplicatedStorage").Util.Sound)
        local v678 =
            game:GetService("ReplicatedStorage").Util.Sound.Storage.Other:FindFirstChild("LevelUp_Proxy") or
            game:GetService("ReplicatedStorage").Util.Sound.Storage.Other:FindFirstChild("LevelUp")
        function v129(v1070)
            local v1071 = v1070
            while true do
                local v1779, v1780 = string.gsub(v1071, "^(-?%d+)(%d%d%d)", "%1,%2")
                v1071 = v1779
                if (v1780 == 0) then
                    break
                end
            end
            return v1071
        end
        v673.new("<Color=Yellow>QUEST COMPLETED!<Color=/>"):Display()
        v673.new("Earned <Color=Yellow>9,999,999,999,999 Exp.<Color=/> (+ None)"):Display()
        v673.new("Earned <Color=Green>$9,999,999,999,999<Color=/>"):Display()
        v672.Data.Exp.Value = 999999999999
        v672.Data.Beli.Value = v672.Data.Beli.Value + 999999999999
        delay = 0
        count = 0
        while (v672.Data.Exp.Value - v675(v674.Level.Value)) > 0 do
            v672.Data.Exp.Value = v672.Data.Exp.Value - v675(v674.Level.Value)
            v672.Data.Level.Value = v672.Data.Level.Value + 1
            v672.Data.Points.Value = v672.Data.Points.Value + 3
            v676({v672})
            v677.Play(v677, v678.Value)
            v673.new("<Color=Green>LEVEL UP!<Color=/> (" .. v672.Data.Level.Value .. ")"):Display()
            count = count + 1
            if (count >= 5) then
                delay = tick()
                count = 0
                wait(2)
            end
        end
    end
)
v108:Seperator("Điểm nổi bật")
v108:Toggle(
    "Hiển thị trò chuyện",
    _G.chat,
    function(v681)
        _G.chat = v681
        if (_G.chat == true) then
            local v1781 = game:GetService("StarterGui")
            v1781:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, false)
        elseif (_G.chat == false) then
            local v2045 = game:GetService("StarterGui")
            v2045:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
        end
    end
)
v108:Toggle(
    "Hiển thị bảng xếp hạng",
    _G.leaderboard,
    function(v682)
        _G.leaderboard = v682
        if (_G.leaderboard == true) then
            local v1782 = game:GetService("StarterGui")
            game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false)
        elseif (_G.leaderboard == false) then
            local v2046 = game:GetService("StarterGui")
            game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, true)
        end
    end
)
v108:Seperator("Gian lận")
v108:Button(
    "Mở khóa Buso",
    function()
        local v683 = "Buso"
        if (type(v683) == "string") then
            game:GetService("CollectionService"):AddTag(game.Players.LocalPlayer.Character, v683)
        elseif (type(v683) == "table") then
            for v2122, v2123 in next, v683 do
                game:GetService("CollectionService"):AddTag(game.Players.LocalPlayer.Character, v2123)
            end
        end
    end
)
v108:Button(
    "Mở Khoá Soru",
    function()
        local v684 = "Soru"
        if (type(v684) == "string") then
            game:GetService("CollectionService"):AddTag(game.Players.LocalPlayer.Character, v684)
        elseif (type(v684) == "table") then
            for v2124, v2125 in next, v684 do
                game:GetService("CollectionService"):AddTag(game.Players.LocalPlayer.Character, v2125)
            end
        end
    end
)
v108:Button(
    "Mở Khoá Geppo",
    function()
        local v685 = "Geppo"
        if (type(v685) == "string") then
            game:GetService("CollectionService"):AddTag(game.Players.LocalPlayer.Character, v685)
        elseif (type(v685) == "table") then
            for v2126, v2127 in next, v685 do
                game:GetService("CollectionService"):AddTag(game.Players.LocalPlayer.Character, v2127)
            end
        end
    end
)
v108:Button(
    "Thu phóng tối đa",
    function()
        while wait() do
            game.Players.LocalPlayer.CameraMaxZoomDistance = 9223372036854718
        end
    end
)
v108:Button(
    "Hiển Thị Tài Khoản",
    function(v686)
        local v687 = require(game:GetService("Players").LocalPlayer.PlayerGui.Main.UIController.Inventory)
        local v688 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")
        local v689 = {}
        local v690 = {"Mythical", "Legendary", "Rare", "Uncommon", "Common"}
        local v691 = {
            Common = Color3.fromRGB(179, 179, 179),
            Uncommon = Color3.fromRGB(92, 140, 211),
            Rare = Color3.fromRGB(140, 82, 255),
            Legendary = Color3.fromRGB(213, 43, 228),
            Mythical = Color3.fromRGB(238, 47, 50)
        }
        function GetRaity(v1076)
            for v1783, v1784 in pairs(v691) do
                if (v1784 == v1076) then
                    return v1783
                end
            end
        end
        for v1077, v1078 in pairs(v688) do
            v689[v1078.Name] = v1078
        end
        local v692 = #getupvalue(v687.UpdateRender, 4)
        local v693 = {}
        local v694 = {}
        local v695 = 0
        while v695 < v692 do
            local v1080 = 0
            while (v1080 < 25000) and (v695 < v692) do
                game:GetService("Players").LocalPlayer.PlayerGui.Main.InventoryContainer.Right.Content.ScrollingFrame.CanvasPosition =
                    Vector2.new(0, v1080)
                for v1939, v1940 in pairs(
                    game:GetService("Players").LocalPlayer.PlayerGui.Main.InventoryContainer.Right.Content.ScrollingFrame.Frame:GetChildren(

                    )
                ) do
                    if (v1940:IsA("Frame") and not v693[v1940.ItemName.Text] and (v1940.ItemName.Visible == true)) then
                        local v2128 = GetRaity(v1940.Background.BackgroundColor3)
                        if v2128 then
                            print("Rac")
                            if not v694[v2128] then
                                v694[v2128] = {}
                            end
                            table.insert(v694[v2128], v1940:Clone())
                        end
                        v695 = v695 + 1
                        v693[v1940.ItemName.Text] = true
                    end
                end
                v1080 = v1080 + 20
            end
            wait()
        end
        function GetXY(v1081)
            return v1081 * 100
        end
        local v696 = Instance.new("UIListLayout")
        v696.FillDirection = Enum.FillDirection.Vertical
        v696.SortOrder = 2
        v696.Padding = UDim.new(0, 10)
        local v701 = Instance.new("Frame", game.Players.LocalPlayer.PlayerGui.BubbleChat)
        v701.BackgroundTransparency = 1
        v701.Size = UDim2.new(0.5, 0, 1, 0)
        v696.Parent = v701
        local v705 = Instance.new("Frame", game.Players.LocalPlayer.PlayerGui.BubbleChat)
        v705.BackgroundTransparency = 1
        v705.Size = UDim2.new(0.5, 0, 1, 0)
        v705.Position = UDim2.new(0.6, 0, 0, 0)
        v696:Clone().Parent = v705
        for v1082, v1083 in pairs(v694) do
            local v1084 = Instance.new("Frame", v701)
            v1084.BackgroundTransparency = 1
            v1084.Size = UDim2.new(1, 0, 0, 0)
            v1084.LayoutOrder = table.find(v690, v1082)
            local v1088 = Instance.new("Frame", v705)
            v1088.BackgroundTransparency = 1
            v1088.Size = UDim2.new(1, 0, 0, 0)
            v1088.LayoutOrder = table.find(v690, v1082)
            local v1092 = Instance.new("UIGridLayout", v1084)
            v1092.CellPadding = UDim2.new(0.005, 0, 0.005, 0)
            v1092.CellSize = UDim2.new(0, 70, 0, 70)
            v1092.FillDirectionMaxCells = 100
            v1092.FillDirection = Enum.FillDirection.Horizontal
            local v1098 = v1092:Clone()
            v1098.Parent = v1088
            for v1786, v1787 in pairs(v1083) do
                if (v689[v1787.ItemName.Text] and v689[v1787.ItemName.Text].Mastery) then
                    if (v1787.ItemLine2.Text ~= "Accessory") then
                        local v2165 = v1787.ItemName:Clone()
                        v2165.BackgroundTransparency = 1
                        v2165.TextSize = 10
                        v2165.TextXAlignment = 2
                        v2165.TextYAlignment = 2
                        v2165.ZIndex = 5
                        v2165.Text = v689[v1787.ItemName.Text].Mastery
                        v2165.Size = UDim2.new(0.5, 0, 0.5, 0)
                        v2165.Position = UDim2.new(0.5, 0, 0.5, 0)
                        v2165.Parent = v1787
                    end
                    v1787.Parent = v1084
                elseif (v1787.ItemLine2.Text == "Blox Fruit") then
                    v1787.Parent = v1088
                end
            end
            v1084.AutomaticSize = 2
            v1088.AutomaticSize = 2
        end
        local v710 = {
            Superhuman = Vector2.new(3, 2),
            GodHuman = Vector2.new(3, 2),
            DeathStep = Vector2.new(4, 3),
            ElectricClaw = Vector2.new(2, 0),
            SharkmanKarate = Vector2.new(0, 0),
            DragonTalon = Vector2.new(1, 5)
        }
        local v711 = Instance.new("Frame", v701)
        v711.BackgroundTransparency = 1
        v711.Size = UDim2.new(1, 0, 0, 0)
        v711.LayoutOrder = table.find(v690, k)
        v711.AutomaticSize = 2
        v711.LayoutOrder = 100
        local v696 = Instance.new("UIGridLayout", v711)
        v696.CellPadding = UDim2.new(0.005, 0, 0.005, 0)
        v696.CellSize = UDim2.new(0, 70, 0, 70)
        v696.FillDirectionMaxCells = 100
        v696.FillDirection = Enum.FillDirection.Horizontal
        local v687 = {"Superhuman", "ElectricClaw", "DragonTalon", "SharkmanKarate", "DeathStep", "GodHuman"}
        for v1102, v1103 in pairs(v687) do
            if
                (v710[v1103] and
                    (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buy" .. v1103, true) == 1))
             then
                local v1941 = Instance.new("ImageLabel", v711)
                v1941.Image = "rbxassetid://9945562382"
                v1941.ImageRectSize = Vector2.new(100, 100)
                v1941.ImageRectOffset = v710[v1103] * 100
            end
        end
        function formatNumber(v1104)
            return tostring(v1104):reverse():gsub("%d%d%d", "%1,"):reverse():gsub("^,", "")
        end
        game:GetService("Players").LocalPlayer.PlayerGui.Main.Beli.Position = UDim2.new(0, 800, 0, 500)
        game:GetService("Players").LocalPlayer.PlayerGui.Main.Level.Position = UDim2.new(0, 800, 0, 550)
        local v722 = game:GetService("Players").LocalPlayer.PlayerGui.Main.Fragments:Clone()
        v722.Parent = game:GetService("Players").LocalPlayer.PlayerGui.BubbleChat
        v722.Position = UDim2.new(0, 800, 0.63, 0)
        local v726 = formatNumber(game.Players.LocalPlayer.Data.Fragments.Value)
        v722.Text = "Ã†â€™" .. v726
        print("Done")
        pcall(
            function()
                game:GetService("Players").LocalPlayer.PlayerGui.Main.MenuButton:Destroy()
            end
        )
        pcall(
            function()
                game:GetService("Players").LocalPlayer.PlayerGui.Main.HP:Destroy()
            end
        )
        pcall(
            function()
                game:GetService("Players").LocalPlayer.PlayerGui.Main.Energy:Destroy()
            end
        )
        for v1105, v1106 in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main:GetChildren()) do
            if v1106:IsA("ImageButton") then
                v1106:Destroy()
            end
        end
        pcall(
            function()
                game:GetService("Players").LocalPlayer.PlayerGui.Main.Compass:Destroy()
            end
        )
    end
)
v108:Seperator("Đồ Hoạ")
v108:Button(
    "Xoá Sương Mù ( Biển 3 )",
    function(v728)
        game:GetService("Lighting").LightingLayers:Destroy()
        game:GetService("Lighting").Sky:Destroy()
    end
)
v108:Toggle(
    "Xoá Sương Mù",
    RemoveFog,
    function(v729)
        RemoveFog = v729
        if not RemoveFog then
            return
        end
        while RemoveFog do
            wait()
            game.Lighting.FogEnd = 8999999488
            if not RemoveFog then
                game.Lighting.FogEnd = 2500
            end
        end
    end
)
v108:Toggle(
    "Loại Bỏ Thiệt Hại",
    true,
    function()
        for v1108, v1109 in pairs(game.Workspace:GetDescendants()) do
            if (v1109.Name == "DamageCounter") then
                v1109:Destroy()
            end
        end
        for v1110, v1111 in pairs(game.ReplicatedStorage:GetDescendants()) do
            if (v1111.Name == "DamageCounter") then
                v1111:Destroy()
            end
        end
    end
)
v108:Button(
    "Mở Khoá FPS",
    function()
        setfpscap(9999999)
    end
)
v108:Button(
    "Giảm Lag",
    function()
        for v1112, v1113 in pairs(game.Workspace.Map:GetDescendants()) do
            if
                ((v1113.Name == "Tavern") or (v1113.Name == "SmileFactory") or (v1113.Name == "Tree") or
                    (v1113.Name == "Rocks") or
                    (v1113.Name == "PartHouse") or
                    (v1113.Name == "Hotel") or
                    (v1113.Name == "WallPiece") or
                    (v1113.Name == "MiddlePillars") or
                    (v1113.Name == "Cloud") or
                    (v1113.Name == "PluginGrass") or
                    (v1113.Name == "BigHouse") or
                    (v1113.Name == "SmallHouse") or
                    (v1113.Name == "Detail"))
             then
                v1113:Destroy()
            end
        end
        for v1114, v1115 in pairs(game.ReplicatedStorage.Unloaded:GetDescendants()) do
            if
                ((v1115.Name == "Tavern") or (v1115.Name == "SmileFactory") or (v1115.Name == "Tree") or
                    (v1115.Name == "Rocks") or
                    (v1115.Name == "PartHouse") or
                    (v1115.Name == "Hotel") or
                    (v1115.Name == "WallPiece") or
                    (v1115.Name == "MiddlePillars") or
                    (v1115.Name == "Cloud") or
                    (v1115.Name == "PluginGrass") or
                    (v1115.Name == "BigHouse") or
                    (v1115.Name == "SmallHouse") or
                    (v1115.Name == "Detail"))
             then
                v1115:Destroy()
            end
        end
        for v1116, v1117 in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
            if (v1117:IsA("Accessory") or (v1117.Name == "Pants") or (v1117.Name == "Shirt")) then
                v1117:Destroy()
            end
        end
        local v730 = true
        local v731 = game
        local v732 = v731.Workspace
        local v733 = v731.Lighting
        local v734 = v732.Terrain
        v734.WaterWaveSize = 0
        v734.WaterWaveSpeed = 0
        v734.WaterReflectance = 0
        v734.WaterTransparency = 0
        v733.GlobalShadows = false
        v733.FogEnd = 8999999488
        v733.Brightness = 0
        settings().Rendering.QualityLevel = "Level01"
        for v1118, v1119 in pairs(v731:GetDescendants()) do
            if (v1119:IsA("Part") or v1119:IsA("Union") or v1119:IsA("CornerWedgePart") or v1119:IsA("TrussPart")) then
                v1119.Material = "Plastic"
                v1119.Reflectance = 0
            elseif (v1119:IsA("Decal") or (v1119:IsA("Texture") and v730)) then
                v1119.Transparency = 1
            elseif (v1119:IsA("ParticleEmitter") or v1119:IsA("Trail")) then
                v1119.Lifetime = NumberRange.new(0)
            elseif v1119:IsA("Explosion") then
                v1119.BlastPressure = 1
                v1119.BlastRadius = 1
            elseif (v1119:IsA("Fire") or v1119:IsA("SpotLight") or v1119:IsA("Smoke") or v1119:IsA("Sparkles")) then
                v1119.Enabled = false
            elseif v1119:IsA("MeshPart") then
                v1119.Material = "Plastic"
                v1119.Reflectance = 0
                v1119.TextureID = 10385902758728956
            end
        end
        for v1120, v1121 in pairs(v733:GetChildren()) do
            if
                (v1121:IsA("BlurEffect") or v1121:IsA("SunRaysEffect") or v1121:IsA("ColorCorrectionEffect") or
                    v1121:IsA("BloomEffect") or
                    v1121:IsA("DepthOfFieldEffect"))
             then
                v1121.Enabled = false
            end
        end
    end
)
v108:Seperator("Khả năng")
v108:Toggle(
    "Né tránh không có thời gian hồi chiêu",
    false,
    function(v743)
        nododgecool = v743
        NoDodgeCool()
    end
)
v108:Toggle(
    "Năng lượng vô hạn",
    false,
    function(v744)
        InfiniteEnergy = v744
        v88 = v87.Character.Energy.Value
    end
)
v108:Toggle(
    "Tự Động Bậc V3",
    _G.ActiveV3,
    function(v746)
        _G.ActiveV3 = v746
    end
)
spawn(
    function()
        pcall(
            function()
                while wait() do
                    if _G.ActiveV3 then
                        game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility")
                    end
                end
            end
        )
    end
)
v108:Toggle(
    "Tự Động Bậc V4",
    _G.ActiveV4,
    function(v747)
        _G.ActiveV4 = v747
    end
)
spawn(
    function()
        while wait() do
            pcall(
                function()
                    if _G.ActiveV4 then
                        game:GetService("VirtualInputManager"):SendKeyEvent(true, "Y", false, game)
                        wait(0.1)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false, "Y", false, game)
                    end
                end
            )
        end
    end
)
v108:Toggle(
    "Khả năng vô hạn",
    false,
    function(v748)
        InfAbility = v748
        if (value == false) then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility"):Destroy()
        end
    end
)
spawn(
    function()
        while wait() do
            if InfAbility then
                InfAb()
            end
        end
    end
)
v108:Toggle(
    "Phạm vi quan sát vô hạn",
    getgenv().InfiniteObRange,
    function(v749)
        getgenv().InfiniteObRange = v749
        local v751 = game:GetService("Players").LocalPlayer.VisionRadius.Value
        while getgenv().InfiniteObRange do
            wait()
            local v1122 = game:GetService("Players").LocalPlayer
            local v1123 = v1122.Character
            local v1124 = v1122.VisionRadius
            if v1122 then
                if (v1123.Humanoid.Health <= 0) then
                    wait(5)
                end
                v1124.Value = math.huge
            elseif ((getgenv().InfiniteObRange == false) and v1122) then
                v1124.Value = v751
            end
        end
    end
)
v108:Toggle(
    "Geppo vô hạn",
    getgenv().InfGeppo,
    function(v752)
        getgenv().InfGeppo = v752
    end
)
spawn(
    function()
        while wait() do
            pcall(
                function()
                    if getgenv().InfGeppo then
                        for v2132, v2133 in next, getgc() do
                            if game:GetService("Players").LocalPlayer.Character.Geppo then
                                if
                                    ((typeof(v2133) == "function") and
                                        (getfenv(v2133).script == game:GetService("Players").LocalPlayer.Character.Geppo))
                                 then
                                    for v2777, v2778 in next, getupvalues(v2133) do
                                        if (tostring(v2777) == "9") then
                                            repeat
                                                wait(0.1)
                                                setupvalue(v2133, v2777, 0)
                                            until not getgenv().InfGeppo or
                                                (game:GetService("Players").LocalPlayer.Character.Humanoid.Health <= 0)
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            )
        end
    end
)
v108:Toggle(
    "vô hạn Soru",
    _G.Infsoru,
    function(v754)
        _G.Infsoru = v754
    end
)
spawn(
    function()
        while wait() do
            pcall(
                function()
                    if
                        (_G.Infsoru and
                            (game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") ~= nil))
                     then
                        for v2134, v2135 in next, getgc() do
                            if game:GetService("Players").LocalPlayer.Character.Soru then
                                if
                                    ((typeof(v2135) == "function") and
                                        (getfenv(v2135).script == game:GetService("Players").LocalPlayer.Character.Soru))
                                 then
                                    for v2779, v2780 in next, getupvalues(v2135) do
                                        if (typeof(v2780) == "table") then
                                            repeat
                                                wait(0.1)
                                                v2780.LastUse = 0
                                            until not _G.Infsoru or
                                                (game:GetService("Players").LocalPlayer.Character.Humanoid.Health <= 0)
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            )
        end
    end
)
v108:Toggle(
    "Đi Trên Nước",
    true,
    function(v755)
        _G.WalkWater = v755
    end
)
spawn(
    function()
        while task.wait() do
            pcall(
                function()
                    if _G.WalkWater then
                        game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000, 112, 1000)
                    else
                        game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000, 80, 1000)
                    end
                end
            )
        end
    end
)
v108:Toggle(
    "Xuyên Tường",
    _G.NoClip,
    function(v756)
        _G.NoClip = v756
    end
)
spawn(
    function()
        while wait() do
            if sethiddenproperty then
                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", 100)
            end
            if setscriptable then
                setscriptable(game.Players.LocalPlayer, "SimulationRadius", true)
                game.Players.LocalPlayer.SimulationRadius =
                    math.huge * math.huge,
                    (((((((((math.huge * math.huge * 0) / 0) * 0) / 0) * 0) / 0) * 0) / 0) * 0) / 0
            end
        end
    end
)
v108:Button(
    "Xoá Dung Nham",
    function()
        for v1125, v1126 in pairs(game.Workspace:GetDescendants()) do
            if (v1126.Name == "Lava") then
                v1126:Destroy()
            end
        end
        for v1127, v1128 in pairs(game.ReplicatedStorage:GetDescendants()) do
            if (v1128.Name == "Lava") then
                v1128:Destroy()
            end
        end
    end
)
local v155 = v107:Label("Người Chơi")
spawn(
    function()
        while wait() do
            pcall(
                function()
                    for v1952, v1953 in pairs(game:GetService("Players"):GetPlayers()) do
                        if (v1952 == 12) then
                            v155:Set("Players:" .. " " .. v1952 .. " " .. "/" .. " " .. "12" .. " " .. "(Max)")
                        elseif (v1952 == 1) then
                            v155:Set("Player:" .. " " .. v1952 .. " " .. "/" .. " " .. "12")
                        else
                            v155:Set("Players:" .. " " .. v1952 .. " " .. "/" .. " " .. "12")
                        end
                    end
                end
            )
        end
    end
)
Playerslist = {}
for v757, v758 in pairs(game:GetService("Players"):GetChildren()) do
    table.insert(Playerslist, v758.Name)
end
local v156 =
    v107:Dropdown(
    "Chọn Người Chơi",
    Playerslist,
    function(v759)
        _G.SelectPly = v759
    end
)
v107:Button(
    "Làm Mới Người Chơi",
    function()
        Playerslist = {}
        v156:Clear()
        for v1129, v1130 in pairs(game:GetService("Players"):GetChildren()) do
            v156:Add(v1130.Name)
        end
    end
)
v107:Toggle(
    "Quan Sát Người Chơi",
    false,
    function(v760)
        SpectatePlys = v760
        local v761 = game:GetService("Players").LocalPlayer.Character.Humanoid
        local v762 = game:GetService("Players"):FindFirstChild(_G.SelectPly)
        repeat
            wait(0.1)
            game:GetService("Workspace").Camera.CameraSubject =
                game:GetService("Players"):FindFirstChild(_G.SelectPly).Character.Humanoid
        until SpectatePlys == false
        game:GetService("Workspace").Camera.CameraSubject = game:GetService("Players").LocalPlayer.Character.Humanoid
    end
)
v107:Toggle(
    "Bay Đến Người Chơi",
    false,
    function(v765)
        _G.TeleportPly = v765
        pcall(
            function()
                if _G.TeleportPly then
                    repeat
                        topos(game:GetService("Players")[_G.SelectPly].Character.HumanoidRootPart.CFrame)
                        wait()
                    until _G.TeleportPly == false
                end
                StopTween(_G.TeleportPly)
            end
        )
    end
)
v107:Toggle(
    "Bay Đến Người Chơi Bypass",
    false,
    function(v766)
        _G.Teleport = v766
        if (_G.Teleport == false) then
            game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
        end
        while _G.Teleport do
            task.wait()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 0)
            game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
            game:GetService("VirtualUser"):CaptureController()
            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
        end
    end
)
v107:Seperator("Nhiệm Vụ")
v107:Button(
    "Nhận Nhiệm Vụ Thợ Săn",
    function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
    end
)
v107:Toggle(
    "Giết Người Chơi Nhận Nhiệm Vụ",
    _G.PlayerHunter,
    function(v767)
        _G.PlayerHunter = v767
        StopTween(_G.PlayerHunter)
    end
)
spawn(
    function()
        game:GetService("RunService").Heartbeat:connect(
            function()
                pcall(
                    function()
                        if _G.PlayerHunter then
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
                                game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
                            end
                        end
                    end
                )
            end
        )
    end
)
spawn(
    function()
        pcall(
            function()
                while wait(0.1) do
                    if _G.PlayerHunter then
                        if (game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true) then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
                        end
                    end
                end
            end
        )
    end
)
spawn(
    function()
        while wait() do
            if _G.PlayerHunter then
                if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) then
                    wait(0.5)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
                else
                    for v2177, v2178 in pairs(game:GetService("Workspace").Characters:GetChildren()) do
                        if
                            string.find(
                                game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,
                                v2178.Name
                            )
                         then
                            repeat
                                wait()
                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                    local v2818 = {[1] = "Buso"}
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v2818))
                                end
                                EquipWeapon(_G.SelectWeapon)
                                Useskill = true
                                topos(v2178.HumanoidRootPart.CFrame * CFrame.new(1, 7, 3))
                                v2178.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                game:GetService("VirtualUser"):CaptureController()
                                game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                            until (_G.PlayerHunter == false) or (v2178.Humanoid.Health <= 0)
                            Useskill = false
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                        end
                    end
                end
            end
        end
    end
)
spawn(
    function()
        while wait() do
            pcall(
                function()
                    if Useskill then
                        game:GetService("VirtualInputManager"):SendKeyEvent(true, "Z", false, game)
                        wait(0.1)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false, "Z", false, game)
                        wait(0.1)
                        game:GetService("VirtualInputManager"):SendKeyEvent(true, "X", false, game)
                        wait(0.1)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false, "X", false, game)
                        wait(0.1)
                        game:GetService("VirtualInputManager"):SendKeyEvent(true, "C", false, game)
                        wait(0.1)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false, "C", false, game)
                        wait(0.1)
                        game:GetService("VirtualInputManager"):SendKeyEvent(true, "V", false, game)
                        wait(0.1)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false, "V", false, game)
                    end
                end
            )
        end
    end
)
v107:Seperator("PvP")
v107:Toggle(
    "Aimbot gần nhất",
    false,
    function(v768)
        _G.AimNearest = v768
    end
)
local v144 = game:GetService("Players")
local v87 = v144.LocalPlayer
local v145 = game:GetService("RunService")
local function v157()
    local v769 = nil
    local v770 = math.huge
    for v1135, v1136 in pairs(v144:GetPlayers()) do
        if ((v1136 ~= v87) and v1136.Character and v1136.Character:FindFirstChild("HumanoidRootPart")) then
            if ((v1136.Team ~= v87.Team) and (v1136.Team.Name ~= "Marines")) then
                local v2136 = v1136.Character.HumanoidRootPart.Position
                local v2137 = (v87.Character.HumanoidRootPart.Position - v2136).Magnitude
                if (v2137 < v770) then
                    v769 = v1136
                    v770 = v2137
                end
            end
        end
    end
    return v769
end
v145.RenderStepped:Connect(
    function()
        if _G.AimNearest then
            local v1789 = v157()
            if v1789 then
                _G.Aim_Players = v1789
            end
        end
    end
)
local v158 = getrawmetatable(game)
local v159 = v158.__namecall
setreadonly(v158, false)
v158.__namecall =
    newcclosure(
    function(...)
        local v771 = getnamecallmethod()
        local v772 = {...}
        if (tostring(v771) == "FireServer") then
            if (tostring(v772[1]) == "RemoteEvent") then
                if ((tostring(v772[2]) ~= "true") and (tostring(v772[2]) ~= "false")) then
                    if (_G.AimNearest and _G.Aim_Players) then
                        v772[2] = _G.Aim_Players.Character.HumanoidRootPart.Position
                        return v159(unpack(v772))
                    end
                end
            end
        end
        return v159(...)
    end
)
setreadonly(v158, true)
v107:Toggle(
    "Enabled PvP",
    false,
    function(v773)
        _G.EnabledPvP = v773
    end
)
spawn(
    function()
        pcall(
            function()
                while wait(0.1) do
                    if _G.EnabledPvP then
                        if (game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true) then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
                        end
                    end
                end
            end
        )
    end
)
v107:Button(
    "Đặt vị trí Hồi Sinh",
    function()
        _G.Pos_Spawn = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        Com()
    end
)
v107:Toggle(
    "Chế độ an toàn",
    false,
    function(v775)
        _G.Safe_Mode = v775
        StopTween(_G.Safe_Mode)
    end
)
spawn(
    function()
        pcall(
            function()
                while wait() do
                    if _G.Safe_Mode then
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
                    end
                end
            end
        )
    end
)
v107:Button(
    "hồi sinh",
    function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", "Pirates")
        wait()
    end
)
v107:Seperator("Thống kê")
local v161 = v107:Label("Điểm chỉ số")
spawn(
    function()
        while wait() do
            pcall(
                function()
                    v161:Set("Điểm chỉ số: " .. tostring(game:GetService("Players")["LocalPlayer"].Data.Points.Value))
                end
            )
        end
    end
)
local v162 = v107:Label("Võ: ")
local v163 = v107:Label("Phòng Thủ: ")
local v164 = v107:Label("Kiếm: ")
local v165 = v107:Label("Súng: ")
local v166 = v107:Label("Trái: ")
spawn(
    function()
        while wait() do
            pcall(
                function()
                    v162:Set("Võ: " .. game.Players.localPlayer.Data.Stats.Melee.Level.Value)
                end
            )
        end
    end
)
spawn(
    function()
        while wait() do
            pcall(
                function()
                    v163:Set("Phòng Thủ: " .. game.Players.localPlayer.Data.Stats.Defense.Level.Value)
                end
            )
        end
    end
)
spawn(
    function()
        while wait() do
            pcall(
                function()
                    v164:Set("Kiếm: " .. game.Players.localPlayer.Data.Stats.Sword.Level.Value)
                end
            )
        end
    end
)
spawn(
    function()
        while wait() do
            pcall(
                function()
                    v165:Set("Súng: " .. game.Players.localPlayer.Data.Stats.Gun.Level.Value)
                end
            )
        end
    end
)
spawn(
    function()
        while wait() do
            pcall(
                function()
                    v166:Set("Trái: " .. game.Players.localPlayer.Data.Stats["Demon Fruit"].Level.Value)
                end
            )
        end
    end
)
v107:Toggle(
    "Tự Động Nâng Chỉ Số",
    _G.Stats_Kaitun,
    function(v776)
        _G.Stats_Kaitun = v776
    end
)
spawn(
    function()
        while wait() do
            pcall(
                function()
                    if _G.Stats_Kaitun then
                        if World1 then
                            local v2179 = {[1] = "AddPoint", [2] = "Melee", [3] = _G.Point}
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v2179))
                        elseif World2 then
                            local v2586 = {[1] = "AddPoint", [2] = "Melee", [3] = _G.Point}
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v2586))
                            local v2586 = {[1] = "AddPoint", [2] = "Defense", [3] = _G.Point}
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v2586))
                        end
                    end
                end
            )
        end
    end
)
v107:Toggle(
    "Võ",
    false,
    function(v777)
        melee = v777
    end
)
v107:Toggle(
    "Phòng Thủ",
    false,
    function(v778)
        defense = v778
    end
)
v107:Toggle(
    "Kiếm",
    false,
    function(v779)
        sword = v779
    end
)
v107:Toggle(
    "Súng",
    false,
    function(v780)
        gun = v780
    end
)
v107:Toggle(
    "Trái Ác Quỷ",
    false,
    function(v781)
        demonfruit = v781
    end
)
PointStats = 100
spawn(
    function()
        while wait() do
            if (game.Players.localPlayer.Data.Points.Value >= PointStats) then
                if melee then
                    local v2138 = {[1] = "AddPoint", [2] = "Võ", [3] = PointStats}
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v2138))
                end
                if defense then
                    local v2139 = {[1] = "AddPoint", [2] = "Phòng Thủ", [3] = PointStats}
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v2139))
                end
                if sword then
                    local v2140 = {[1] = "AddPoint", [2] = "Kiếm", [3] = PointStats}
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v2140))
                end
                if gun then
                    local v2141 = {[1] = "AddPoint", [2] = "Súng", [3] = PointStats}
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v2141))
                end
                if demonfruit then
                    local v2142 = {[1] = "AddPoint", [2] = "Trái Ác Quỷ", [3] = PointStats}
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v2142))
                end
            end
        end
    end
)
v109:Seperator("Tập Kích")
_G.SelectChip = selectraids or ""
Raidslist = {}
RaidsModule = require(game.ReplicatedStorage.Raids)
for v782, v783 in pairs(RaidsModule.raids) do
    table.insert(Raidslist, v783)
end
for v784, v785 in pairs(RaidsModule.advancedRaids) do
    table.insert(Raidslist, v785)
end
v109:Dropdown(
    "Chọn Chip",
    Raidslist,
    function(v786)
        _G.SelectChip = v786
    end
)
v109:Toggle(
    "Tự động chọn Đột Kích",
    _G.SelectDungeon,
    function(v787)
        _G.SelectDungeon = v787
    end
)
spawn(
    function()
        while wait() do
            if _G.SelectDungeon then
                pcall(
                    function()
                        if
                            (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame-Flame") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame-Flame"))
                         then
                            _G.SelectChip = "Flame"
                        elseif
                            (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice-Ice") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice-Ice"))
                         then
                            _G.SelectChip = "Ice"
                        elseif
                            (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake-Quake") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake-Quake"))
                         then
                            _G.SelectChip = "Quake"
                        elseif
                            (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light-Light") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light-Light"))
                         then
                            _G.SelectChip = "Light"
                        elseif
                            (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark-Dark") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark-Dark"))
                         then
                            _G.SelectChip = "Dark"
                        elseif
                            (game:GetService("Players").LocalPlayer.Character:FindFirstChild("String-String") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("String-String"))
                         then
                            _G.SelectChip = "String"
                        elseif
                            (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble-Rumble") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble-Rumble"))
                         then
                            _G.SelectChip = "Rumble"
                        elseif
                            (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma-Magma") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma-Magma"))
                         then
                            _G.SelectChip = "Magma"
                        elseif
                            (game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                                "Human-Human: Buddha Fruit"
                            ) or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                                    "Human-Human: Buddha Fruit"
                                ))
                         then
                            _G.SelectChip = "Human: Buddha"
                        elseif
                            (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand-Sand") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand-Sand"))
                         then
                            _G.SelectChip = "Sand"
                        elseif
                            (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird-Bird: Phoenix") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird-Bird: Phoenix"))
                         then
                            _G.SelectChip = "Bird: Phoenix"
                        elseif
                            (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough"))
                         then
                            _G.SelectChip = "Dough"
                        else
                            _G.SelectChip = "Flame"
                        end
                    end
                )
            end
        end
    end
)
v109:Toggle(
    "Mua Chip Tự Động",
    _G.BuyChip,
    function(v788)
        _G.BuyChip = v788
    end
)
spawn(
    function()
        pcall(
            function()
                while wait() do
                    if _G.BuyChip then
                        if
                            (not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or
                                not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip"))
                         then
                            if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "RaidsNpc",
                                    "Select",
                                    _G.SelectChip
                                )
                            end
                        end
                    end
                end
            end
        )
    end
)
v109:Button(
    "Mua Chip Đã Chọn",
    function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", _G.SelectChip)
    end
)
v109:Toggle(
    "Tự Động Bắt Đầu Đột Kích",
    _G.StartRaid,
    function(v789)
        _G.StartRaid = v789
    end
)
spawn(
    function()
        while wait(0.1) do
            pcall(
                function()
                    if _G.StartRaid then
                        if (game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false) then
                            if
                                ((not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") and
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip")) or
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip"))
                             then
                                if World2 then
                                    fireclickdetector(
                                        game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector
                                    )
                                elseif World3 then
                                    fireclickdetector(
                                        game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector
                                    )
                                end
                            end
                        end
                    end
                end
            )
        end
    end
)
v109:Button(
    "Bắt Đầu Đột Kích",
    function()
        if World2 then
            fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
        elseif World3 then
            fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
        end
    end
)
v109:Toggle(
    "Tự Động Đánh Quái Và Qua Đảo",
    false,
    function(v790)
        _G.Dungeon = v790
        StopTween(_G.Dungeon)
    end
)
function IsIslandRaid(v791)
    if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island " .. v791) then
        min = 4500
        for v1954, v1955 in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
            if
                ((v1955.Name == ("Island " .. v791)) and
                    ((v1955.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < min))
             then
                min = (v1955.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
            end
        end
        for v1956, v1957 in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
            if
                ((v1957.Name == ("Island " .. v791)) and
                    ((v1957.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= min))
             then
                return v1957
            end
        end
    end
end
function getNextIsland()
    TableIslandsRaid = {5, 4, 3, 2, 1}
    for v1137, v1138 in pairs(TableIslandsRaid) do
        if
            (IsIslandRaid(v1138) and
                ((IsIslandRaid(v1138).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                    4500))
         then
            return IsIslandRaid(v1138)
        end
    end
end
function attackNearbyEnemies()
    local v792 = {}
    for v1139, v1140 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
        if
            (v1140:FindFirstChild("HumanoidRootPart") and v1140:FindFirstChild("Humanoid") and
                (v1140.Humanoid.Health > 0))
         then
            local v1958 =
                (v1140.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
            if (v1958 <= 1000) then
                table.insert(v792, v1140)
            end
        end
    end
    for v1141, v1142 in pairs(v792) do
        repeat
            if (v1142:FindFirstChild("Humanoid") and (v1142.Humanoid.Health > 0)) then
                EquipWeapon(_G.SelectWeapon)
                topos(v1142.HumanoidRootPart.CFrame * Pos)
                wait(0.1)
            end
        until not v1142:FindFirstChild("Humanoid") or (v1142.Humanoid.Health <= 0)
    end
end
spawn(
    function()
        while wait() do
            if _G.Dungeon then
                attackNearbyEnemies()
                if getNextIsland() then
                    spawn(topos(getNextIsland().CFrame * CFrame.new(0, 60, 0)), 1)
                end
            end
        end
    end
)
spawn(
    function()
        pcall(
            function()
                while wait() do
                    if _G.Kill_Aura then
                        local v2051 = game:GetService("Players").LocalPlayer
                        local v2052 = game:GetService("Workspace").Enemies:GetChildren()
                        local v2053 =
                            v2051.Character and v2051.Character:FindFirstChild("HumanoidRootPart") and
                            v2051.Character.HumanoidRootPart.Position
                        if v2053 then
                            for v2376, v2377 in pairs(v2052) do
                                if
                                    (v2377:FindFirstChild("Humanoid") and v2377:FindFirstChild("HumanoidRootPart") and
                                        (v2377.Humanoid.Health > 0))
                                 then
                                    local v2716 = (v2377.HumanoidRootPart.Position - v2053).Magnitude
                                    if (v2716 <= 1000) then
                                        pcall(
                                            function()
                                                repeat
                                                    wait()
                                                    sethiddenproperty(v2051, "SimulationRadius", math.huge)
                                                    v2377.Humanoid.Health = 0
                                                    v2377.HumanoidRootPart.CanCollide = false
                                                until not _G.Kill_Aura or not v2377.Parent or
                                                    (v2377.Humanoid.Health <= 0)
                                            end
                                        )
                                    end
                                end
                            end
                        end
                    end
                end
            end
        )
    end
)
v109:Toggle(
    "Tự động thức Tỉnh",
    _G.Awakener,
    function(v793)
        _G.Awakener = v793
    end
)
spawn(
    function()
        pcall(
            function()
                while wait(0.1) do
                    if _G.Awakener then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener", "Check")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener", "Awaken")
                    end
                end
            end
        )
    end
)
if World2 then
    v109:Button(
        "Dịch chuyển đến phòng thí nghiệm",
        function()
            topos(CFrame.new(-6438.73535, 250.645355, -4501.50684))
        end
    )
elseif World3 then
    v109:Button(
        "Dịch chuyển đến phòng thí nghiệm",
        function()
            topos(
                CFrame.new(
                    -5017.40869,
                    314.844055,
                    -2823.0127,
                    -0.925743818,
                    4.482175e-8,
                    -0.378151238,
                    4.5550315e-9,
                    1,
                    1.0737756e-7,
                    0.378151238,
                    9.768162e-8,
                    -0.925743818
                )
            )
        end
    )
end
if World2 then
    v109:Button(
        "Phòng thức tỉnh",
        function()
            topos(CFrame.new(266.227783, 1.39509034, 1857.00732))
        end
    )
elseif World3 then
    v109:Button(
        "Phòng thức tỉnh",
        function()
            topos(CFrame.new(-11571.440429688, 49.172668457031, -7574.7368164062))
        end
    )
end
v109:Seperator("Kiếm KoKo")
v109:Toggle(
    "Đánh Law",
    _G.OderSword,
    function(v794)
        _G.OderSword = v794
        StopTween(_G.OderSword)
    end
)
v109:Toggle(
    "Đánh Law Đổi Sever",
    _G.OderSwordHop,
    function(v795)
        _G.OderSwordHop = v795
    end
)
spawn(
    function()
        while wait() do
            if _G.OderSword then
                pcall(
                    function()
                        if game:GetService("Workspace").Enemies:FindFirstChild("Order [Lv. 1250] [Raid Boss]") then
                            for v2378, v2379 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if (v2379.Name == "Order [Lv. 1250] [Raid Boss]") then
                                    if
                                        (v2379:FindFirstChild("Humanoid") and v2379:FindFirstChild("HumanoidRootPart") and
                                            (v2379.Humanoid.Health > 0))
                                     then
                                        repeat
                                            task.wait()
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            v2379.HumanoidRootPart.CanCollide = false
                                            v2379.Humanoid.WalkSpeed = 0
                                            v2379.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                            topos(v2379.HumanoidRootPart.CFrame * Pos)
                                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                        until not _G.OderSword or not v2379.Parent or (v2379.Humanoid.Health <= 0)
                                    end
                                end
                            end
                        elseif game:GetService("ReplicatedStorage"):FindFirstChild("Order [Lv. 1250] [Raid Boss]") then
                            topos(
                                game:GetService("ReplicatedStorage"):FindFirstChild("Order [Lv. 1250] [Raid Boss]").HumanoidRootPart.CFrame *
                                    CFrame.new(2, 20, 2)
                            )
                        elseif _G.OderSwordHop then
                            Hop()
                        end
                    end
                )
            end
        end
    end
)
v109:Button(
    "Mua Chip Law",
    function()
        local v796 = {[1] = "BlackbeardReward", [2] = "Microchip", [3] = "2"}
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v796))
    end
)
v109:Button(
    "Bắt Đầu Vào Đánh",
    function()
        if World2 then
            fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon.Button.Main.ClickDetector)
        end
    end
)
v110:Seperator("Thế Giới")
v110:Button(
    "Dịch chuyển đến Biển 1",
    function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
    end
)
v110:Button(
    "Dịch chuyển đến Biển 2",
    function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
    end
)
v110:Button(
    "Dịch chuyển đến Biển 3",
    function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
    end
)
v110:Seperator("Dịch chuyển nhanh")
if World1 then
    v110:Dropdown(
        "Chọn Đảo",
        {"Đảo Trời 1", "Đảo Trời 2", "Đảo dưới nước", "Lối vào Đảo Dưới Nước"},
        function(v1790)
            _G.SelectFast = v1790
        end
    )
end
if World2 then
    v110:Dropdown(
        "Chọn Đảo",
        {"Biệt thự Flamingo", "Phòng Flamingo", "Con tàu bị nguyền rủa", "Đảo thây ma"},
        function(v1791)
            _G.SelectFast = v1791
        end
    )
end
if World3 then
    v110:Dropdown(
        "Chọn Đảo",
        {"Dinh Thự", "Đảo Hydra", "Pháo đài trên biển", "Đảo rùa", "Cướp biển xinh đẹp"},
        function(v1792)
            _G.SelectFast = v1792
        end
    )
end
v110:Toggle(
    "Dịch Chuyển Đến Đảo Đã Chỉ Định",
    false,
    function(v797)
        _G.TeleFast = v797
        if (_G.TeleFast == true) then
            repeat
                wait()
                if (_G.SelectFast == "Đảo Trời 1") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "requestEntrance",
                        Vector3.new(-4652, 873, -1754)
                    )
                elseif (_G.SelectFast == "Đảo Trời 2") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "requestEntrance",
                        Vector3.new(-7895, 5547, -380)
                    )
                elseif (_G.SelectFast == "Đảo dưới nước") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "requestEntrance",
                        Vector3.new(61164, 5, 1820)
                    )
                elseif (_G.SelectFast == "Lối vào Đảo Dưới Nước") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "requestEntrance",
                        Vector3.new(3865, 5, -1926)
                    )
                elseif (_G.SelectFast == "Biệt thự Flamingo") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "requestEntrance",
                        Vector3.new(-317, 331, 597)
                    )
                elseif (_G.SelectFast == "Phòng Flamingo") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "requestEntrance",
                        Vector3.new(2283, 15, 867)
                    )
                elseif (_G.SelectFast == "Con tàu bị nguyền rủa") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "requestEntrance",
                        Vector3.new(923, 125, 32853)
                    )
                elseif (_G.SelectFast == "Đảo thây ma") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "requestEntrance",
                        Vector3.new(-6509, 83, -133)
                    )
                elseif (_G.SelectFast == "Dinh Thự") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "requestEntrance",
                        Vector3.new(-12471, 374, -7551)
                    )
                elseif (_G.SelectFast == "Đảo Hydra") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "requestEntrance",
                        Vector3.new(5756, 610, -282)
                    )
                elseif (_G.SelectFast == "Pháo đài trên biển") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "requestEntrance",
                        Vector3.new(-5092, 315, -3130)
                    )
                elseif (_G.SelectFast == "Đảo rùa") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "requestEntrance",
                        Vector3.new(-12001, 332, -8861)
                    )
                elseif (_G.SelectFast == "Cướp biển xinh đẹp") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "requestEntrance",
                        Vector3.new(5319, 23, -93)
                    )
                end
            until not _G.TeleFast
        end
    end
)
v110:Seperator("đảo")
if World1 then
    v110:Dropdown(
        "Chọn Đảo",
        {
            "Cối xay gió",
            "Hàng hải",
            "Trung tâm thị trấn",
            "Rừng",
            "Làng cướp biển",
            "Sa mạc",
            "Đảo Tuyết",
            "Ford hàng hải",
            "Đấu trường La Mã",
            "Đảo Trời 1",
            "Đảo Trời 2",
            "Đảo Trời 3",
            "Nhà tù",
            "Làng Magma",
            "Đảo dưới nước",
            "Thành phố đài phun nước"
        },
        function(v1793)
            _G.SelectIsland = v1793
        end
    )
end
if World2 then
    v110:Dropdown(
        "Chọn Đảo",
        {
            "Quán cà phê",
            "Đốm đầu tiên",
            "Đảo Râu Đen",
            "Biệt thự Flamingo",
            "Phòng Flamingo",
            "Khu vực xanh",
            "Đảo thây ma",
            "Hai ngọn núi tuyết",
            "Punk nguy hiểm",
            "Con tàu bị nguyền rủa",
            "Lâu đài băng",
            "Đảo bị lãng quên",
            "Đảo Ussop"
        },
        function(v1794)
            _G.SelectIsland = v1794
        end
    )
end
if World3 then
    v110:Dropdown(
        "Chọn Đảo",
        {
            "Dinh Thự",
            "Cảng",
            "Cây lớn",
            "Pháo đài trên biển",
            "Đảo Hydra",
            "Đảo rùa",
            "Đảo Xương",
            "Đảo kem",
            "Đảo Đậu Phộng",
            "Đảo Bánh",
            "Đảo kẹo mía",
            "Doanh Trại Tiki"
        },
        function(v1795)
            _G.SelectIsland = v1795
        end
    )
end
v110:Toggle(
    "Bay Đến Đảo Đã Chọn",
    false,
    function(v798)
        _G.TeleportIsland = v798
        if (_G.TeleportIsland == true) then
            repeat
                wait()
                if (_G.SelectIsland == "Trung tâm thị trấn") then
                    topos(CFrame.new(-688, 15, 1585))
                elseif (_G.SelectIsland == "Ford hàng hải") then
                    topos(CFrame.new(-4810, 21, 4359))
                elseif (_G.SelectIsland == "Hàng hải") then
                    topos(CFrame.new(-2728, 25, 2056))
                elseif (_G.SelectIsland == "Cối xay gió") then
                    topos(CFrame.new(889, 17, 1434))
                elseif (_G.SelectIsland == "Sa mạc") then
                    topos(CFrame.new(945, 21, 4375))
                elseif (_G.SelectIsland == "Đảo Tuyết") then
                    topos(CFrame.new(1298, 87, -1344))
                elseif (_G.SelectIsland == "Làng cướp biển") then
                    topos(CFrame.new(-1173, 45, 3837))
                elseif (_G.SelectIsland == "Rừng") then
                    topos(CFrame.new(-1614, 37, 146))
                elseif (_G.SelectIsland == "Nhà tù") then
                    topos(CFrame.new(4870, 6, 736))
                elseif (_G.SelectIsland == "Đảo dưới nước") then
                    topos(CFrame.new(61164, 5, 1820))
                elseif (_G.SelectIsland == "Đấu trường La Mã") then
                    topos(CFrame.new(-1535, 7, -3014))
                elseif (_G.SelectIsland == "Làng Magma") then
                    topos(CFrame.new(-5290, 9, 8349))
                elseif (_G.SelectIsland == "Đảo Trời 1") then
                    topos(CFrame.new(-4814, 718, -2551))
                elseif (_G.SelectIsland == "Đảo Trời 2") then
                    topos(CFrame.new(-4652, 873, -1754))
                elseif (_G.SelectIsland == "Đảo trời 3") then
                    topos(CFrame.new(-7895, 5547, -380))
                elseif (_G.SelectIsland == "Thành phố đài phun nước") then
                    topos(CFrame.new(5128, 60, 4106))
                elseif (_G.SelectIsland == "Quán cà phê") then
                    topos(CFrame.new(-382, 73, 290))
                elseif (_G.SelectIsland == "Đốm đầu tiên") then
                    topos(CFrame.new(-11, 29, 2771))
                elseif (_G.SelectIsland == "Đảo Râu Đen") then
                    topos(CFrame.new(3494, 13, -3259))
                elseif (_G.SelectIsland == "Biệt thự Flamingo") then
                    topos(CFrame.new(-317, 331, 597))
                elseif (_G.SelectIsland == "Phòng Flamingo") then
                    topos(CFrame.new(2285, 15, 905))
                elseif (_G.SelectIsland == "Khu vực xanh") then
                    topos(CFrame.new(-2258, 73, -2696))
                elseif (_G.SelectIsland == "Đảo thây ma") then
                    topos(CFrame.new(-5552, 194, -776))
                elseif (_G.SelectIsland == "Hai ngọn núi tuyết") then
                    topos(CFrame.new(752, 408, -5277))
                elseif (_G.SelectIsland == "Punk nguy hiểm") then
                    topos(CFrame.new(-5897, 18, -5096))
                elseif (_G.SelectIsland == "Con tàu bị nguyền rủa") then
                    topos(CFrame.new(919, 125, 32869))
                elseif (_G.SelectIsland == "Lâu đài băng") then
                    topos(CFrame.new(5505, 40, -6178))
                elseif (_G.SelectIsland == "Đảo bị lãng quên") then
                    topos(CFrame.new(-3050, 240, -10178))
                elseif (_G.SelectIsland == "Đảo Ussop") then
                    topos(CFrame.new(4816, 8, 2863))
                elseif (_G.SelectIsland == "Dinh Thự") then
                    topos(CFrame.new(-12471, 374, -7551))
                elseif (_G.SelectIsland == "Cảng") then
                    topos(CFrame.new(-334, 7, 5300))
                elseif (_G.SelectIsland == "Pháo đài trên biển") then
                    topos(CFrame.new(-5073, 315, -3153))
                elseif (_G.SelectIsland == "Đảo Hydra") then
                    topos(CFrame.new(5756, 610, -282))
                elseif (_G.SelectIsland == "Cây lớn") then
                    topos(CFrame.new(2681, 1682, -7190))
                elseif (_G.SelectIsland == "Đảo rùa") then
                    topos(CFrame.new(-12528, 332, -8658))
                elseif (_G.SelectIsland == "Đảo Xương") then
                    topos(CFrame.new(-9517, 142, 5528))
                elseif (_G.SelectIsland == "Đảo kem") then
                    topos(CFrame.new(-902, 79, -10988))
                elseif (_G.SelectIsland == "Đảo Đậu Phộng") then
                    topos(CFrame.new(-2062, 50, -10232))
                elseif (_G.SelectIsland == "Đảo Bánh") then
                    topos(CFrame.new(-1897, 14, -11576))
                elseif (_G.SelectIsland == "Đảo kẹo mía") then
                    topos(CFrame.new(-1038, 10, -14076))
                elseif (_G.SelectIsland == "Doanh Trại Tiki") then
                    topos(CFrame.new(-16224, 9, 439))
                end
            until not _G.TeleportIsland
        end
        StopTween(_G.TeleportIsland)
    end
)
v111:Seperator("Khả năng")
v111:Button(
    "Mua Geppo [ 10,000 Beli ]",
    function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Geppo")
    end
)
v111:Button(
    "Mua Haki Vũ Trang [ 25,000 Beli ]",
    function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Buso")
    end
)
v111:Button(
    "Mua Soru [ 25,000 Beli ]",
    function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Soru")
    end
)
v111:Button(
    "Mua Haki Quan Sát [ 750,000 Beli ]",
    function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk", "Buy")
    end
)
v111:Toggle(
    "Mua Tất Cả Những Thứ Ở Trên",
    false,
    function(v799)
        Abilities = v799
        while Abilities do
            wait(0.1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Geppo")
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Buso")
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Soru")
        end
    end
)
v111:Seperator("Phong cách chiến đấu")
v111:Button(
    "Mua Chân Đen V1 [ 150,000 Beli ]",
    function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
    end
)
v111:Button(
    "Mua Võ Điện V1 [ 550,000 Beli ]",
    function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
    end
)
v111:Button(
    "Mua Võ Người Cá V1 [ 750,000 Beli ]",
    function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
    end
)
v111:Button(
    "Mua Hơi Thở Rồng V1 [ 1,500 Fragments ]",
    function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2")
    end
)
v111:Button(
    "Mua Superhuman [ 3,000,000 Beli ]",
    function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
    end
)
v111:Button(
    "Mua Chân Đen V2 [ 5,000 Fragments 5,000,000 Beli ]",
    function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
    end
)
v111:Button(
    "Mua Võ Cá V2 [ 5,000 Fragments 2,500,000 Beli ]",
    function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate", true)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
    end
)
v111:Button(
    "Mua Võ Điện V2 [ 5,000 Fragments 3,000,000 Beli ]",
    function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
    end
)
v111:Button(
    "Mua Võ Rồng V2 [ 5,000 Fragments 3,000,000 Beli ]",
    function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
    end
)
v111:Button(
    "Mua God Human [ 5,000 Fragments 5,000,000 Beli ]",
    function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
    end
)
v111:Button(
    "Mua Huyết Quỷ [ 5,000 Fragments $5,000,000 Beli ]",
    function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt", true)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt")
    end
)
v111:Seperator(" Kiếm ")
v111:Button(
    "Cutlass [ 1,000 Beli ]",
    function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Cutlass")
    end
)
v111:Button(
    "Katana [ 1,000 Beli ]",
    function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Katana")
    end
)
v111:Button(
    "Iron Mace [ 25,000 Beli ]",
    function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Iron Mace")
    end
)
v111:Button(
    "Dual Katana [ 12,000 Beli ]",
    function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Duel Katana")
    end
)
v111:Button(
    "Triple Katana [ 60,000 Beli ]",
    function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Triple Katana")
    end
)
v111:Button(
    "Pipe [ 100,000 Beli ]",
    function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Pipe")
    end
)
v111:Button(
    "Dual-Headed Blade [ 400,000 Beli ]",
    function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Dual-Headed Blade")
    end
)
v111:Button(
    "Bisento [ 1,200,000 Beli ]",
    function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Bisento")
    end
)
v111:Button(
    "Soul Cane [ 750,000 Beli ]",
    function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Soul Cane")
    end
)
v111:Button(
    "Pole v.2 [ 5,000 Fragments ]",
    function()
        game.ReplicatedStorage.Remotes.CommF_:InvokeServer("ThunderGodTalk")
    end
)
v111:Toggle(
    "Yama Sword [ Elite Hunter 30 ]",
    _G.Yama,
    function(v800)
        _G.Yama = v800
    end
)
spawn(
    function()
        while wait() do
            if _G.Yama then
                if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter", "Progress") >= 30) then
                    repeat
                        wait(0.1)
                        fireclickdetector(game:GetService("Workspace").Map.Waterfall.SealedKatana.Handle.ClickDetector)
                    until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Yama") or not _G.Yama
                end
            end
        end
    end
)
v111:Seperator(" Súng ")
v111:Button(
    "Slingshot [ 5,000 Beli ]",
    function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Slingshot")
    end
)
v111:Button(
    "Musket [ 8,000 Beli ]",
    function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Musket")
    end
)
v111:Button(
    "Flintlock [ 10,500 Beli ]",
    function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Flintlock")
    end
)
v111:Button(
    "Refined Slingshot [ 30,000 Beli ]",
    function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Refined Flintlock")
    end
)
v111:Button(
    "Refined Flintlock [ 65,000 Beli ]",
    function()
        local v801 = {[1] = "BuyItem", [2] = "Refined Flintlock"}
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v801))
    end
)
v111:Button(
    "Cannon [ 100,000 Beli ]",
    function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Cannon")
    end
)
v111:Button(
    "Kabucha [ 1,500 Fragments]",
    function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Slingshot", "1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Slingshot", "2")
    end
)
v111:Button(
    "Bizarre Rifle [ 250 Ectoplasm ]",
    function()
        local v802 = "Ectoplasm"
        local v803 = "Buy"
        local v804 = 1
        local v805 = game:GetService("ReplicatedStorage").Remotes["CommF_"]
        v805:InvokeServer(v802, v803, v804)
        local v802 = "Ectoplasm"
        local v803 = "Buy"
        local v804 = 1
        local v805 = game:GetService("ReplicatedStorage").Remotes["CommF_"]
        v805:InvokeServer(v802, v803, v804)
    end
)
v111:Seperator(" Fragments ")
v111:Button(
    "Đặt lại Chỉ Số ( 2.5K F )",
    function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Refund", "1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Refund", "2")
    end
)
v111:Button(
    "Đổi Tộc ( 3K F )",
    function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Reroll", "1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Reroll", "2")
    end
)
v111:Seperator(" Phụ kiện ")
v111:Button(
    "Black Cape [ 50,000 Beli ]",
    function()
        local v806 = {[1] = "BuyItem", [2] = "Black Cape"}
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v806))
    end
)
v111:Button(
    "Swordsman Hat [ 150k Beli ]",
    function()
        local v807 = {[1] = "BuyItem", [2] = "Swordsman Hat"}
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v807))
    end
)
v111:Button(
    "Tomoe Ring [ 500k Beli ]",
    function()
        local v808 = {[1] = "BuyItem", [2] = "Tomoe Ring"}
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v808))
    end
)
v112:Seperator("Trái")
FruitList = {
    "Bomb-Bomb",
    "Spike-Spike",
    "Chop-Chop",
    "Spring-Spring",
    "Kilo-Kilo",
    "Spin-Spin",
    "Bird: Falcon",
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
local v167 = game.ReplicatedStorage:FindFirstChild("Remotes").CommF_:InvokeServer("GetFruits")
Table_DevilFruitSniper = {}
ShopDevilSell = {}
for v809, v810 in next, v167 do
    table.insert(Table_DevilFruitSniper, v810.Name)
    if v810.OnSale then
        table.insert(ShopDevilSell, v810.Name)
    end
end
_G.SelectFruit = ""
v112:Dropdown(
    "Chọn Trái",
    Table_DevilFruitSniper,
    function(v811)
        _G.SelectFruit = v811
    end
)
v112:Toggle(
    "Mua Trái Đã Chọn",
    _G.BuyFruitSniper,
    function(v812)
        _G.BuyFruitSniper = v812
    end
)
v112:Seperator("khác")
v112:Dropdown(
    "Chọn Trái",
    Table_DevilFruitSniper,
    function(v813)
        _G.SelectFruitEat = v813
    end
)
v112:Toggle(
    "Ăn Trái Đã Chọn",
    _G.EatFruit,
    function(v814)
        _G.EatFruit = v814
    end
)
spawn(
    function()
        pcall(
            function()
                while wait(0.1) do
                    if _G.EatFruit then
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild(_G.SelectFruitEat).EatRemote:InvokeServer(

                        )
                    end
                end
            end
        )
    end
)
spawn(
    function()
        pcall(
            function()
                while wait(0.1) do
                    if _G.BuyFruitSniper then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                            "PurchaseRawFruit",
                            "_G.SelectFruit",
                            false
                        )
                    end
                end
            end
        )
    end
)
v112:Button(
    "Quay Trái Ác Quỷ",
    function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin", "Buy")
    end
)
v112:Button(
    "Mở Shop Trái",
    function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
        game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Visible = true
    end
)
v112:Toggle(
    "Tự Động Lưu Trái",
    _G.StoreFruit,
    function(v816)
        _G.StoreFruit = v816
    end
)
spawn(
    function()
        while wait() do
            if _G.StoreFruit then
                pcall(
                    function()
                        if
                            (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bomb Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit"))
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Bomb-Bomb",
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bomb Fruit") or
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit")
                            )
                        end
                        if
                            (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spike Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit"))
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Spike-Spike",
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spike Fruit") or
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit")
                            )
                        end
                        if
                            (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Chop Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit"))
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Chop-Chop",
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Chop Fruit") or
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit")
                            )
                        end
                        if
                            (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spring Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit"))
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Spring-Spring",
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spring Fruit") or
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit")
                            )
                        end
                        if
                            (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kilo Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kilo Fruit"))
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Kilo-Kilo",
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kilo Fruit") or
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kilo Fruit")
                            )
                        end
                        if
                            (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Smoke Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit"))
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Smoke-Smoke",
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Smoke Fruit") or
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit")
                            )
                        end
                        if
                            (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spin Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit"))
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Spin-Spin",
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spin Fruit") or
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit")
                            )
                        end
                        if
                            (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit"))
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Flame-Flame",
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame Fruit") or
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit")
                            )
                        end
                        if
                            (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Falcon Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Falcon Fruit"))
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Bird-Bird: Falcon",
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Falcon Fruit") or
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Falcon Fruit")
                            )
                        end
                        if
                            (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit"))
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Ice-Ice",
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice Fruit") or
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit")
                            )
                        end
                        if
                            (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit"))
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Sand-Sand",
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand Fruit") or
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit")
                            )
                        end
                        if
                            (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit"))
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Dark-Dark",
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark Fruit") or
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit")
                            )
                        end
                        if
                            (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Revive Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Revive Fruit"))
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Revive-Revive",
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Revive Fruit") or
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Revive Fruit")
                            )
                        end
                        if
                            (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Diamond Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit"))
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Diamond-Diamond",
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Diamond Fruit") or
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit")
                            )
                        end
                        if
                            (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit"))
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Light-Light",
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light Fruit") or
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit")
                            )
                        end
                        if
                            (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Love Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit"))
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Love-Love",
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Love Fruit") or
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit")
                            )
                        end
                        if
                            (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rubber Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit"))
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Rubber-Rubber",
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rubber Fruit") or
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit")
                            )
                        end
                        if
                            (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Barrier Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit"))
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Barrier-Barrier",
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Barrier Fruit") or
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit")
                            )
                        end
                        if
                            (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit"))
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Magma-Magma",
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma Fruit") or
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit")
                            )
                        end
                        if
                            (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Door Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Door Fruit"))
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Door-Door",
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Door Fruit") or
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Door Fruit")
                            )
                        end
                        if
                            (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit"))
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Quake-Quake",
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake Fruit") or
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit")
                            )
                        end
                        if
                            (game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                                "Human-Human: Buddha Fruit"
                            ) or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                                    "Human-Human: Buddha Fruit"
                                ))
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Human-Human: Buddha",
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                                    "Human-Human: Buddha Fruit"
                                ) or
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                                        "Human-Human: Buddha Fruit"
                                    )
                            )
                        end
                        if
                            (game:GetService("Players").LocalPlayer.Character:FindFirstChild("String Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("String Fruit"))
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "String-String",
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("String Fruit") or
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("String Fruit")
                            )
                        end
                        if
                            (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix Fruit"))
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Bird-Bird: Phoenix",
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix Fruit") or
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                                        "Bird: Phoenix Fruit"
                                    )
                            )
                        end
                        if
                            (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit"))
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Rumble-Rumble",
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble Fruit") or
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit")
                            )
                        end
                        if
                            (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Paw Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Paw Fruit"))
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Paw-Paw",
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Paw Fruit") or
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Paw Fruit")
                            )
                        end
                        if
                            (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Gravity Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit"))
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Gravity-Gravity",
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Gravity Fruit") or
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit")
                            )
                        end
                        if
                            (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit"))
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Dough-Dough",
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough Fruit") or
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit")
                            )
                        end
                        if
                            (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Shadow Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit"))
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Shadow-Shadow",
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Shadow Fruit") or
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit")
                            )
                        end
                        if
                            (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit"))
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Venom-Venom",
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom Fruit") or
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit")
                            )
                        end
                        if
                            (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Control Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit"))
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Control-Control",
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Control Fruit") or
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit")
                            )
                        end
                        if
                            (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit"))
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Dragon-Dragon",
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Fruit") or
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit")
                            )
                        end
                        if
                            (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Leopard Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Leopard Fruit"))
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Leopard-Leopard",
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Leopard Fruit") or
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Leopard Fruit")
                            )
                        end
                    end
                )
            end
        end
    end
)
v112:Toggle(
    "Dịch Chuyển Đến Trái",
    _G.Grabfruit,
    function(v817)
        _G.Grabfruit = v817
    end
)
spawn(
    function()
        while wait(0.1) do
            if _G.Grabfruit then
                for v2054, v2055 in pairs(game.Workspace:GetChildren()) do
                    if v2055:IsA("Tool") then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v2055.Handle.CFrame
                    end
                end
            end
        end
    end
)
v112:Toggle(
    "Bay Đến Trái",
    _G.Tweenfruit,
    function(v818)
        _G.Tweenfruit = v818
        StopTween(_G.Tweenfruit)
    end
)
spawn(
    function()
        while wait() do
            if _G.Tweenfruit then
                for v2056, v2057 in pairs(game.Workspace:GetChildren()) do
                    if v2057:IsA("Tool") then
                        topos(v2057.Handle.CFrame)
                    end
                end
            end
        end
    end
)
v113:Seperator("Máy Chủ")
v113:Button(
    "Vào Lại Máy Chủ",
    function()
        game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
    end
)
v113:Button(
    "Đổi Máy Chủ",
    function()
        Hop()
    end
)
v113:Button(
    "Đổi Máy Chủ Ít Người",
    function()
        getgenv().AutoTeleport = true
        getgenv().DontTeleportTheSameNumber = true
        getgenv().CopytoClipboard = false
        if not game:IsLoaded() then
            print("Game is loading waiting...")
        end
        local v822 = math.huge
        local v823
        local v824
        local v825 = "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"
        function serversearch()
            for v1796, v1797 in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(v825)).data) do
                if ((type(v1797) == "table") and (v1797.playing ~= nil) and (v822 > v1797.playing)) then
                    v823 = v1797.maxPlayers
                    v822 = v1797.playing
                    v824 = v1797.id
                end
            end
        end
        function getservers()
            serversearch()
            for v1798, v1799 in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(v825))) do
                if (v1798 == "nextPageCursor") then
                    if v825:find("&cursor=") then
                        local v2182 = v825:find("&cursor=")
                        local v2183 = v825:sub(v2182)
                        v825 = v825:gsub(v2183, "")
                    end
                    v825 = v825 .. "&cursor=" .. v1799
                    getservers()
                end
            end
        end
        getservers()
        if AutoTeleport then
            if DontTeleportTheSameNumber then
                if ((#game:GetService("Players"):GetPlayers() - 4) == v822) then
                    return warn("It has same number of players (except you)")
                elseif (v824 == game.JobId) then
                    return warn("Your current server is the most empty server atm")
                end
            end
            game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, v824)
        end
    end
)
v113:Button(
    "Sao chép Id Máy Chủ",
    function()
        setclipboard(tostring(game.JobId))
    end
)
v113:Seperator("linh tinh")
v113:Button(
    "Mở Tilte",
    function()
        local v826 = {[1] = "getTitles"}
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v826))
        game.Players.localPlayer.PlayerGui.Main.Titles.Visible = true
    end
)
v113:Button(
    "Mở Haki Màu",
    function()
        game.Players.localPlayer.PlayerGui.Main.Colors.Visible = true
    end
)
v113:Seperator("Đội")
v113:Button(
    "Tham gia đội Hải Tặc",
    function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", "Pirates")
    end
)
v113:Button(
    "Tham gia đội Thủy quân lục chiến",
    function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", "Marines")
    end
)
v113:Toggle(
    "Chống AFK",
    true,
    function()
        local v829 = game:GetService("VirtualUser")
        repeat
            wait()
        until game:IsLoaded()
        game:GetService("Players").LocalPlayer.Idled:connect(
            function()
                game:GetService("VirtualUser"):ClickButton2(Vector2.new())
                v829:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
                wait(1)
                v829:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
            end
        )
    end
)
v113:Seperator("Mã")
local v168 = {
    "KITTGAMING",
    "ENYU_IS_PRO",
    "FUDD10",
    "BIGNEWS",
    "THEGREATACE",
    "SUB2GAMERROBOT_EXP1",
    "STRAWHATMAIME",
    "SUB2OFFICIALNOOBIE",
    "SUB2NOOBMASTER123",
    "SUB2DAIGROCK",
    "AXIORE",
    "TANTAIGAMIMG",
    "STRAWHATMAINE",
    "JCWK",
    "FUDD10_V2",
    "SUB2FER999",
    "MAGICBIS",
    "TY_FOR_WATCHING",
    "STARCODEHEO"
}
v113:Button(
    "Nhập Tất Cả Mã",
    function()
        function RedeemCode(v1143)
            game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(v1143)
        end
        for v1144, v1145 in pairs(v168) do
            RedeemCode(v1145)
        end
    end
)
v113:Dropdown(
    "Chọn Mã Reset Chỉ Số",
    {"NOOB_REFUND", "SUB2GAMERROBOT_RESET1", "Sub2UncleKizaru"},
    function(v830)
        _G.CodeSelect = v830
    end
)
v113:Button(
    "Nhập Mã Đã Chọn",
    function()
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(_G.CodeSelect)
    end
)
v113:Seperator("Tình trạng")
v113:Dropdown(
    "Chọn trạng thái Haki",
    {"Tình trạng 0", "Tình trạng 1", "Tình trạng 2", "Tình trạng 3", "Tình trạng 4", "Tình trạng 5"},
    function(v831)
        _G.SelectStateHaki = v831
    end
)
v113:Button(
    "Thay đổi trạng thái Haki",
    function()
        if (_G.SelectStateHaki == "Tình trạng 0") then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage", 0)
        elseif (_G.SelectStateHaki == "Tình trạng 1") then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage", 1)
        elseif (_G.SelectStateHaki == "Tình trạng 2") then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage", 2)
        elseif (_G.SelectStateHaki == "Tình trạng 3") then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage", 3)
        elseif (_G.SelectStateHaki == "Tình trạng 4") then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage", 4)
        elseif (_G.SelectStateHaki == "Tình trạng 5") then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage", 5)
        end
    end
)
local v169 = require(game.ReplicatedStorage.Util.CameraShaker)
v169:Stop()
local v170 = game:GetService("Players")
game:GetService("StarterGui"):SetCore(
    "SendNotification",
    {
        Title = "KimP Roblox V3",
        Text = "Đã tải xong",
        Icon = "rbxthumb://type=Asset&id=139290470944238&w=150&h=150",
        Duration = 10
    }
)
