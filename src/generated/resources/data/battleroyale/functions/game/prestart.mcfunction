scoreboard players set preparedplayer preparedplayers 0
execute as @a[tag=prepared] run scoreboard players add preparedplayer preparedplayers 1
execute if score preparedplayer preparedplayers > 1 preparedplayers run function battleroyale:game/start