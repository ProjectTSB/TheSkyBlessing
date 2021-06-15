#> asset:sacred_treasure/0610.call_fish/3.1.tick
#
#
#
# @within function
#    asset:sacred_treasure/0610.call_fish/3.main
#    asset:sacred_treasure/0610.call_fish/3.1.tick

# スコアを増やす
    scoreboard players add @e[type=cod,tag=9Q.Fish] 9Q.FishCool 1
# スコアを減らす
    scoreboard players remove @e[type=cod,tag=9Q.Fish] 9Q.FishTime 1

# 攻撃をさせる
    execute as @e[type=cod,tag=9Q.Fish,scores={9Q.FishCool=30}] at @s if entity @e[tag=Enemy,distance=..10] run function asset:sacred_treasure/0610.call_fish/3.2.attack

# スコアを戻す
    scoreboard players set @e[type=cod,tag=9Q.Fish,scores={9Q.FishCool=30}] 9Q.FishCool 0

# 殺す
    kill @e[type=cod,tag=9Q.Fish,scores={9Q.FishTime=0}]

# 再帰処理
    execute if entity @e[type=cod,tag=9Q.Fish,limit=1] run schedule function asset:sacred_treasure/0610.call_fish/3.1.tick 1t replace