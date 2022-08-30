local Lib = loadstring(game:HttpGet(“https://raw.githubusercontent.com/Breadway/Eclipse/main/NewGuiLibrary.lua”))())

local main = Lib["CreateMan"]

main["CreateButton"]({
	["Name"] = "Something",
	["Section"] = "Combat",
	["Callback"] = function(Callback)
		if Callback then
			print(Callback.. " 1")
		elseif not Callback then
			print(Callback)
		end
	end)
})
