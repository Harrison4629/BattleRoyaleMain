#scoreboard注册

#游戏的状态,0\1
scoreboard objectives add inGame dummy

#游戏开始后检测落地,0\1
scoreboard objectives add landed dummy

#检测游戏中死亡的玩家
scoreboard objectives add DeathDetect deathCount

#检测游戏内玩家数量，若只剩1，宣布结束
scoreboard objectives add numAlive dummy

#检测游戏运行状态,0\1
scoreboard objectives add GameRunning dummy

scoreboard objectives add preparedplayers dummy



