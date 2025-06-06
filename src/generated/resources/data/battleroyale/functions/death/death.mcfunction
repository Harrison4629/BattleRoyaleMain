gamemode spectator
playsound minecraft:entity.lightning_bolt.impact ambient @s ~ ~ ~ 1.0 1.0 1.0
scoreboard players reset @s DeathDetect
scoreboard players set @s inGame 0
title @s title "YOU    LOSE!"
summon minecraft:bat
tp @s @a[scores={inGame=1},limit=1,sort=random]