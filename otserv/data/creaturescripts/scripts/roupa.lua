function onLogin(cid)
if getPlayerStorageValue(cid,8470001) >= 1 then --Summoner Addon
        doPlayerAddOutfit(cid,316, 3)
else
end
if getPlayerStorageValue(cid,8470002) >= 1 then --Golden addon
        doPlayerAddOutfit(cid,411, 3)
        doPlayerAddOutfit(cid,433, 3)
end
if getPlayerStorageValue(cid,8470003) >= 1 then --Oriental Addon
        doPlayerAddOutfit(cid,414, 3)
        doPlayerAddOutfit(cid,434, 3)
end
if getPlayerStorageValue(cid,8470004) >= 1 then -- Druid addon
        doPlayerAddOutfit(cid,436, 3)
        doPlayerAddOutfit(cid,431, 3)
end
if getPlayerStorageValue(cid,8470005) >= 1 then --Assassin addon
        doPlayerAddOutfit(cid,435, 3)
        doPlayerAddOutfit(cid,437, 3)
end
if getPlayerStorageValue(cid,8470010) >= 1 then --Mage male 1/summoner female 2 HAT addon
        doPlayerAddOutfit(cid,432, 2)
		doPlayerAddOutfit(cid,412, 1)
end
if getPlayerStorageValue(cid,8470006) >= 1 then --Mage female addon
        doPlayerAddOutfit(cid,339, 3)
end
if getPlayerStorageValue(cid,8470011) >= 1 then --summoner female 1 addon
        doPlayerAddOutfit(cid,432, 1)
end
if getPlayerStorageValue(cid,8470012) >= 1 then --Mage addon 2 male
		doPlayerAddOutfit(cid,412, 2)
end
if getPlayerStorageValue(cid,8470013) >= 1 then --Warrior addon 
		doPlayerAddOutfit(cid,440, 3)
		doPlayerAddOutfit(cid,443, 3)
end
return true
end
