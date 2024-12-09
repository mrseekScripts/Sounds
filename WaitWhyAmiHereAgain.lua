local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")
    local Debris = game:GetService("Debris")
    local Players = game:GetService("Players")
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    
    local Thrown = workspace.Thrown
    local Replication = ReplicatedStorage.Replication
    local character = game.Players.LocalPlayer.Character
        local PrimaryPart = character.PrimaryPart
        local Humanoid = character.Humanoid
    
        for i,v in pairs(Humanoid:GetPlayingAnimationTracks()) do
            v:Stop()
        end
        
        local hitboxtransp = 1
    
        local attacking = Instance.new("Accessory", character)
        attacking.Name = "attacking"
    
        local freeze = Instance.new("Accessory", character)
        freeze.Name = "Freeze"
        freeze:SetAttribute("NoStop", true)
    
        local CollateralRuin = Instance.new("Animation")
        CollateralRuin.AnimationId = "rbxassetid://17325254223"
        local CollateralRuinTrack = Humanoid:LoadAnimation(CollateralRuin)
        CollateralRuin.AnimationId = "rbxassetid://0"
        CollateralRuinTrack:Play()
        CollateralRuinTrack:AdjustSpeed(1)
    
    
        
    
        local spinnerthing = ReplicatedStorage.Resources.KJEffects.spinnerthing:Clone()
    
        CollateralRuinTrack:GetMarkerReachedSignal("SpinnerSmokeEffect"):Connect(function()
            spinnerthing.Parent = Thrown
            spinnerthing.CFrame = PrimaryPart.CFrame
            spinnerthing.Anchored = true
    
            for _, Particles in pairs(spinnerthing:GetDescendants()) do
                if Particles:IsA("ParticleEmitter") then
                    Particles.Enabled = true
                end
            end
        end)
    
        local FirstHitTargets = {}
        
        CollateralRuinTrack:GetMarkerReachedSignal("StartHitbox"):Connect(function()
            local HitboxSize = Vector3.new(18, 18, 18)
            local HitPos = PrimaryPart.CFrame
    
            local Hitbox = Instance.new("Part", Thrown)
            Hitbox.CFrame = HitPos
            Hitbox.Size = HitboxSize
            Hitbox.CanTouch = true
            Hitbox.CanCollide = false
            Hitbox.CanQuery = false
            Hitbox.Transparency = hitboxtransp
     
            local firstHit = false
            local tim = 0.35
    
            Hitbox.Touched:Connect(function(hitPart)
                local hitParent = hitPart.Parent
                if hitParent and hitParent:FindFirstChild("Humanoid") and hitParent ~= character and not FirstHitTargets[hitParent] then
                    if hitParent:FindFirstChild("AbsoluteImmortal") then
                        return
                    end
                    if not hitParent:FindFirstChild("Humanoid") then
                        return
                    end
    
                    FirstHitTargets[hitParent] = true
                    local HPrimaryPart = hitParent.PrimaryPart
                    local HHumanoid = hitParent.Humanoid
                    
                
                    HHumanoid.RootPart.CFrame = CFrame.lookAt(HHumanoid.RootPart.Position, Humanoid.RootPart.Position)
    
                    tim = tim + 0.1
                    
                    local impactEffect = firstHit and "KJImpact" or "FirstImpact"
                    firstHit = true
    
                    shared.repfire({
                        Effect = impactEffect,
                        Char = character,
                        hit = hitParent,
                        tim = tim
                    })
                    
                    
    
                    local freeze = Instance.new("Accessory", hitParent)
                    freeze.Name = "freeze"
                    freeze:SetAttribute("NoStop", true)
    
                    
    
    
                    for _, Particles in pairs(spinnerthing:GetDescendants()) do
                        if Particles:IsA("ParticleEmitter") then
                            Particles.TimeScale = 0
                        end
                    end
    
                    Humanoid.AutoRotate = false
                    HHumanoid.AutoRotate = false
                    PrimaryPart.Anchored = true
                    HPrimaryPart.Anchored = true
                    
                    CollateralRuinTrack:AdjustSpeed(0)
    
                    task.wait(tim)
                    
                    CollateralRuinTrack:AdjustSpeed(1)
                    
                    
                    
                    HHumanoid:TakeDamage(8)
                    
    
                    for _, Particles in pairs(spinnerthing:GetDescendants()) do
                        if Particles:IsA("ParticleEmitter") then
                            Particles.TimeScale = 1
                        end
                    end
    
                    Humanoid.AutoRotate = true
                    HHumanoid.AutoRotate = true
                    PrimaryPart.Anchored = false
                    HPrimaryPart.Anchored = false
    
                    CollateralRuinTrack:AdjustSpeed(1)
                    
    
                
    
                    local BodyV = Instance.new("BodyVelocity", HPrimaryPart)
                    BodyV.MaxForce = Vector3.new(1, 1, 1) * 100_000_000
                    BodyV.Velocity = HPrimaryPart.CFrame.LookVector * -29.5 + HPrimaryPart.CFrame.UpVector * 70
                    Debris:AddItem(BodyV, .1)
    
                    HHumanoid:TakeDamage(6)
                
    
                    
                end
            end)
    
            Debris:AddItem(Hitbox, 1)
        end)
    
        CollateralRuinTrack:GetMarkerReachedSignal("DownMesh"):Connect(function()
        
            
    
            shared.repfire({
                Effect = "SpinnerDownwardMesh",
                char = character
            })
    
            shared.repfire({
                Effect = "EndingWind",
                char = character
            })
    
            spinnerthing:Destroy()
    
            local SecondHitboxSize = Vector3.new(26, 22, 26)
            local SecondHitPos = PrimaryPart.CFrame
    
            local SecondHitbox = Instance.new("Part", Thrown)
            SecondHitbox.CFrame = SecondHitPos
            SecondHitbox.Size = SecondHitboxSize
            SecondHitbox.CanTouch = true
            SecondHitbox.CanCollide = false
            SecondHitbox.CanQuery = false
            SecondHitbox.Transparency = hitboxtransp
    
            SecondHitbox.Touched:Connect(function(hitPart)
                local hitParent = hitPart.Parent
                if hitParent and hitParent:FindFirstChild("Humanoid") and hitParent ~= character and not FirstHitTargets[hitParent] then
                    FirstHitTargets[hitParent] = true
                    local HPrimaryPart = hitParent.PrimaryPart
                    local HHumanoid = hitParent.Humanoid
    
                    local freeze = Instance.new("Accessory", hitParent)
                    freeze.Name = "freeze"
                    freeze:SetAttribute("NoStop", true)
    
                    HHumanoid:TakeDamage(5)
                    
    
                    
                    
                    HHumanoid.RootPart.CFrame = CFrame.lookAt(HHumanoid.RootPart.Position, Humanoid.RootPart.Position)
    
                    local BodyV = Instance.new("BodyVelocity", HPrimaryPart)
                    BodyV.MaxForce = Vector3.new(1, 1, 1) * 100_000_000
                    BodyV.Velocity = HPrimaryPart.CFrame.LookVector * -60 / 1.65 + HPrimaryPart.CFrame.UpVector * 50
                    Debris:AddItem(BodyV, .1)
                    
                    
    
    
            Debris:AddItem(SecondHitbox, 1)
    end
    end)
    end)
    
            if attacking and freeze then
                attacking:Destroy()
                freeze:Destroy()
end
