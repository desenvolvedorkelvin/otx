function onUse(cid, item, frompos, item2, topos)
if getPlayerStorageValue(cid,8470002) <= 0 and item.itemid == 8325 then   --Golden outfit
        setPlayerStorageValue(cid,8470002, 3)
        doPlayerAddOutfit(cid,411, 3)
        doPlayerAddOutfit(cid,433, 3)
        doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, 'You have received all addons of golden outfit.')
        doRemoveItem(item.uid, 1)
else
end
if getPlayerStorageValue(cid,8470001) <= 0 and item.itemid == 8326 then  -- Summoner male outfit
        setPlayerStorageValue(cid,8470001, 3)
        doPlayerAddOutfit(cid,316, 3)
        doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, 'You have received all addons of summoner male outfit.')
        doRemoveItem(item.uid, 1)
else
end
if getPlayerStorageValue(cid,8470003) <= 0 and item.itemid == 8327 then  -- Oriental
        setPlayerStorageValue(cid,8470003, 3)
        doPlayerAddOutfit(cid,414, 3)
        doPlayerAddOutfit(cid,434, 3)
        doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, 'You have received all addons of oriental outfit.')
        doRemoveItem(item.uid, 1)
else
end
if getPlayerStorageValue(cid,8470004) <= 0 and item.itemid == 8328 then  -- Druid
        setPlayerStorageValue(cid,8470004, 3)
        doPlayerAddOutfit(cid,436, 3)
        doPlayerAddOutfit(cid,431, 3)
        doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, 'You have received all addons of druid outfit.')
        doRemoveItem(item.uid, 1)
else
end
if getPlayerStorageValue(cid,8470005) <= 0 and item.itemid == 8329 then  -- Assassin
        setPlayerStorageValue(cid,8470005, 3)
        doPlayerAddOutfit(cid,435, 3)
        doPlayerAddOutfit(cid,437, 3)
        doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, 'You have received all addons of assassin outfit.')
        doRemoveItem(item.uid, 1)
else
end
if getPlayerStorageValue(cid,8470006) <= 0 and item.itemid == 8330 then  -- Mage female outfit
        setPlayerStorageValue(cid,8470006, 3)
        doPlayerAddOutfit(cid,339, 3)
        doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, 'You have received all addons of mage female outfit.')
        doRemoveItem(item.uid, 1)
else
end
return true
end