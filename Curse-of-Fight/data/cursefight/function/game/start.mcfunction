title @a times 1s 3s 1s
title @a subtitle "\u00A78\u00A7l你被詛咒了"
title @a title "\u00A76\u00A7lCurse \u00A77\u00A7lof \u00A76\u00A7lFight"
time set 300s
playsound minecraft:entity.wither.spawn player @a ~ ~ ~ 10
playsound minecraft:block.portal.trigger player @a ~ ~ ~ 1
schedule function cursefight:game/starteffect 5s