#开始游戏

#将prepared标签转换为inGame为1
scoreboard players set @a[tag=prepared] inGame 1

#删除prepared标签
tag @a[scores={inGame=1}] remove prepared


#传送inGame1玩家至平台
tp @a[scores={inGame=1}] @e[type=minecraft:armor_stand,tag=platform,limit=1]


#给予鞘翅，无敌
execute as @a[scores={inGame=1}] run item replace entity @s armor.chest with minecraft:elytra
effect give @a[scores={inGame=1}] minecraft:resistance infinite 255

execute as @a[scores={inGame=1}] run attribute @s forge:nametag_distance base set 0

execute as @a[scores={inGame=1}] run tellraw @s "请在5秒内跳伞。否则视为输掉这局比赛!"

execute as @a[scores={inGame=1}] run effect give @s minecraft:instant_health 10 10
execute as @a[scores={inGame=1}] run effect give @s minecraft:saturation 3 10


#将玩家设为未落地
scoreboard players set @a[scores={inGame=1}] landed 0

#将游戏状态设为运行中
scoreboard players set #GameRunning GameRunning 1

#重置死亡数，防止开局判定死亡
scoreboard players reset @a[scores={inGame=1}] DeathDetect


#从pospoint中随机选一个作为center,调用模组缩圈
execute as @e[tag=pospoint, sort=random, limit=1] run data modify entity @s Tags append value "center"
execute at @e[tag=center, limit=1] run brzone start


#执行重置
function battleroyale:game/reset

#运行各种必要的循环,落地检测设为延后5s
schedule function battleroyale:loop/deathloop 3s replace
schedule function battleroyale:loop/fallloop 5s replace