execute as @a[scores={DeathDetect=1..}] run function battleroyale:death/death

#计数存活玩家数量
scoreboard players set #playing_count numAlive 0
execute as @a[scores={inGame=1}] run scoreboard players add #playing_count numAlive 1

#判断是否为只剩一个，是则结束游戏
execute if score #playing_count numAlive matches 1 run schedule function battleroyale:game/end 1t


schedule function battleroyale:loop/deathloop 5t replace