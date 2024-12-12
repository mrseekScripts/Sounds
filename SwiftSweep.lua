local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")

    local replicatedStorage = game:GetService("ReplicatedStorage")
    local debris = game:GetService("Debris")
    local players = game:GetService("Players")
    local tweenService = game:GetService("TweenService")
    
    local Replication = replicatedStorage.Replication
    
    local variant = false
    local Character = game.Players.LocalPlayer.Character
        local Humanoid = Character:FindFirstChildWhichIsA("Humanoid")
        local RootPart = Humanoid.RootPart
        local Torso = Character.Torso
    
        local Player = players:GetPlayerFromCharacter(Character)
    
        
    
        local Grab = Instance.new("Animation")
    Grab.AnimationId = "rbxassetid://16944265635"
        local Hit = Instance.new("Animation")
    Hit.AnimationId = "rbxassetid://16944345619"
        
        local freeze = Instance.new("Accessory", Character)
        freeze.Name = "Freeze"
        freeze:SetAttribute("NoStop", true)
    
        local attacking = Instance.new("Accessory", Character)
        attacking.Name = "attacking"
    
        local GrabTrack = Humanoid:LoadAnimation(Grab)
        local HitTrack = Humanoid:LoadAnimation(Hit)
    Grab.AnimationId = "rbxassetid://0"
    
    Hit.AnimationId = "rbxassetid://0"
        local hitList = {}
        variant = false
    
        GrabTrack:GetMarkerReachedSignal("StartSweepEffects"):Connect(function()
            shared.repfire({Effect = "Swift Sweep", Character = Character})
            
        end)
    
        GrabTrack:GetMarkerReachedSignal("Hitbox"):Connect(function()
            attacking:Destroy()
            freeze:Destroy()
            local Hitbox = Instance.new("Part")
            Hitbox.Size = Vector3.new(4, 5, 4)
            Hitbox.Transparency = 1
            Hitbox.Anchored = false
            Hitbox.CanCollide = false
            Hitbox.Parent = workspace.Thrown
            Hitbox.Massless = true
            Hitbox.CFrame = RootPart.CFrame
            
            local Weld = Instance.new("Weld", Hitbox)
            Weld.Part0 = Hitbox
            Weld.Part1 = Humanoid.RootPart
    
            Weld.C1 = CFrame.new(0,0,-3)
    
            debris:AddItem(Hitbox, 0.2)
    
            for _, v in pairs(workspace:GetPartsInPart(Hitbox)) do
                if v.Parent:FindFirstChild("Humanoid") and v.Parent ~= Character then
                    if v.Parent:FindFirstChild("Hit by:".. Character.Name) == nil then
                        local Target = v.Parent
                        local THumanoid = Target.Humanoid
                        if Target:FindFirstChild("AbsoluteImmortal") then
                            return
                        end
                        if not Target:FindFirstChild("Humanoid") then
                            return
                        end
                        
                        
                        
                        Target:SetAttribute('Ragdolled', false)
    
                        local x = Instance.new("Accessory", Target)
                        x.Name = "Hit by:".. Character.Name
                        debris:AddItem(x, 0.2)
                        THumanoid.RootPart.CFrame = CFrame.lookAt(THumanoid.RootPart.Position, Humanoid.RootPart.Position)
    
                        shared.repfire({Effect = "Swift Sweep", Character = Character, Hit = Target})
                        
                        THumanoid:TakeDamage(3)
                        GrabTrack:Stop()
    
                        Character:SetAttribute("Combo", 0)
    
    
                        
                        
                
    
                        
                        HitTrack:Play()
                        HitTrack:AdjustSpeed(1)
                        HitTrack.Ended:Connect(function()
                            if attacking and freeze then
                                attacking:Destroy()
                                freeze:Destroy()
                            end
                        end)
    
                        HitTrack:GetMarkerReachedSignal("Hit"):Connect(function()
                            local Hitbox = Instance.new("Part")
                            Hitbox.Size = Vector3.new(4, 5, 4)
                            Hitbox.Transparency = 1
                            Hitbox.Anchored = false
                            Hitbox.CanCollide = false
                            Hitbox.Parent = workspace.Thrown
                            Hitbox.Massless = true
                            Hitbox.CFrame = RootPart.CFrame
    
                            local Weld = Instance.new("Weld", Hitbox)
                            Weld.Part0 = Hitbox
                            Weld.Part1 = Humanoid.RootPart
    
                            Weld.C1 = CFrame.new(0,0,-3)
    
                            debris:AddItem(Hitbox, 0.2)
    
                            for _, v in pairs(workspace:GetPartsInPart(Hitbox)) do
                                if v.Parent:FindFirstChild("Humanoid") and v.Parent ~= Character and not v.Parent:FindFirstChild("IFrame") then
                                    if v.Parent:FindFirstChild("Hit by:".. Character.Name) == nil then
                                        local Target = v.Parent
                                        local THumanoid = Target.Humanoid
                                        
    
                                        if Target:FindFirstChild("AbsoluteImmortal") then
                                            return
                                        end
                                        if not Target:FindFirstChild("Humanoid") then
                                            return
                                        end
                                        Target:SetAttribute('Ragdolled', false)
    
                                        local x = Instance.new("Accessory", Target)
                                        x.Name = "Hit by:".. Character.Name
                                        debris:AddItem(x, 0.2)
    
                                        THumanoid.RootPart.CFrame = CFrame.lookAt(THumanoid.RootPart.Position, Humanoid.RootPart.Position)
    
                                        if Target:GetAttribute("Ragdolled",true) then
                                            variant = true
                                            Target:GetAttribute("Ragdolled",false)
                                        end
    
                                        shared.repfire({Effect = "Backhand", Look = Target.PrimaryPart})
                                        
                            
    
                                        local TargetAnimation = Target.Humanoid:LoadAnimation(game.ReplicatedStorage.Assets.Animations.Extra.Knockback)
                                        local BodyVelocity = Instance.new("BodyVelocity", Target.PrimaryPart)
                                        BodyVelocity.MaxForce = Vector3.new(1, 0, 1) * 100_000
                                        BodyVelocity.Velocity = Target.PrimaryPart.CFrame.LookVector * -40
    
                                        TargetAnimation:GetMarkerReachedSignal("landed"):Connect(function()
                                            BodyVelocity:Destroy()
                                        end)
                                        
                                        Target.Humanoid:TakeDamage(4)
                                    
    
                                        TargetAnimation:Play()
                                        TargetAnimation:AdjustSpeed(1)
                                        HitTrack.Ended:Connect(function()
                                            if attacking and freeze then
                                                attacking:Destroy()
                                                freeze:Destroy()
                                            end
                                        end)
                                    end
                                end
                            end
                        end)
                    end
                end
            end
        end)
    
        GrabTrack:Play()
        GrabTrack:AdjustSpeed(1)
        GrabTrack.Ended:Connect(function()
            if attacking and freeze then
                attacking:Destroy()
                freeze:Destroy()
            end
        end)
    
        GrabTrack.Stopped:Connect(function()
            if attacking and freeze then
                attacking:Destroy()
                freeze:Destroy()
            end
end)
