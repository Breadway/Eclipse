for i,v in pairs(game.Players:GetPlayers()) do
				local vchr = v.Character
				if vchr and v~=Player and v.Team~=Player.Team and Character and Character.Humanoid.Health>0 then
					local vhum = vchr:FindFirstChild("Humanoid")
					local vroot = vchr:FindFirstChild("HumanoidRootPart")
					if vhum and vroot and vhum.Health>0 and (vroot.Position-Character.HumanoidRootPart.Position).magnitude<=Range then
						RemoteFolder.SwordHit:InvokeServer({entityInstance=vchr,weapon=Character.HandInvItem.Value})
					end
				end
			end
		until not KillauraActive
