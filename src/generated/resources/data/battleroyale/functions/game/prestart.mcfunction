scoreboard players set preparedplayer preparedplayers 0
execute as @a[tag=prepared] run scoreboard players add preparedplayer preparedplayers 1
execute if score preparedplayer preparedplayers matches 2.. run execute as @e[tag=hobby,limit=1] run function battleroyale:game/start
execute if score preparedplayer preparedplayers matches ..1 run tellraw @a "玩家数量不足！"