function onUse(cid, item, fromPosition, itemEx, toPosition)
	if (YalaharWaves:isRunning()) then
		doPlayerSendCancel(cid, "As waves j� foram ativadas.")
		doSendMagicEffect(getThingPosition(cid), CONST_ME_POFF)
		return true
	end

	if (not YalaharWaves:start()) then
		doPlayerSendCancel(cid, "N�o foi poss�vel iniciar as waves.")
		doSendMagicEffect(getThingPosition(cid), CONST_ME_POFF)
		return true
	end
	return true
end
