
local p = game.Players.LocalPlayer
local c = p.Character or p.CharacterAdded:Wait()
local h = c:WaitForChild("HumanoidRootPart")
h.Anchored = true
 
 delay(0.9, function()
    
local p = game.Players.LocalPlayer
local c = p.Character or p.CharacterAdded:Wait()
local h = c:WaitForChild("HumanoidRootPart")
h.Anchored = false
    
end)

local a = "rbxassetid://7815618175"
local b = game.Players.LocalPlayer
local c = b.Character or b.CharacterAdded:Wait()
local d = c:WaitForChild("Humanoid")
local e = game:GetService("RunService")

local f

local function checkAnimation()
    for _, g in ipairs(d:GetPlayingAnimationTracks()) do
        if g.Animation.AnimationId == a then
            g:Stop()
        end
    end
end

f = e.RenderStepped:Connect(checkAnimation)

task.delay(0.9, function()
    f:Disconnect()
end)

local P = game.Players.LocalPlayer
   local H = P.Character:WaitForChild("Humanoid")

    local A = Instance.new("Animation")
     A.AnimationId = "rbxassetid://16945573694"
      local T = H:LoadAnimation(A)
       A.AnimationId = "rbxassetid://0"
        T:Play()

local k = Instance.new("Sound", game.Players.LocalPlayer.Character.Torso)
k.Name = "start"
k.SoundId = "rbxassetid://16945495411"
k.Volume = 2
k:Play()

task.delay(0.67, function()
  
  local p = game.Players.LocalPlayer
local c = p.Character or p.CharacterAdded:Wait()
local r = c:WaitForChild("HumanoidRootPart")

local o = r.Position
local d = r.CFrame.LookVector * 4
local params = RaycastParams.new()
params.FilterDescendantsInstances = {c}

local res = workspace:Raycast(o, d, params)

if res and res.Instance.Parent:FindFirstChild("HumanoidRootPart") then
    local m = res.Instance.Parent
    local h = m:FindFirstChild("HumanoidRootPart")
    local hu = m:FindFirstChild("Humanoid")

    if h and hu then
        h.CFrame = r.CFrame * CFrame.new(0, 0, -3)
        h.CFrame = CFrame.lookAt(h.Position, r.Position)

        local a = Instance.new("Animation")
        a.AnimationId = "rbxassetid://16945557433"
        local t = hu:LoadAnimation(a)
        t:Play()
      
local P = game.Players.LocalPlayer
   local H = P.Character:WaitForChild("Humanoid")

    local A = Instance.new("Animation")
     A.AnimationId = "rbxassetid://16945550029"
      local T = H:LoadAnimation(A)
       A.AnimationId = "rbxassetid://0"
        T:Play()
     
local a = "rbxassetid://7815618175"
local b = game.Players.LocalPlayer
local c = b.Character or b.CharacterAdded:Wait()
local d = c:WaitForChild("Humanoid")
local e = game:GetService("RunService")

local f

local function checkAnimation()
    for _, g in ipairs(d:GetPlayingAnimationTracks()) do
        if g.Animation.AnimationId == a then
            g:Stop()
        end
    end
end

f = e.RenderStepped:Connect(checkAnimation)

task.delay(6.2, function()
    f:Disconnect()
end)
  
  task.spawn(function()
   
   task.delay(5.1, function()
    
    task.spawn(function()
     
task.spawn(function()
     
local R = game:GetService("RunService")
local P = game.Players.LocalPlayer
local C = workspace.CurrentCamera

local M = 1
local D = 0.3
local RD = 0.3

local OC = C.CFrame

local function s(d, m, rd)
    local st = tick()
    local c

    c = R.RenderStepped:Connect(function()
        local e = tick() - st
        if e < d then
            local sx = math.random(-m, m)
            local sy = math.random(-m, m)
            C.CFrame = C.CFrame * CFrame.Angles(math.rad(sx), math.rad(sy), 0)
        else
            c:Disconnect()
            wait(rd)
        end
    end)
end

s(D, M, RD)

    end)
     
     local Attachment = game.ReplicatedStorage.Resources.KJEffects["lastkick"].Attachment:Clone()
Attachment.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
    for _, child in ipairs(Attachment:GetChildren()) do
        if child:IsA("ParticleEmitter") then
child:Emit(7)
        end
    end

local smoker = game.ReplicatedStorage.Resources.KJEffects["lastkick"].smoker:Clone()
smoker.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
    for _, child in ipairs(smoker:GetChildren()) do
        if child:IsA("ParticleEmitter") then
child:Emit(8)
        end
    end
     
    end)
    
    local r = game:GetService("ReplicatedStorage")
local p = game.Players.LocalPlayer
local c = p.Character or p.CharacterAdded:Wait()
local h = c:WaitForChild("HumanoidRootPart")
local e = r:WaitForChild("Resources"):WaitForChild("KJEffects")
local s = {"Start", "End", "KickShockwave", "KickShockwave2"}

for _, v in ipairs(s) do
    local f = e:WaitForChild(v):Clone()
    f.Parent = workspace
    f.CFrame = h.CFrame * CFrame.new(0, 0, -5) * CFrame.Angles(math.rad(-90), 0, 0)

    task.delay(0.05, function()
        f:Destroy()
    end)
end
    
   end)
    
delay(5.4, function()
   
 local k = Instance.new("Sound", game.Players.LocalPlayer.Character.Torso)
k.Name = "explode"
k.SoundId = "rbxassetid://16945723339"
k.Volume = 2
k:Play()
 
 task.delay(0.8, function()
  
  local p = game.Workspace:FindFirstChild("NoRotation")
if p then
    p:Destroy()
end
  
 end)

end)
    
local k = Instance.new("Sound", game.Players.LocalPlayer.Character.Torso)
k.Name = "hit (1)"
k.SoundId = "rbxassetid://16945517708"
k.Volume = 2
k:Play()

local k = Instance.new("Sound", game.Players.LocalPlayer.Character.Torso)
k.Name = "consecutive"
k.SoundId = "rbxassetid://16945593216"
k.Volume = 2
k:Play()

local k = Instance.new("Sound", game.Players.LocalPlayer.Character.Torso)
k.Name = "wind"
k.SoundId = "rbxassetid://16945691441"
k.Volume = 2
k:Play()
  
local p = game.Players.LocalPlayer
local c = p.Character or p.CharacterAdded:Wait()
local h = c:WaitForChild("HumanoidRootPart")

local a = Instance.new("Part")
a.Size = Vector3.new(1, 1, 1)
a.Anchored = true
a.CanCollide = true
a.Position = h.Position
a.Transparency = 1
a.Name = "NoRotation"
a.Parent = workspace

local w = Instance.new("WeldConstraint")
w.Part0 = a
w.Part1 = h
w.Parent = a
    
  end)
  
  local rs = game:GetService("ReplicatedStorage")
local ws = game:GetService("Workspace")
local plr = game.Players.LocalPlayer

local r = rs:WaitForChild("Resources")
local k = r:WaitForChild("KJEffects")
local p = k:WaitForChild("Ultikwind1")

local c = p:Clone()
c.Parent = ws:WaitForChild("Thrown")

local char = plr.Character or plr.CharacterAdded:Wait()
local hrp = char:WaitForChild("HumanoidRootPart")

local pos = hrp.Position + (hrp.CFrame.LookVector * 2)
c.Position = pos
c.CFrame = CFrame.new(pos, hrp.Position) * CFrame.Angles(0, math.rad(-90), 0)

for _, v in ipairs(c:GetChildren()) do
    if v:IsA("SpecialMesh") then
        v.Scale = Vector3.new(0.14, 0.30, 0.30)
    end
end

task.delay(0.04, function()

c:Destroy()

end)
  
task.delay(1.19, function()
 
local p = game.Players.LocalPlayer
local c = p.Character or p.CharacterAdded:Wait()
local h = c:WaitForChild("HumanoidRootPart")

local r = game:GetService("ReplicatedStorage")
local rs = r.Resources
local ke = rs.KJEffects
local p1 = ke["1and2"]
local p2 = ke["1and2smoke"]

local p1_c = p1:Clone()
p1_c.CFrame = h.CFrame * CFrame.new(0, 0, -3)

local p2_c = p2:Clone()
p2_c.CFrame = h.CFrame * CFrame.new(0, 0, -5)

local t = c:FindFirstChild("Thrown") or Instance.new("Folder", c)
t.Name = "Thrown"

p1_c.Parent = t
p2_c.Parent = t

local a1 = p1_c:FindFirstChild("1and2")
if a1 then
    for _, e in pairs(a1:GetDescendants()) do
        if e:IsA("ParticleEmitter") then
            e:Emit(28)
        end
    end
end

local a2 = p2_c:FindFirstChild("1and2smoke")
if a2 then
    for _, e in pairs(a2:GetDescendants()) do
        if e:IsA("ParticleEmitter") then
            e:Emit(18)
        end
    end
end

  task.delay(0.48, function()
   
    local p = game.Players.LocalPlayer
local c = p.Character or p.CharacterAdded:Wait()
local h = c:WaitForChild("HumanoidRootPart")

local r = game:GetService("ReplicatedStorage")
local rs = r.Resources
local ke = rs.KJEffects
local p1 = ke["1and2"]
local p2 = ke["1and2smoke"]

local p1_c = p1:Clone()
p1_c.CFrame = h.CFrame * CFrame.new(0, 0, -3)

local p2_c = p2:Clone()
p2_c.CFrame = h.CFrame * CFrame.new(0, 0, -5)

local t = c:FindFirstChild("Thrown") or Instance.new("Folder", c)
t.Name = "Thrown"

p1_c.Parent = t
p2_c.Parent = t

local a1 = p1_c:FindFirstChild("1and2")
if a1 then
    for _, e in pairs(a1:GetDescendants()) do
        if e:IsA("ParticleEmitter") then
            e:Emit(28)
        end
    end
end

local a2 = p2_c:FindFirstChild("1and2smoke")
if a2 then
    for _, e in pairs(a2:GetDescendants()) do
        if e:IsA("ParticleEmitter") then
            e:Emit(18)
        end
    end
end
    
delay(0.5, function()

local BARRAGESMOKE = game.ReplicatedStorage.Resources.KJEffects["BARRAGESMOKE"].BARRAGESMOKE:Clone()
BARRAGESMOKE.Parent = game.Players.LocalPlayer.Character["Torso"]
    for _, child in ipairs(BARRAGESMOKE:GetChildren()) do
        if child:IsA("ParticleEmitter") then
child:Emit(50)
child.Enabled = true
child.Rate = 10000
        end
    end
    
    local a = game:GetService("ReplicatedStorage")
local b = game:GetService("Workspace")
local c = game:GetService("Players")
local d = c.LocalPlayer
local e = d.Character
if not e then
    e = d.CharacterAdded:Wait()
end
local f = e:WaitForChild("HumanoidRootPart")
local g = a:FindFirstChild("Resources")
if not g then
    return
end
local h = g:FindFirstChild("KJEffects")
if not h then
    return
end
local i = h:FindFirstChild("barrage")
if not i then
    return
end
local j = i:Clone()
j.Parent = b
local k = f.CFrame.LookVector * 3
local l = f.CFrame + k
local m = CFrame.Angles(math.rad(47), 0, 0)
j.CFrame = l * m

local r = game:GetService("RunService")

local function n(o)
    for _, p in pairs(o:GetDescendants()) do
        if p:IsA("ParticleEmitter") then
                  p.Enabled = true
            local delay = math.random() * 0.2 + 0.2
            r.Heartbeat:Connect(function()
                if delay <= 0 then
                    p:Emit(7)
                    delay = math.random() * 0.2 + 0.2
                else
                    delay = delay - r.Heartbeat:Wait()
                end
            end)
        end
    end
end

n(j)
    
delay(1.21, function()
 
    j:Destroy()
    
local p = game.Players.LocalPlayer
local c = p.Character or p.CharacterAdded:Wait()

local function d()
    local t = c:WaitForChild("Torso")
    local a = t:FindFirstChild("BARRAGESMOKE")
    
    if a then
        a:Destroy()
    end
end

d()

local TweenService = game:GetService("TweenService")

local v820 = {
    Character = game.Players.LocalPlayer.Character,
    ShowaveCF = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 9, 0) * CFrame.Angles(0, 0, math.rad(90)),
    CF = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame,
}

local function v483(params)
    local origin = params.orig
    local direction = params.dir
    local ray = Ray.new(origin, direction)
    local part, position = workspace:FindPartOnRay(ray)
    return part, position
end

local _ = v820.Character.PrimaryPart
local v1398 = game.ReplicatedStorage:WaitForChild("Resources"):WaitForChild("KJEffects")
local l_CF_0 = v820.CF
local l_ShowaveCF_0 = v820.ShowaveCF
local v1402 = v1398:WaitForChild("uppercutimpact"):Clone()
local v3 = TweenService

v1402.CFrame = l_CF_0
v1402.Parent = workspace:WaitForChild("Thrown")

v3:Create(v1402, TweenInfo.new(0.06, Enum.EasingStyle.Circular, Enum.EasingDirection.Out), {
    CFrame = v1402.CFrame * CFrame.new(0, 7.076, 0)
}):Play()

v3:Create(v1402:FindFirstChild("Mesh"), TweenInfo.new(0.06, Enum.EasingStyle.Circular, Enum.EasingDirection.Out), {
    Scale = Vector3.new(0.7, 0, 0)
}):Play()

local v1403 = v1398:WaitForChild("uppercutmesh"):Clone()
v1403.CFrame = l_ShowaveCF_0
v1403.Parent = workspace:WaitForChild("Thrown")

v3:Create(v1403, TweenInfo.new(0.25, Enum.EasingStyle.Circular, Enum.EasingDirection.Out), {
    CFrame = v1403.CFrame * CFrame.new(-11.931, 0, 0) * CFrame.Angles(-math.pi, 0, 0)
}):Play()

v3:Create(v1403:FindFirstChild("Mesh"), TweenInfo.new(0.25, Enum.EasingStyle.Circular, Enum.EasingDirection.Out), {
    Scale = Vector3.new(0, 0.6, 0.6)
}):Play()

v3:Create(v1403:FindFirstChild("Decal"), TweenInfo.new(0.25, Enum.EasingStyle.Circular, Enum.EasingDirection.Out), {
    Transparency = 1
}):Play()

local v1404, v1405 = v483({
    orig = l_CF_0.Position + Vector3.yAxis, 
    dir = Vector3.new(0, -50, 0)
})
if v1404 then
    local l_Color_0 = v1404.Color
    local v1407 = v1398:WaitForChild("UPPERCUTSMOKE"):Clone()
    v1407.Size = Vector3.new(5, 5, 5)
    v1407.Position = v1405
    v1407.Parent = workspace:WaitForChild("Thrown")
    v1407.UPPERCUTSMOKE["1"].Color = ColorSequence.new(l_Color_0)
    v1407.UPPERCUTSMOKE["2"].Color = ColorSequence.new(l_Color_0)
    for _, child in ipairs(v1407:GetChildren()) do
        if child:IsA("ParticleEmitter") then
            child:Emit(6)
        end
    end
    game:GetService("Debris"):AddItem(v1407, 2)
end

game:GetService("Debris"):AddItem(v1403, 1)
game:GetService("Debris"):AddItem(v1402, 1)

local UPPERCUTSMOKE = game.ReplicatedStorage.Resources.KJEffects["UPPERCUTSMOKE"].UPPERCUTSMOKE:Clone()
UPPERCUTSMOKE.Parent = game.Players.LocalPlayer.Character:WaitForChild("Torso")
for _, child in ipairs(UPPERCUTSMOKE:GetChildren()) do
    if child:IsA("ParticleEmitter") then
        child:Emit(6)
    end
end
  
task.delay(0.7, function()
 
 local r = game.ReplicatedStorage.Resources.KJEffects
local s = r["Left Leg"].speedlines:Clone()
local t = r["Left Leg"].starries:Clone()

s.Parent = game.Players.LocalPlayer.Character["Left Leg"]
t.Parent = game.Players.LocalPlayer.Character["Left Leg"]

if s:IsA("ParticleEmitter") then
    s.Enabled = true
    s.Rate = 10000
    s:Emit(11)
end

if t:IsA("ParticleEmitter") then
    t.Enabled = true
    t.Rate = 10000
    t:Emit(11)
 
 task.delay(1.2, function()
  
  t.Rate = 0
  t:Emit(11)
  
  s.Rate = 0
  s:Emit(11)
  
 end)
 
end
  
  local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local torso = character:WaitForChild("HumanoidRootPart")


local function createRock(size)
    local rock = Instance.new("Part")
    rock.Size = size
    rock.Shape = Enum.PartType.Block
    rock.Anchored = false
    rock.CanCollide = true
    rock.Material = Enum.Material.Slate
    rock.BrickColor = BrickColor.Gray()
    rock.Parent = workspace

    local bodyAngularVelocity = Instance.new("BodyAngularVelocity")
    bodyAngularVelocity.MaxTorque = Vector3.new(4000, 4000, 4000)
    bodyAngularVelocity.P = 3000
    bodyAngularVelocity.Parent = rock

    local randomDirection = Vector3.new(
        math.random() * 2 - 1,
        math.random() * 2 - 1,
        math.random() * 2 - 1
    ).unit
    local spinSpeed = math.random(50, 150)
    bodyAngularVelocity.AngularVelocity = randomDirection * spinSpeed

    return rock, bodyAngularVelocity
end

local function rotateRocks(rotationSpeed, fallDelay, launchSpeed, verticalForce, spinSpeed, slideSpeed, slideDuration, shrinkDuration)
    local rocks = {}
    local numberOfRocks = 12  
    local radius = 10
    local rockHeight = 0.3

    for i = 1, numberOfRocks do
        local angle = (i / numberOfRocks) * math.pi * 2
        local size = Vector3.new(0.3, 0.3, 0.3)
        if i % 2 == 0 then
            size = Vector3.new(0.65, 0.65, 0.65)
        end
        local rock, bodyAngularVelocity = createRock(size)
        local offsetX = math.cos(angle) * radius
        local offsetZ = math.sin(angle) * radius

        rock.Position = torso.Position + Vector3.new(offsetX, rockHeight, offsetZ)
        table.insert(rocks, { rock = rock, bodyAngularVelocity = bodyAngularVelocity })
    end

    local runService = game:GetService("RunService")
    local startTime = tick()
    local connection
    connection = runService.RenderStepped:Connect(function()
        local elapsed = tick() - startTime
        local angleStep = (elapsed * rotationSpeed) % (math.pi * 2)

        if elapsed >= 0.6 then
            rotationSpeed = math.max(rotationSpeed * 0.95, 1)
        end

        for i, rockData in ipairs(rocks) do
            local rock = rockData.rock
            local angle = (i / numberOfRocks) * math.pi * 2 + angleStep
            local offsetX = math.cos(angle) * radius
            local offsetZ = math.sin(angle) * radius
            rock.Position = torso.Position + Vector3.new(offsetX, rockHeight, offsetZ)
        end

        if elapsed >= fallDelay then
            connection:Disconnect()
            for _, rockData in ipairs(rocks) do
                local rock = rockData.rock
                local bodyAngularVelocity = rockData.bodyAngularVelocity
                if bodyAngularVelocity then
                    bodyAngularVelocity:Destroy()
                end

                local tangentialVelocity = launchSpeed * (1 + math.random(-10, 10) / 100)  
                local bodyVelocity = Instance.new("BodyVelocity")
                local outwardDirection = (rock.Position - torso.Position).unit
                local randomHorizontal = Vector3.new(math.random(-1, 1), 0, math.random(-1, 1)) * 0.3  
                bodyVelocity.Velocity = (outwardDirection + randomHorizontal).unit * tangentialVelocity + Vector3.new(0, verticalForce, 0)
                bodyVelocity.P = 1000
                bodyVelocity.Parent = rock

                local dust = Instance.new("ParticleEmitter")
                dust.Texture = "rbxassetid://3527866534"  
                dust.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 2), NumberSequenceKeypoint.new(1, 0)})
                dust.Lifetime = NumberRange.new(0.5, 1)
                dust.Rate = 100
                dust.Speed = NumberRange.new(5, 10)
                dust.Parent = rock
                dust:Emit(50)

                rock.Touched:Connect(function(hit)
                    if hit:IsA("Terrain") or (hit:IsA("BasePart") and hit.CanCollide) then
                        bodyVelocity:Destroy()

                        local glideVelocity = outwardDirection * slideSpeed
                        local glideStartTime = tick()

                        local glideConnection
                        glideConnection = runService.RenderStepped:Connect(function()
                            local glideElapsed = tick() - glideStartTime
                            if glideElapsed >= slideDuration then
                                glideConnection:Disconnect()
                                rock.Velocity = Vector3.new(0, 0, 0)


                                local shrinkStartTime = tick()
                                local shrinkConnection
                                shrinkConnection = runService.RenderStepped:Connect(function()
                                    local shrinkElapsed = tick() - shrinkStartTime
                                    local scale = math.max(0, rock.Size.X * (1 - (shrinkElapsed / shrinkDuration)))
                                    rock.Size = Vector3.new(scale, scale, scale)
                                    rock.Position = rock.Position - Vector3.new(0, (rock.Size.Y - scale) / 2, 0)

                                    if scale <= 0 then
                                        shrinkConnection:Disconnect()
                                        rock:Destroy()
                                    end
                                end)
                            else
                                rock.Velocity = glideVelocity * (1 - (glideElapsed / slideDuration))
                            end
                        end)
                    end
                end)
            end
        end
    end)
end


local rotationSpeed = 12
local fallDelay = 0.65
local launchSpeed = 25
local verticalForce = -10
local spinSpeed = 1200
local slideSpeed = 30
local slideDuration = 0.7
local shrinkDuration = 2.5

rotateRocks(rotationSpeed, fallDelay, launchSpeed, verticalForce, spinSpeed, slideSpeed, slideDuration, shrinkDuration)

local a = game.ReplicatedStorage.Resources.KJEffects["RUNAROUNDWIND"].RUNAROUNDWIND:Clone()
a.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
    for _, b in ipairs(a:GetChildren()) do
        if b:IsA("ParticleEmitter") then
            b:Emit(5)
            b.Rate = 145
            b.Enabled = true

task.delay(0.6, function()

b.Rate = 0

end)

        end
    end
    
         if Hitted.Humanoid.Health < 25 or Hitted.Humanoid.Health == 25 then
                                BodyV.Velocity = Humanoid.RootPart.CFrame.LookVector * 300 + Humanoid.RootPart.CFrame.UpVector * 100
                                shared.repfire({
                                    Effect = "Wall Collision", 
                                    root = Hitted.PrimaryPart, 
                                    NoCrater = "skysnatcher",
                                    nosound = false, 
                                    stronger = 100,
                                    Seed = math.random(100,500)
                                })
                                
                                Hitted.Humanoid.Health = 0
    
    

local r = game.ReplicatedStorage:FindFirstChild("Resources")
if r then
    local k = r:FindFirstChild("KJEffects")
    if k then
        local p = k:FindFirstChild("spinbeam")
        if p then
            local d = p:Clone()
            local c = game.Players.LocalPlayer.Character
            local hrp = c and c:FindFirstChild("HumanoidRootPart")
            if hrp then
                d.Parent = game.Workspace:FindFirstChild("Thrown") or Instance.new("Folder", game.Workspace)
                d.CFrame = hrp.CFrame * CFrame.new(0, -2, 11)

                local b = d:FindFirstChild("beam2")
                if b then
                    local beams = b:GetDescendants()
                    for _, beam in ipairs(beams) do
                        if beam:IsA("Beam") then
                            beam.Enabled = true
                            beam.Transparency = NumberSequence.new(1)

                            local g = 0.8
                            local s = (1 - g) / 10
                            local ct = 1
                            local rs = game:GetService("RunService")

                            for i = 1, 10 do
                                rs.Heartbeat:Wait()
                                ct = ct - s
                                beam.Transparency = NumberSequence.new(ct)
                            end

                            task.delay(0.28, function()
                                local f = (1 - g) / 10
                                for i = 1, 10 do
                                    rs.Heartbeat:Wait()
                                    g = g + f
                                    beam.Transparency = NumberSequence.new(math.min(g, 1))
                                end
                            end)
                        end
                    end
                end
            end
        end
    end
end
  
end)

end)

end)
    
  end)
  
end)
      
    end
end
  
end)
  
