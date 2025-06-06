tp @a[scores={inGame=1}] @e[type=minecraft:armor_stand,tag=hobby,limit=1]
tp @a[gamemode=spectator] @e[type=minecraft:armor_stand,tag=hobby,limit=1]
execute as @a[scores={inGame=1}] run scoreboard players set @s inGame 0
gamemode adventure @a