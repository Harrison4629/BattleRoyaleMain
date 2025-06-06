#玩家自身落地检测
execute as @a[scores={inGame=1, landed=0},nbt={OnGround:1b}] run function battleroyale:game/fall



schedule function battleroyale:loop/fallloop 5t replace