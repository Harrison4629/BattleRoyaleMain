schedule clear battleroyale:loop/deathloop
#庆祝胜利动画
execute as @a[scores={inGame=1}] run tellraw @a [{"text":"玩家 ","color":"green"},{"selector":"@s","color":"aqua"},{"text":" 胜利！","color":"green"}]
execute at @a[scores={inGame=1}] run summon minecraft:firework_rocket ~-1 ~1 ~-1 {LifeTime:20,Motion:[0.0,0.1,0.0]}
execute at @a[scores={inGame=1}] run summon minecraft:firework_rocket ~1 ~1 ~ {LifeTime:20,Motion:[-0.1,0.1,0.0]}
execute at @a[scores={inGame=1}] run summon minecraft:firework_rocket ~ ~1 ~1 {LifeTime:20,Motion:[0.0,0.1,0.1]}
execute at @a[scores={inGame=1}] run summon minecraft:firework_rocket ~1 ~1 ~1 {LifeTime:20,Motion:[0.0,0.1,0.0]}
execute at @a[scores={inGame=1}] run summon minecraft:firework_rocket ~1 ~1 ~1 {LifeTime:20,Motion:[-0.1,0.2,0.0]}
execute at @a[scores={inGame=1}] run summon minecraft:firework_rocket ~1 ~1 ~1 {LifeTime:20,Motion:[0.0,0.3,0.0]}
execute at @a[scores={inGame=1}] run summon minecraft:firework_rocket ~1 ~1 ~1 {LifeTime:20,Motion:[0.1,0.4,-0.2]}
execute at @a[scores={inGame=1}] run summon minecraft:firework_rocket ~1 ~1 ~1 {LifeTime:20,Motion:[0.2,0.4,0.0]}
execute at @a[scores={inGame=1}] run summon minecraft:firework_rocket ~1 ~1 ~1 {LifeTime:20,Motion:[0.1,0.3,0.1]}

#将赢家状态设为默认
execute as @a[scores={inGame=1}] run clear
execute as @a[scores={inGame=1}] run effect clear @s
execute as @a[scores={inGame=1}] run effect give @s minecraft:instant_health 10 10
execute as @a[scores={inGame=1}] run effect give @s minecraft:saturation 3 10


execute as @a[scores={landed=1}] run scoreboard players reset @s landed

scoreboard players set #GameRunning GameRunning 0
kill @e[type=minecraft:bat]
kill @e[type=item]

#停止缩小圈,删除center标签
brzone stop
execute as @e[tag=center] run tag @s remove center


#将玩家传送回大厅
schedule function battleroyale:game/backlobby 5s

schedule clear battleroyale:airdrop/airdrop1
schedule clear battleroyale:airdrop/airdrop2
schedule clear battleroyale:airdrop/airdrop3
