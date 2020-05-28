
--[[		https://wow.gamepedia.com/World_of_Warcraft_API

PROTECTED - This function can only be called from secure code. See the Protected Functions category.

NOCOMBAT - This function cannot be called from insecure code while in combat.

HW - This function may only be called in response to a hardware event (from OnClick handlers).

UI - This function is implemented in Lua (in FrameXML) but was considered important enough to appear here.

DEPRECATED - This function has been (re)moved but is still available through a Lua script wrapper until the next expansion.

REMOVED - This function has been removed from the World of Warcraft API (and will be removed from this list in around a month). 
For historical purposes, see the Removed Functions category.

--]]


-- sleep function
function sleepT(n)
	if
		n > 0 then os.execute("ping -n " .. tonumber(n+1) .. " localhost > NUL")
	end
end


-- wait till game is loaded
-- using OnEvent for event of entering world
frame = CreateFrame("Frame")
frame:RegisterEvent("PLAYER_ENTERING_WORLD")
frame:SetScript("OnEvent", function(self, event, ...)

	local criteriaString, criteriaType, completed, quantity, reqQuantity, charName, flags, assetID, quantityString 
		= GetAchievementCriteriaInfo(13228, 1)
	local criteriaStringH, criteriaTypeH, completedH, quantityH, reqQuantityH, charNameH, flagsH, assetIDH, quantityStringH 
		= GetAchievementCriteriaInfo(13227, 1)
	local englishFaction = UnitFactionGroup("player")

	if englishFaction == "Alliance" then
		print('Alliance Progress:' ,quantity,' out of ',reqQuantity)
	elseif englishFaction == "Horde" then
		print('Horde Progress:' ,quantityH,' out of ',reqQuantityH)
	elseif englishFaction == "nil" or "neutral" then
		print('Vicious saddle tracker Error! Error reason: ',englishFaction ' Faction')
	end

	local copper = GetMoney()
	print(("Wealth %dg %ds %dc"):format(copper / 100 / 100, (copper / 100) % 100, copper % 100))
end)

